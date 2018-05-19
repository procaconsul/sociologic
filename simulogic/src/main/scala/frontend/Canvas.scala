package frontend

import backend.{Point, ResolvedWall}
import scalafx.Includes._
import scalafx.animation.Animation.Status
import scalafx.animation.PathTransition.OrientationType
import scalafx.animation.{PathTransition, Timeline}
import scalafx.application.JFXApp
import scalafx.application.JFXApp.PrimaryStage
import scalafx.beans.property.DoubleProperty
import scalafx.collections.ObservableBuffer
import scalafx.geometry.Orientation
import scalafx.scene.Scene
import scalafx.scene.control._
import scalafx.scene.layout.{BorderPane, Pane, Priority}
import scalafx.scene.paint.Color
import scalafx.scene.shape._
import scalafx.stage.Screen
import scalafx.util.{Duration, StringConverter}


class Canvas extends JFXApp {

  val walls = Seq(
    ResolvedWall("wall2", Seq(Point("p4", 15, 20), Point("p5", 30, 20))),
    ResolvedWall("wall3", Seq(Point("p4", 15, 10), Point("p5", 30, 10)))
  )

  val lines = PredicateRendering.renderWalls(walls)

  val bounds = Screen.primary.getBounds

  val point = new Circle {

    centerX = 120
    centerY = 150
    radius = 10
    fill = Color.Red
  }

  val _path = new Path {
    elements = List(
      MoveTo(120, 150),
      LineTo(170, 150),
      LineTo(190, 150),
      LineTo(210, 150),
      LineTo(230, 150),
      LineTo(250, 150),
      LineTo(270, 150),
      LineTo(290, 150),
      LineTo(310, 150)
    )
  }


  val animation = new PathTransition {
    duration = Duration(4000)
    path = _path
    node = point
    orientation = OrientationType.OrthogonalToTangent
    cycleCount = Timeline.Indefinite
  }

  val pane1 = new Pane {
    children = PredicateRendering.renderWalls(walls) ++ Seq(point)
    //    children = Seq(new Line {
    //      stroke = Color.web("BLACK", 0.7)
    //      strokeWidth = 2
    //      startX = 150
    //      startY = 200
    //      endX = 300
    //      endY = 200
    //    })
  }

  val tabpane = new TabPane {
    tabs = Seq(
      new Tab {
        text = "tab 1"
        content = pane1
        closable = false
      }
    )
  }

  def setDuration(v: Double, animation: PathTransition) = {
    animation.duration = Duration(v)
    DoubleProperty(v)
  }

  val left_pane = new Pane {
    children = listView
  }

  val listView = new ListView[String] {
    items = new ObservableBuffer[String]()
  }

  val splitPane = new SplitPane {
    orientation = Orientation.Horizontal
    dividerPositions = 0.25f
    items.addAll(left_pane, tabpane)
  }

  stage = new PrimaryStage {
    width = bounds.getWidth
    height = bounds.getHeight
    title = "Simulogic"
    scene = new Scene(600, 400) {
      fill = Color.White
      root = new BorderPane {
        center = splitPane
        bottom = new ToolBar {
          items = Seq(
            new Pane {
              hgrow = Priority.Always
            },
            new Button {
              text <== when (animation.status === Status.Stopped.delegate) choose "Play" otherwise "Stop"
              onAction = handle {
                if (animation.status.value == Status.Stopped.delegate)
                  animation.play()
                else
                  animation.stop()
                println(s"$text button clicked")
              }
            },
            new Separator {
              orientation = Orientation.Vertical
            },
            new Slider {
              disable <== animation.status === Status.Running.delegate
              prefWidth = 200
              showTickLabels = true
              min = 0
              max = 8000
              minorTickCount = 0
              majorTickUnit = 8000
              value = 4000
              value onChange { (_, _, newValue) =>
                animation.duration = Duration(newValue.doubleValue)
              }
              labelFormatter = new StringConverter[Double] {

                override def toString(t: Double): String = if (t < 100d) "Fast" else "Slow"

                override def fromString(string: String): Double = {
                  string match {
                    case "Fast" => 100d
                    case "Slow" => 7900d
                  }
                }
              }
            },
            new Pane {
              hgrow = Priority.Always
            },
          )
        }
      }
    }
  }
}

object Main extends App {
  val ui = new Canvas
  ui.main(null)
}

object PredicateRendering {

  final val SCALING_FACTOR = 10

  def renderWalls(walls: Seq[ResolvedWall]): Seq[Line] = {
    walls map { wall =>
      new Line {
        stroke = Color.web("BLACK", 0.7)
        strokeWidth = 2
        startX = wall.points.head.x * SCALING_FACTOR
        startY = wall.points.head.y * SCALING_FACTOR
        endX = wall.points.last.x * SCALING_FACTOR
        endY = wall.points.last.y * SCALING_FACTOR
      }
    }
  }
}


