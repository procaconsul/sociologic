package frontend

import backend._
import scalafx.scene.paint.Color
import scalafx.scene.shape._

case class Scenario2DRepresentation(id: String, agents: Seq[Circle], walls: Seq[Line], paths: Seq[Path], centre: (Double, Double))

object Scenario2DRepresentation {

  final val DEFAULT_COORD = -20.0
  final val DEFAULT_RADIUS = 7
  final val STROKE_WIDTH = 2
  final val LINE_COLOUR = "BLACK"
  final val OPACITY = 0.7

  def apply(scenario: Scenario): Scenario2DRepresentation = {
    val circles = scenario.agentPositions map agent2D
    val paths = scenario.agentPositions map path
    val walls = scenario.walls map wall2D
    val centre = scenario.centre
    Scenario2DRepresentation(scenario.id, circles, walls, paths, (centre.x, centre.y))
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


  /**
    * Re-centres all the points of the entities wrt to newCentre
    * @param newCentre
    * @return all the entities with points adjusted to the new centre
    */
  def recentre(scenario: Scenario, newCentre: Point): Seq[ResolvedCompositePredicate] = {
    if (scenario.centre.x == scenario.centre.y &&
      scenario.centre.x == DEFAULT_COORD)
      return scenario.predicates

    scenario.predicates map {
      case entity@ResolvedWall(wall, points) =>
        val newPoints = entity.points map (_.move(scenario.centre, newCentre))
        ResolvedWall(wall, newPoints)
      case entity@ResolvedAgentPositions(agent, points) =>
        val newPoints = entity.points map (_.move(scenario.centre, newCentre))
        ResolvedAgentPositions(agent, newPoints)
    }
  }
}
