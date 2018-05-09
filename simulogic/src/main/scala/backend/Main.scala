package backend

object Main extends App {
  val bufferedSourceFile = FileHandler.bufferSource("env.lp").toList.filter(_.nonEmpty)
  val points             = PredicateParser.parsePoints(bufferedSourceFile)
  val walls              = PredicateParser.parseWall(bufferedSourceFile, points)
  walls.foreach(println)
}
