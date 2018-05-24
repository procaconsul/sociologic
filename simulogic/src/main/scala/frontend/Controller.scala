package frontend

import backend.{FileNode, ScenarioInterpreter}
import scalafx.Includes._
import scalafx.animation.PathTransition.OrientationType
import scalafx.animation.{PathTransition, Timeline}
import scalafx.collections.ObservableBuffer
import scalafx.scene.control.{SelectionMode, TabPane, TreeView}
import scalafx.scene.shape.{Circle, Path}
import scalafx.util.Duration

import scala.util.{Failure, Success, Try}

class Controller {

  import StaticViewComponents._

  val DEFAULT_ANIM_DURATION = 4000

  // This is what acts as MODEL
  val scenarios = new ObservableBuffer[Scenario2DRepresentation]()
  val animations = new AnimationsBatch()

  def link(tabPane: TabPane, treeView: TreeView[FileNode]): Unit = {
    treeView.selectionModel().selectionMode = SelectionMode.Single
    treeView.selectionModel().selectedItem.onChange { (_, _, selected) =>
      if (selected.isLeaf) {
        val filePath = selected.value.value.file.getAbsolutePath
        val attemptedScenario = Try(ScenarioInterpreter.interpretFrom(filePath))
        attemptedScenario match {
          case Success(scenarios2d) =>
            scenarios2d foreach (_.adjustToWindow(simulationPaneCentre, DEFAULT_SCALING_F))
            refreshScenariosWith(scenarios2d)
            tabPane.tabs = scenarioTabs(scenarios)
            animations.refreshWith(scenarios flatMap animationsFromScenario)
          case Failure(ex) =>
            val fileName = selected.value.value.toString
            ErrorDialog(ex, s"The attempt to parse $fileName failed.")
        }
      }
    }
  }

  def refreshScenariosWith(newScenarios: Seq[Scenario2DRepresentation]) = {
    scenarios.clear()
    scenarios ++= newScenarios
  }

  def animationsFromScenario(scenario: Scenario2DRepresentation): Seq[PathTransition] =
    scenario.agents zip scenario.paths map { case (pt, path) => animation(pt, path) }

  def animation(agentPoint: Circle, agentPath: Path): PathTransition = {
    new PathTransition {
      duration = Duration(DEFAULT_ANIM_DURATION)
      path = agentPath
      node = agentPoint
      orientation = OrientationType.OrthogonalToTangent
      cycleCount = Timeline.Indefinite
    }
  }
}
