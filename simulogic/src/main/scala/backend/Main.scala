package backend

object Main extends App {
  import SpatioTemporalILASPParser._
  import SpatioTemporalILASPProcessor._
  import frontend.UI._

  val bufferedSourceFile = FileHandler.bufferSource("test-ilasp.las")
  val fileMetadata = parseInterpretations(bufferedSourceFile)(parseMetadata)
  val filePredicates = parseInterpretations(bufferedSourceFile)(parsePredicates)
  val scenarios = simulations(fileMetadata, filePredicates)


}
