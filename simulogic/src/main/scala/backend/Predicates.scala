package backend

trait Predicate 

object Point extends Predicate {
  def apply(id: String, x: Double, y: Double, orientation: Double): Point = {
    new Point(id, x, y, Some(orientation))
  }
}

case class Point(id: String, x: Double, y: Double, orientation: Option[Double] = None) extends Predicate {

  def render: String = {
    if (orientation.isDefined) s"""o_point($id, \"$x\", \"$y\", \"${orientation.get}\")"""
    else s"""point($id, \"$x\", \"$y\")"""
  }

  def offsetFromPoint(other: Point): (Double, Double) = (x - other.x, y - other.y)

  def move(oldReferencePoint: Point, newReferencePoint: Point): Point = {
    val (offsetX, offsetY) = offsetFromPoint(oldReferencePoint)
    Point(id, newReferencePoint.x + offsetX, newReferencePoint.y + offsetY)
  }
}

case class Wall(id: String, startPointName: String, endPointName: String) extends Predicate {
  def render: String = s"wall($id, $startPointName, $endPointName)"
}

case class Pos(agentName: String, time: Int, pointName: String) extends Predicate {
  def id: String = s"$agentName@$time"
  def render: String = s"pos($agentName, $time, $pointName)"
}

case class Agent(id: String) extends Predicate {
  def render: String = s"agent($id)"
}

