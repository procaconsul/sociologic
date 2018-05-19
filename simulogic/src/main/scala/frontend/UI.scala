package frontend

import backend.Point
import javafx.geometry.Rectangle2D
import scalafx.application.JFXApp
import scalafx.application.JFXApp.PrimaryStage
import scalafx.collections.ObservableBuffer
import scalafx.scene.Scene
import scalafx.scene.control.ListView
import scalafx.scene.layout.{BorderPane, Pane}
import scalafx.scene.paint.Color
import scalafx.stage.Screen

class UI(model: Seq[Scenario2DRepresentation]) extends JFXApp {


  import SimulationWindowLayout._
  import ScenarioRenderer._
  import UI._


  val leftPane = new ListView[String] {
      items = new ObservableBuffer[String]()
  }

  val rightPane = tabsPane(model)

  val anim = animations(model)


  stage = new PrimaryStage {
    width = SCREEN.getWidth
    height = SCREEN.getHeight
    title = TITLE
    scene = new Scene(600, 400) {
      fill = Color.White
      root = new BorderPane {
        center = splitPane(leftPane, rightPane)
        bottom = buttonBar(anim)
      }
    }
  }
}

object UI {
  val SCREEN: Rectangle2D = Screen.primary.getBounds
  val TITLE = "Simulogic"
  val SCENE_WIDTH = 600
  val SCENE_HEIGHT = 400

  def centreOfSimulationWindow: Point = {
    val x = SCENE_WIDTH / 10 * 7
    val y = SCENE_HEIGHT
    Point("window-centre", x, y)
  }
}
