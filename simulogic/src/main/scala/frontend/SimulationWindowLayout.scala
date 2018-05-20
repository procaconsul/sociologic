package frontend

import scalafx.Includes._
import scalafx.animation.Animation.Status
import scalafx.geometry.Orientation
import scalafx.scene.control._
import scalafx.scene.layout.{Pane, Priority}
import scalafx.util.StringConverter

object SimulationWindowLayout {

  // API ======================================================

  // at the bottom of the main pane
  def buttonBar(animations: AnimationBatch): ToolBar = {
    new ToolBar {
      items = Seq(
        paddingPane,
        playStopButton(animations),
        verticalSeparator,
        slider(animations),
        paddingPane
      )
    }
  }

  def splitPane(leftPane: Control, rightPane: Control): SplitPane = {

    val DIVIDER_POS = 0.30f

    new SplitPane {
      orientation = Orientation.Horizontal
      dividerPositions = DIVIDER_POS
      items.addAll(leftPane, rightPane)
    }
  }

  // =============================================================

  private val sliderLabelFormatter = new StringConverter[Double] {

    val FAST_LABEL_TICK = 100d
    val SLOW_LABEL_TICK = 7900d

    override def toString(t: Double): String = if (t < FAST_LABEL_TICK) "Fast" else "Slow"

    override def fromString(string: String): Double = {
      string match {
        case "Fast" => FAST_LABEL_TICK
        case "Slow" => SLOW_LABEL_TICK
      }
    }
  }

  private val verticalSeparator = new Separator {
    orientation = Orientation.Vertical
  }

  private def paddingPane = new Pane {
    hgrow = Priority.Always
  }

  private def playStopButton(animations: AnimationBatch): Button = new Button {
    text <== when (animations.status === Status.Stopped.delegate) choose "Play" otherwise "Stop"
    onAction = handle {
      if (animations.status.value == Status.Stopped.delegate)
        animations.play()
      else
        animations.stop()
      println(s"$text button clicked")
    }
  }

  private def slider(animations: AnimationBatch): Slider = {

    val SLIDER_WIDTH = 200
    val SLIDER_START = 0
    val SLIDER_END = 8000
    val INITIAL_VALUE = 4000

    new Slider {
      disable <== animations.status === Status.Running.delegate
      prefWidth = SLIDER_WIDTH
      showTickLabels = true
      min = SLIDER_START
      max = SLIDER_END
      minorTickCount = SLIDER_START
      majorTickUnit = SLIDER_END
      value = INITIAL_VALUE
      value onChange { (_, _, newValue) =>
        animations.duration(newValue.doubleValue)
      }
      labelFormatter = sliderLabelFormatter
    }
  }
}
