package frontend

import backend._
import scalafx.scene.paint.Color
import scalafx.scene.shape._

case class Scenario2DRepresentation(id: String, agents: Seq[Circle], walls: Seq[Line], paths: Seq[Path])

object Scenario2DRepresentation {

  final val DEFAULT_COORD = 0.0
  final val DEFAULT_RADIUS = 7
  final val STROKE_WIDTH = 2
  final val LINE_COLOUR = "BLACK"
  final val OPACITY = 0.7

  def apply(scenario: Scenario): Scenario2DRepresentation = {
    val circles = scenario.retrieve[ResolvedAgentPositions]() map agent2D
    val paths = scenario.retrieve[ResolvedAgentPositions]() map path
    val walls = scenario.retrieve[ResolvedWall]() map wall2D
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
      centerX = DEFAULT_COORD
      centerY = DEFAULT_COORD
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
