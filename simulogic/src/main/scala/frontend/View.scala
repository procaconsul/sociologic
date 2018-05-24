package frontend

import backend.FileNode
import scalafx.Includes.handle
import scalafx.animation.Animation.Status
import scalafx.geometry.Orientation
import scalafx.scene.control._

class View(controller: Controller) {

  import StaticViewComponents._

  val DIVIDER_POS = 0.30f
  val SLIDER_WIDTH = 200
  val SLIDER_START_VAL = 0
  val SLIDER_END_VAL = 8000
  val INITIAL_VALUE = 4000

  def splitPane(fileNode: FileNode): SplitPane = {
    val tabPane = new TabPane
    val tree = treeView(fileNode)
    controller.link(tabPane, tree)

    new SplitPane {
      orientation = Orientation.Horizontal
      dividerPositions = DIVIDER_POS
      items.addAll(tree, tabPane)
    }
  }

  def buttonBar: ToolBar = {
    new ToolBar {
      items = Seq(
        paddingPane,
        playStopButton,
        verticalSeparator,
        slider,
        paddingPane
      )
    }
  }

  def playStopButton: Button = new Button {
    disable <== controller.animations.empty
    text = "Play"
    onAction = handle {
      if (controller.animations.status.value.value == Status.Stopped.delegate) {
        controller.animations.play()
        text = "Stop"
      } else {
        controller.animations.stop()
        text = "Play"
      }
    }
  }

  private def slider: Slider = {

    new Slider {
      disable <== (controller.animations.empty || controller.animations.status === Status.Running.delegate)
      prefWidth = SLIDER_WIDTH
      showTickLabels = true
      min = SLIDER_START_VAL
      max = SLIDER_END_VAL
      minorTickCount = SLIDER_START_VAL
      majorTickUnit = SLIDER_END_VAL
      value = INITIAL_VALUE
      value onChange { (_, _, newValue) =>
        controller.animations.duration(newValue.doubleValue)
      }
      labelFormatter = sliderLabelFormatter
    }
  }
}
