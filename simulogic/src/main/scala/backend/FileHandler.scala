package backend

import java.io.File

case class FileNode(file: File, children: Seq[FileNode]) {
  override def toString: String = file.getName
}

object FileHandler {

  def bufferSource(filePath: String): List[String] = {
    io.Source.fromFile(filePath).getLines.toList.filter(_.nonEmpty)
  }

  def fileTree(file: File): FileNode = {
    if (file.isDirectory) {
      val files = file.listFiles map fileTree
      FileNode(file, files)
    } else {
      FileNode(file, Seq())
    }
  }
}
