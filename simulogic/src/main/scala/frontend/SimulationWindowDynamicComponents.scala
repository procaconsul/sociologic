package frontend

import java.io.File

import backend.{Centre, FileNode}
import scalafx.animation.PathTransition.OrientationType
import scalafx.animation.{PathTransition, Timeline}
import scalafx.geometry.Pos
import scalafx.scene.control._
import scalafx.Includes._
import scalafx.scene.layout.Pane
import scalafx.scene.paint.Color
import scalafx.scene.shape._
import scalafx.util.Duration

class FileTreeItem[T] extends TreeItem[T] {
  var path = ""
}

object SimulationWindowDynamicComponents {

  def treeView(fileNode: FileNode): TreeView[FileNode] = {
    val tree = new TreeView[FileNode] {
      showRoot = true
      root = fileTreeItem(fileNode)

    }
    tree.selectionModel().selectionMode = SelectionMode.Single
    tree.selectionModel().selectedItem.onChange { (_, _, selected) =>
      if (selected.isLeaf) {
        println(selected.value.value.file.getAbsolutePath)
      }
    }
    tree
  }


  def fileTreeItem(fileNode: FileNode): TreeItem[FileNode] = {
    new TreeItem[FileNode] {
      value = fileNode
      children = fileNode.children map fileTreeItem
    }
  }

  val DEFAULT_SCALING_F = 20
  val SIMULATION_PANE_DIM = 500

  def animations(graphicScenarios: Seq[Scenario2DRepresentation]): AnimationBatch =
    new AnimationBatch(graphicScenarios flatMap animationsPerScenario)

  def tabsPane(graphicScenarios: Seq[Scenario2DRepresentation]): TabPane = {
    new TabPane {
      tabs = scenarioTabs(graphicScenarios)
    }
  }

  def simulationPaneCentre: Centre = {
    val halfPaneDim = SIMULATION_PANE_DIM / 2
    Centre(halfPaneDim, halfPaneDim)
  }


  private def animationsPerScenario(graphicScenario: Scenario2DRepresentation): Seq[PathTransition] = {
    graphicScenario.agents zip graphicScenario.paths map { case (pt, path) => animation(pt, path) }
  }

  private def pane(graphicScenario: Scenario2DRepresentation): Pane = {
    new Pane {
      maxWidth = SIMULATION_PANE_DIM
      maxHeight = SIMULATION_PANE_DIM
      minWidth = SIMULATION_PANE_DIM
      minHeight = SIMULATION_PANE_DIM
      alignmentInParent = Pos.Center
      children = graphicScenario.agents ++ graphicScenario.walls ++ Seq(new Circle {
        centerX = 250
        centerY = 250
        radius = 4
        fill = Color.Green
      })
    }
  }

  private def scenarioTabs(graphicScenarios: Seq[Scenario2DRepresentation]): Seq[Tab] = {
    graphicScenarios map { graphicScenario =>
      val graphicPane = pane(graphicScenario)
      new Tab {
        text = graphicScenario.id
        content = graphicPane
        closable = true
      }
    }
  }

  private def animation(agentPoint: Circle, agentPath: Path): PathTransition = {
    val DEFAULT_ANIM_DURATION = 4000
    new PathTransition {
      duration = Duration(DEFAULT_ANIM_DURATION)
      path = agentPath
      node = agentPoint
      orientation = OrientationType.OrthogonalToTangent
      cycleCount = Timeline.Indefinite
    }
  }

}
