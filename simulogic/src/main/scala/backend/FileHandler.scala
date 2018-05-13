package backend

object FileHandler {

  def bufferSource(filePath: String): List[String] = {
    io.Source.fromFile(filePath).getLines.toList.filter(_.nonEmpty)
  }
}
