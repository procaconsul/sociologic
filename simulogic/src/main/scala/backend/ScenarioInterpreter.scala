package backend

import backend.SpatioTemporalContentParser.{parseInterpretations, parseMetadata, parsePredicates}
import backend.SpatioTemporalContentProcessor.simulations
import frontend.Scenario2DRepresentation

object ScenarioInterpreter {

  def interpretFrom(file: String): Seq[Scenario2DRepresentation] = {
    val bufferedSourceFile = FileHandler.bufferSource(file)
    val fileMetadata = parseInterpretations(bufferedSourceFile)(parseMetadata)
    val filePredicates = parseInterpretations(bufferedSourceFile)(parsePredicates)
    val scenarios = simulations(fileMetadata, filePredicates)
    scenarios map(Scenario2DRepresentation(_))
  }
}