package frontend

import scalafx.animation.PathTransition.OrientationType
import scalafx.animation.{PathTransition, Timeline}
import scalafx.geometry.Pos
import scalafx.scene.control.{Tab, TabPane}
import scalafx.scene.layout.Pane
import scalafx.scene.shape._
import scalafx.util.Duration


object ScenarioRenderer {

  def animations(graphicScenarios: Seq[Scenario2DRepresentation]): AnimationBatch =
    new AnimationBatch(graphicScenarios flatMap animationsPerScenario)

  def tabsPane(graphicScenarios: Seq[Scenario2DRepresentation]): TabPane = {
    new TabPane {
      tabs = scenarioTabs(graphicScenarios)
    }
  }

  private def animationsPerScenario(graphicScenario: Scenario2DRepresentation): Seq[PathTransition] = {
    graphicScenario.agents zip graphicScenario.paths map { case (pt, path) => animation(pt, path) }
  }

  private def pane(graphicScenario: Scenario2DRepresentation): Pane = {
    new Pane {
      alignmentInParent = Pos.Center
      children = graphicScenario.agents ++ graphicScenario.walls
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
