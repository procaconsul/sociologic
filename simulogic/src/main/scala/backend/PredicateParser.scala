package backend

object PredicateParser {

  import PredicateTemplates._

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

  def parsePartialInterpretations(lines: Seq[String]): Seq[Seq[Predicate]] = {
    if (lines.indexWhere(partialInterpBeginning.pattern.matcher(_).matches) < 0)
      Nil
    else {
      val sliced = lines.drop(lines.indexWhere(partialInterpBeginning.pattern.matcher(_).matches) + 1)
      val partialInterp = sliced.takeWhile(!partialInterpEnd.pattern.matcher(_).matches)
      parse(partialInterp) :: parsePartialInterpretations(sliced).toList
    }
  }
}
