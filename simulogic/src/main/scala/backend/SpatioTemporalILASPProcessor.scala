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
                                 centre: Point)

object SpatioTemporalILASPProcessor {

  val DEFAULT_INTERPRETATION_NAME = "UNSPECIFIED_NAME"
  val DEFAULT_COORD = "0.0"

  def idFromMetadata(metadata: Map[String, String]) = {
    metadata.getOrElse("name", DEFAULT_INTERPRETATION_NAME)
  }
  def centreFromMetadata(metadata: Map[String, String]) = {
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
