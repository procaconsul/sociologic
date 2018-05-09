package backend

object PredicateParser {

  import PredicateTemplates._

  //TODO refactor these into single function accepting pattern and function to exec

  def parsePoints(lines: List[String]): Map[String, Point] = {
    lines.flatMap {
      case pointPattern(name, x, y) => Some((name, Point(x.toDouble, y.toDouble)))
      case _ => None
    }.toMap
  }

  def parseOrientedPoints(lines: List[String]): Map[String, OrientedPoint] = {
    lines.flatMap {
      case pointPattern(name, x, y, o) => Some((name, OrientedPoint(x.toDouble, y.toDouble, o.toDouble)))
      case _ => None
    }.toMap
  }

  def parseAgents(lines: List[String]): List[String] = {
    lines.flatMap {
      case agentPattern(name) => Some(name)
      case _ => None
    }
  }

  // I am a fist in the eye. Please refactor me.
  def parsePos(lines: List[String], points: Map[String, OrientedPoint]): List[Agent] = {
    lines.flatMap {
      case posPattern(agentName, time, pointName) =>
        val point = points(pointName)
        Some((agentName, (time.toInt, point)))
      case _ => None
    }.groupBy(_._1).map { case (name, groups) =>
        val agentPoints = groups.map(_._2).sortBy(_._1).toMap
      Agent(name, agentPoints)
    }.toList
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
