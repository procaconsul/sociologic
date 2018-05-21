package backend

import java.io.File

import frontend.{Scenario2DRepresentation, SimulationWindowDynamicComponents, UI}


object Main extends App {
  import SpatioTemporalILASPParser._
  import SpatioTemporalILASPProcessor._
  import frontend.UI._

  val bufferedSourceFile = FileHandler.bufferSource("test-ilasp.las")
  val fileMetadata = parseInterpretations(bufferedSourceFile)(parseMetadata)
  val filePredicates = parseInterpretations(bufferedSourceFile)(parsePredicates)
  val scenarios = simulations(fileMetadata, filePredicates)
  val scenarioRepresentations = scenarios map(Scenario2DRepresentation(_))
  val fileNode = FileHandler.fileTree(new File("contexts"))
  val ui = new UI(scenarioRepresentations, fileNode)
  ui.main(null)

}

