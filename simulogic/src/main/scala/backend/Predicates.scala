package backend

trait Predicate {
  def id: String
  def render: String
}

case class PlainPoint(id: String, x: Double, y: Double) extends Predicate {
  override def render: String = s"""point($id, \"$x\", \"$y\")"""
}

case class OrientedPoint(id: String, x: Double, y: Double, o: Double) extends Predicate {
  override def render: String = s"""o_point($id, \"$x\", \"$y\", \"$o\")"""
}

case class Wall(id: String, startPointName: String, endPointName: String) extends Predicate {
  override def render: String = s"wall($id, $startPointName, $endPointName)"
}

case class Pos(agentName: String, time: Int, pointName: String) extends Predicate {
  override def id: String = s"$agentName@$time"
  override def render: String = s"pos($agentName, $time, $pointName)"
}

case class Agent(id: String) extends Predicate {
  override def render: String = s"agent($id)"
}

case class PartialInterpretation(id: String,
                                 resolvedPositions: Seq[ResolvedAgentPositions],
                                 resolvedWalls: Seq[ResolvedWall])

