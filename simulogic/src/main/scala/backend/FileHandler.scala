package backend

object FileHandler {

  def bufferSource(filePath: String): Iterator[String] = {
    io.Source.fromFile(filePath).getLines
  }
}
