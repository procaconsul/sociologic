package frontend

import backend._
import scalafx.scene.paint.Color
import scalafx.scene.shape._

case class Scenario2DRepresentation(id: String, agents: Seq[Circle], walls: Seq[Line], paths: Seq[Path])

object Scenario2DRepresentation {

  import GUIUtils._

  val DEFAULT_SCALING_F = 20
  val DEFAULT_COORD = -20.0
  val DEFAULT_RADIUS = 7
  val STROKE_WIDTH = 2
  val LINE_COLOUR = "BLACK"
  val OPACITY = 0.7

  def apply(scenario: Scenario): Scenario2DRepresentation = {

    // TODO This should be moved completely to frontend, by adjusting the scaling on the 2DRepresentation directly
    val adjustedScenario = adjustToCentre(scenario, SimulationWindowDynamicComponents.simulationPaneCentre, DEFAULT_SCALING_F)
    val circles = adjustedScenario.agentPositions map agent2D
    val paths = adjustedScenario.agentPositions map path
    val walls = adjustedScenario.walls map wall2D
    Scenario2DRepresentation(scenario.id, circles, walls, paths)
  }

  private def path(agent: ResolvedAgentPositions): Path = {
    val firstPos = MoveTo(agent.points.head.x, agent.points.head.y)
    val rest = agent.points.drop(1) map( pt => LineTo(pt.x, pt.y))
    new Path {
      elements = firstPos +: rest
    }
  }

  private def agent2D(resolvedAgent: ResolvedAgentPositions): Circle = {
    new Circle {
      centerX = resolvedAgent.points.head.x
      centerY = resolvedAgent.points.head.y
      radius = DEFAULT_RADIUS
      fill = if (resolvedAgent.agent == SpatioTemporalILASPLanguage.pointOfView) Color.Red else Color.DarkGray
    }
  }


  private def wall2D(wall: ResolvedWall): Line = {
    new Line {
      stroke = Color.web(LINE_COLOUR, OPACITY)
      strokeWidth = STROKE_WIDTH
      startX = wall.points.head.x
      startY = wall.points.head.y
      endX = wall.points.last.x
      endY = wall.points.last.y
    }
  }
}
