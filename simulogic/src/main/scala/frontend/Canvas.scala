package frontend

import backend.{PlainPoint, ResolvedWall}
import scalafx.application.JFXApp
import scalafx.application.JFXApp.PrimaryStage
import scalafx.collections.ObservableBuffer
import scalafx.geometry.{Orientation, Pos}
import scalafx.scene.Scene
import scalafx.scene.control._
import scalafx.scene.layout.{BorderPane, HBox, Pane}
import scalafx.scene.paint.Color
import scalafx.scene.shape.Line
import scalafx.stage.Screen


class UI extends JFXApp {

  val walls = Seq(
    ResolvedWall("wall2", PlainPoint("p4", 15, 20), PlainPoint("p5", 30, 20)),
    ResolvedWall("wall3", PlainPoint("p4", 15, 10), PlainPoint("p5", 30, 10))
  )

  val lines = PredicateRendering.renderWalls(walls)

  val bounds = Screen.primary.getBounds

  val pane1 = new Pane {
    children = lines
  }

  val pane2 = new Pane {
    children = lines
  }

  val listView = new ListView[String] {
    items = new ObservableBuffer[String]()
  }

  stage = new PrimaryStage {
    width = bounds.getWidth
    height = bounds.getHeight
    title = "Simulogic"
    scene = new Scene(600, 400) {
      fill = Color.White
      root = new BorderPane {
        center = new SplitPane {
          orientation = Orientation.Horizontal
          items.addAll(listView, listView)
        }
        bottom = new ButtonBar {
          buttons = Seq(
            new Button {
              text = "Play/Pause"
              // onAction = handle { anim.playPause() }
            }
          )
        }
      }
    }
  }
  g

object Main extends App {
  val ui = new UI
  ui.main(null)
}

object PredicateRendering {

  final val SCALING_FACTOR = 10

  def renderWalls(walls: Seq[ResolvedWall]): Seq[Line] = {
    walls map { wall =>
      new Line {
        stroke = Color.web("BLACK", 0.7)
        strokeWidth = 2
        startX = wall.start.x * SCALING_FACTOR
        startY = wall.start.y * SCALING_FACTOR
        endX = wall.end.x * SCALING_FACTOR
        endY = wall.end.y * SCALING_FACTOR
      }
    }
  }
}

