package backend

import java.io.File

import frontend.UI

object Main extends App {
  val fileNode = FileHandler.fileTree(new File("contexts"))
  val ui = new UI(fileNode)
  ui.main(null)
}

