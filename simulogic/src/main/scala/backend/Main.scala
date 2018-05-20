package backend

import frontend.{Scenario2DRepresentation, UI}

object Main extends App {
  import SpatioTemporalILASPParser._
  import SpatioTemporalILASPProcessor._
  import frontend.UI._

  val bufferedSourceFile = FileHandler.bufferSource("test-ilasp.las")
  val fileMetadata = parseInterpretations(bufferedSourceFile)(parseMetadata)
  val filePredicates = parseInterpretations(bufferedSourceFile)(parsePredicates)
  val scenarios = simulations(fileMetadata, filePredicates)
  val scenarioRepresentations = scenarios map(Scenario2DRepresentation(_))
  val ui = new UI(scenarioRepresentations)
  ui.main(null)

}
