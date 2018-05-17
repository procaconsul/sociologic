package backend

trait ResolvedCompositePredicate {
  def points: Seq[Point]
}

case class ResolvedAgentPositions(agent: String, points: Seq[Point]) extends ResolvedCompositePredicate {
  def at(time: Int): Point = points(time)
}

case class ResolvedWall(id: String, points: Seq[Point]) extends ResolvedCompositePredicate


case class PartialInterpretation(id: String,
                                 entities: Seq[ResolvedCompositePredicate],
                                 centre: Point) {

  /**
    * Re-centres all the points of the entities wrt to newCentre
    * TODO this method could be removed in a more appropriate object
    * @param newCentre
    * @return all the entities with points adjusted to the new centre
    */
  def recentreEntities(newCentre: Point): Seq[ResolvedCompositePredicate] = {
    if (centre.x == centre.y && centre.x == 0.0) return entities

    entities map {
      case entity@ResolvedWall(wall, points) =>
        val newPoints = entity.points map (_.move(centre, newCentre))
        ResolvedWall(wall, newPoints)
      case entity@ResolvedAgentPositions(agent, points) =>
        val newPoints = entity.points map (_.move(centre, newCentre))
        ResolvedAgentPositions(agent, newPoints)
    }
  }
}

object SpatioTemporalILASPProcessor {

  def idFromMetadata(metadata: Map[String, String]) = {
    val DEFAULT_INTERPRETATION_NAME = "UNSPECIFIED_NAME"
    metadata.getOrElse("name", DEFAULT_INTERPRETATION_NAME)
  }

  def centreFromMetadata(metadata: Map[String, String]) = {
    val DEFAULT_COORD = "0.0"
    val name = s"centre_of_${idFromMetadata(metadata)}"
    Point(
      name, metadata.getOrElse("centrex", DEFAULT_COORD).toDouble,
      metadata.getOrElse("centrey", DEFAULT_COORD).toDouble
    )
  }

  def partialInterpretations(metadataPerExample: Seq[Map[String, String]],
                             predicatesPerExample: Seq[Seq[Predicate]]): Seq[PartialInterpretation] = {
    metadataPerExample zip predicatesPerExample map { case (metadata, preds) =>
      val positions = resolveAgentPositions(positionsPerAgent(preds), pointsMap(preds))
      val walls = resolveWalls(preds, pointsMap(preds))

      PartialInterpretation(
        id = idFromMetadata(metadata),
        entities = positions ++ walls,
        centre = centreFromMetadata(metadata))
    }
  }

  def pointsMap(predicates: Seq[Predicate]): Map[String, Point] = {
    predicates collect {
      case pt: Point => (pt.id, pt)
    } toMap
  }

  def positionsPerAgent(predicates: Seq[Predicate]): Map[String, Seq[Pos]] = {
    predicates collect {
      case p: Pos => p
    } groupBy (_.agentName)
  }

  def resolveAgentPositions(positions: Map[String, Seq[Pos]],
                            pointsMap: Map[String, Point]): Seq[ResolvedCompositePredicate] = {
    positions map { case (agent, agentPositions) =>

      // check references
      agentPositions.foreach(pos => checkReferences(pos.id, Seq(pos.pointName), pointsMap))

      val points = agentPositions
        .sortBy(_.time)
        .map(pos => pointsMap(pos.pointName))
      ResolvedAgentPositions(agent, points)
    } toSeq
  }

  def resolveWalls(predicates: Seq[Predicate],
                   pointsMap: Map[String, Point]): Seq[ResolvedCompositePredicate] = {
    predicates collect {
      case Wall(wall, pt1, pt2) =>
        val point1Opt = pointsMap.get(pt1)
        val point2Opt = pointsMap.get(pt2)
        checkReferences(wall, Seq(pt1, pt2), pointsMap)
        ResolvedWall(wall, Seq(point1Opt.get, point2Opt.get))
    }
  }

  def checkReferences(forPredicate: String, refs: Seq[String], refMap: Map[String, Predicate]): Unit = {
    refs foreach { ref =>
      if (refMap.get(ref).isEmpty) throw PredicateResolutionException(forPredicate, ref)
    }
  }
}
