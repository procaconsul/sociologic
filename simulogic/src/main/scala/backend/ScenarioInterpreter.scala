package backend

import backend.SpatioTemporalContentParser.{parseInterpretations, parseMetadata, parsePredicates}
import backend.SpatioTemporalContentProcessor.simulations
import frontend.Scenario2DRepresentation

object ScenarioInterpreter {

  def interpretFrom(file: String): Seq[Scenario2DRepresentation] = {
    val bufferedSourceFile = FileHandler.bufferSource(file)
    val ext = """\.(lp|las)$""".r findFirstIn file getOrElse ""
    if (ext.contains("lp")) {
      val fileMetadata = parseMetadata(bufferedSourceFile)
      val filePredicates = parsePredicates(bufferedSourceFile)
      val scenarios = simulations(List(fileMetadata), List(filePredicates))
      scenarios map(Scenario2DRepresentation(_))
    } else {
      val fileMetadata = parseInterpretations(bufferedSourceFile)(parseMetadata)
      val filePredicates = parseInterpretations(bufferedSourceFile)(parsePredicates)
      val scenarios = simulations(fileMetadata, filePredicates)
      scenarios map(Scenario2DRepresentation(_))

    }

  }
}