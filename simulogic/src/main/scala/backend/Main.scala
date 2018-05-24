package backend

import java.io.File

import frontend.UI

object Main extends App {

  val context: Context = new Context()

  val fileNode = FileHandler.fileTree(new File(context.lpFilesRootDir))
  val ui = new UI(fileNode)
  ui.main(null)
}

