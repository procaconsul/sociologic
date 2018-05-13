package backend

import scala.util.matching.Regex

object PredicateParser {

  import PredicateTemplates._

  //TODO refactor these into single function accepting pattern and function to exec

  def parse(lines: Seq[String]): Seq[Predicate] = {
    lines.flatMap {
      case pointPattern(name, x, y)            => Some(PlainPoint(name, x.toDouble, y.toDouble))
      case orientedPointPattern(name, x, y, o) => Some(OrientedPoint(name, x.toDouble, y.toDouble, o.toDouble))
      case agentPattern(name)                  => Some(Agent(name))
      case posPattern(agName, time, ptName)    => Some(Pos(agName, time.toInt, ptName))
      case wallPattern(name, p1Name, p2Name)   => Some(Wall(name, p1Name, p2Name))
      case _                                   => None
    }
  }
}
