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


  import SimulationWindowStaticComponents._
  import SimulationWindowDynamicComponents._
  import UI._


  model foreach(_.adjustToWindow(simulationPaneCentre, DEFAULT_SCALING_F))

  val leftPane = new ListView[String] {
      items = new ObservableBuffer[String]()
  }

  val rightPane = tabsPane(model)
  println(rightPane.maxWidth)
  println(rightPane.height)

  val anim = animations(model)

  val SCREEN: Rectangle2D = Screen.primary.getBounds

  stage = new PrimaryStage {
    width = SCENE_WIDTH
    height = SCENE_HEIGHT
    title = TITLE
    scene = new Scene(SCENE_WIDTH, SCENE_HEIGHT) {
      fill = Color.White
      root = new BorderPane {
        center = splitPane(leftPane, rightPane)
        bottom = buttonBar(anim)
      }
    }
  }
}

object UI {

  val TITLE = "Simulogic"
  val SCENE_WIDTH = 800
  val SCENE_HEIGHT = 600
}
