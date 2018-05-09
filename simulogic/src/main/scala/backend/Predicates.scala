package backend

case class Wall(name: String, start: Point, end: Point)
case class Point(x: Double, y: Double)
case class OrientedPoint(x: Double, y: Double, o: Double)
case class Agent(name: String, positions: Map[Int, OrientedPoint])

