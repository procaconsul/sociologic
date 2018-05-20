package frontend

import backend.Centre
import scalafx.animation.PathTransition.OrientationType
import scalafx.animation.{PathTransition, Timeline}
import scalafx.geometry.Pos
import scalafx.scene.control.{Tab, TabPane}
import scalafx.scene.layout.Pane
import scalafx.scene.paint.Color
import scalafx.scene.shape._
import scalafx.util.Duration


object SimulationWindowDynamicComponents {

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
        closable = false
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
