package backend

import scala.util.matching.Regex

object SpatioTemporalILASPParser {

  import SpatioTemporalILASPLanguage._

  def parsePredicates(lines: Seq[String]): Seq[Predicate] = {
    lines.flatMap {
      case pointPattern(name, x, y)            => Some(Point(name, x.toDouble, y.toDouble))
      case orientedPointPattern(name, x, y, o) => Some(Point(name, x.toDouble, y.toDouble, o.toDouble))
      case agentPattern(name)                  => Some(Agent(name))
      case posPattern(agName, time, ptName)    => Some(Pos(agName, time.toInt, ptName))
      case wallPattern(name, p1Name, p2Name)   => Some(Wall(name, p1Name, p2Name))
      case _                                   => None
    }
  }

  def parseMetadata(lines: Seq[String]): Map[String, String] = {

    def verifyMetadata(param: String, value: String): Unit = {
      if (!metadataParams.contains(param)) throw InvalidMetadataException(param, value)
      if (param.matches("centre[xy]")
        && !value.matches("\\d+\\.?\\d+")) throw InvalidMetadataException(param, value)
    }

    lines flatMap {
      case metadataPattern(param, value) =>
        verifyMetadata(param, value)
        Some((param, value))
      case _ => None
    } toMap
  }

  def parseMetadataInExamples(lines: Seq[String]): Seq[Map[String, String]] = {
    parseInterpretations(lines)(parseMetadata)
  }

  /**
    * @param lines
    * @return list of lists, each containing the parsed predicates of a partial interpretation
    */
  def parsePredicatesInExamples(lines: Seq[String]): Seq[Seq[Predicate]] = {
    parseInterpretations(lines)(parsePredicates)
  }


  def parseInterpretations[T](lines: Seq[String],
                           beginningPattern: Regex = partialInterpBeginning,
                           endPattern: Regex = partialInterpEnd)(parser: Seq[String] => T): Seq[T] = {
    if (lines.indexWhere(beginningPattern.pattern.matcher(_).matches) < 0)
      Nil
    else {
      val sliced = lines.drop(lines.indexWhere(beginningPattern.pattern.matcher(_).matches) + 1)
      val partialInterp = sliced.takeWhile(!endPattern.pattern.matcher(_).matches)
      parser(partialInterp) :: parseInterpretations(sliced, beginningPattern, endPattern)(parser).toList
    }
  }
}