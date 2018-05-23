package frontend

import backend.FileNode
import scalafx.application.JFXApp
import scalafx.application.JFXApp.PrimaryStage
import scalafx.scene.Scene
import scalafx.scene.layout.BorderPane
import scalafx.scene.paint.Color

class UI(fileNode: FileNode) extends JFXApp {


  import UI._

  val view = new View(new Controller)

  stage = new PrimaryStage {
    width = SCENE_WIDTH
    height = SCENE_HEIGHT
    title = TITLE
    scene = new Scene(SCENE_WIDTH, SCENE_HEIGHT) {
      fill = Color.White
      root = new BorderPane {
        center = view.splitPane(fileNode)
        bottom = view.buttonBar
      }
    }
  }
}

object UI {

  val TITLE = "Simulogic"
  val SCENE_WIDTH = 800
  val SCENE_HEIGHT = 600
}
