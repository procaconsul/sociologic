package frontend

import backend.{Centre, FileNode}
import scalafx.collections.ObservableBuffer
import scalafx.geometry.{Orientation, Pos}
import scalafx.scene.control.{Separator, Tab, TreeItem, TreeView}
import scalafx.scene.layout.{Pane, Priority}
import scalafx.scene.paint.Color
import scalafx.scene.shape.Circle
import scalafx.util.StringConverter

object StaticViewComponents {

  val DEFAULT_SCALING_F = 20
  val SIMULATION_PANE_DIM = 500

  val verticalSeparator = new Separator {
    orientation = Orientation.Vertical
  }

  val sliderLabelFormatter = new StringConverter[Double] {
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

  def treeView(fileNode: FileNode): TreeView[FileNode] = {
    new TreeView[FileNode] {
      showRoot = true
      root = fileTreeItem(fileNode)
    }
  }

  def fileTreeItem(fileNode: FileNode): TreeItem[FileNode] = {
    new TreeItem[FileNode] {
      value = fileNode
      children = fileNode.children map fileTreeItem
    }
  }

  def scenarioTabs(scenarios: ObservableBuffer[Scenario2DRepresentation]): Seq[Tab] = {
    scenarios map { scenario =>
      val simulPane = pane(scenario)
      new Tab {
        text = scenario.id
        content = simulPane
        closable = true
      }
    }
  }

  def paddingPane: Pane = new Pane {
    hgrow = Priority.Always
  }

  def pane(scenario: Scenario2DRepresentation): Pane = {
    new Pane {
      maxWidth = SIMULATION_PANE_DIM
      maxHeight = SIMULATION_PANE_DIM
      minWidth = SIMULATION_PANE_DIM
      minHeight = SIMULATION_PANE_DIM
      alignmentInParent = Pos.Center
      children = scenario.agents ++ scenario.walls ++ Seq(new Circle {
        centerX = 250
        centerY = 250
        radius = 2
        fill = Color.Green
      })
    }
  }

  def simulationPaneCentre: Centre = {
    val halfPaneDim = SIMULATION_PANE_DIM / 2
    Centre(halfPaneDim, halfPaneDim)
  }
}
