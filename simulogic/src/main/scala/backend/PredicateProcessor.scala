package backend

case class PredicateResolutionException(predName: String, failingRef: String) extends Exception {
  def msg: String = s"Failed to resolve predicate $predName: predicate $failingRef not found."
}

case class ResolvedAgentPositions(agent: String, steps: Seq[OrientedPoint]) {
  def at(time: Int): OrientedPoint = steps(time)
}

case class ResolvedWall(wall: String, start: PlainPoint, end: PlainPoint)

object PredicateProcessor {

  def plainPoints(predicates: Seq[Predicate]): Map[String, PlainPoint] = {
    predicates collect {
      case pt: PlainPoint => (pt.id, pt)
    } toMap
  }

  def orientedPoints(predicates: Seq[Predicate]): Map[String, OrientedPoint] = {
    predicates collect {
      case pt: OrientedPoint => (pt.id, pt)
    } toMap
  }

  def positionsPerAgent(predicates: Seq[Predicate]): Map[String, Seq[Pos]] = {
    predicates collect {
      case p: Pos => p
    } groupBy(_.agentName)
  }

  def resolveAgentPositions(positions: Map[String, Seq[Pos]],
                            pointsMap: Map[String, OrientedPoint]): Seq[ResolvedAgentPositions] = {
    positions map { case (agent, positions) =>

      // check references
      positions.foreach(pos => checkReferences(pos.id, Seq(pos.pointName), pointsMap))

      val points = positions
        .sortBy(_.time)
        .map(pos => pointsMap(pos.pointName))
        ResolvedAgentPositions(agent, points)
    } toSeq
  }

  def checkReferences(forPredicate: String, refs: Seq[String], refMap: Map[String, Predicate]): Unit = {
    refs foreach { ref =>
      if (refMap.get(ref).isEmpty) throw PredicateResolutionException(forPredicate, ref)
    }
  }

  def resolveWalls(predicates: Seq[Predicate],
                   pointsMap: Map[String, PlainPoint]): Seq[ResolvedWall] = {
    predicates collect {
      case Wall(wall, pt1, pt2) =>
        val point1Opt = pointsMap.get(pt1)
        val point2Opt = pointsMap.get(pt2)
        checkReferences(wall, Seq(pt1, pt2), pointsMap)
        ResolvedWall(wall, point1Opt.get, point2Opt.get)
    }
  }
}