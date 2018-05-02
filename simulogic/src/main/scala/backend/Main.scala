package backend

object Main extends App {
  val bufferedSourceFile = FileHandler.bufferSource("env.lp").toList.filter(_.nonEmpty)
  val environmentParser  = new EnvironmentParser
  val points             = environmentParser.parsePoints(bufferedSourceFile)
  val walls              = environmentParser.parseWall(bufferedSourceFile, points)
  walls.foreach(println)
}
