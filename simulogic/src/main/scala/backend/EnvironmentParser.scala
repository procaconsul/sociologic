package backend

object EnvironmentParser {
  final val wallPattern  = "wall\\(([A-Za-z0-9_]+)\\,\\s?([A-Za-z0-9_]+)\\,\\s?([A-Za-z0-9_]+)\\)\\.".r
  final val pointPattern = "point\\(([A-Za-z0-9_]+)\\,\\s?\"([0-9]+\\.[0-9]+)\"\\,\\s?\"([0-9]+\\.[0-9]+)\"\\)\\.".r
}

class EnvironmentParser {

  import EnvironmentParser._

  def parsePoints(lines: List[String]): Map[String, Point] = {
    lines.flatMap {
      case pointPattern(name, x, y) => Some((name, Point(x.toDouble, y.toDouble)))
      case _ => None
    }.toMap
  }

  // assuming here no walls rely on points not figuring in the environment file
  // i.e. the environment file is complete and correct
  def parseWall(lines: List[String], points: Map[String, Point]): List[Wall] = {
    lines.flatMap {
      case wallPattern(name, pointOneName, pointTwoName) =>
        val pointOne = points(pointOneName)
        val pointTwo = points(pointTwoName)
        Some(Wall(name, pointOne, pointTwo))
      case _ => None
    }
  }
}
