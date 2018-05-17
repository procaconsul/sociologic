package frontend

import backend._
import scalafx.animation.PathTransition.OrientationType
import scalafx.animation.{PathTransition, Timeline}
import scalafx.scene.paint.Color
import scalafx.scene.shape._
import scalafx.util.Duration

object GraphicsDefaults {
  final val DEFAULT_COORD = 0.0
  final val DEFAULT_RADIUS = 7
  final val DEFAULT_ANIM_DURATION = 4000
  final val STROKE_WIDTH = 2
  final val LINE_COLOUR = "BLACK"
  final val OPACITY = 0.7
}

class ScenarioRenderer(val interpretations: Seq[PartialInterpretation]) {

  import GraphicsDefaults._

  def path(points: Seq[Point]): Path = {
    val firstPos = MoveTo(points.head.x, points.head.y)
    val rest = points.drop(1) map( pt => LineTo(pt.x, pt.y))
    new Path {
      elements = firstPos +: rest
    }
  }

  def agentPoint(agentName: String): Circle = {
    new Circle {
      centerX = DEFAULT_COORD
      centerY = DEFAULT_COORD
      radius = DEFAULT_RADIUS
      fill = if (agentName == SpatioTemporalILASPLanguage.pointOfView) Color.Red else Color.DarkGray
    }
  }

  def animation(agentPoint: Circle, agentPath: Path) = {
    new PathTransition {
      duration = Duration(DEFAULT_ANIM_DURATION)
      path = agentPath
      node = agentPoint
      orientation = OrientationType.OrthogonalToTangent
      cycleCount = Timeline.Indefinite
    }
  }

  def animations(agentPoints: Seq[Circle], agentPaths: Seq[Path]) = {
    agentPoints zip agentPaths map{ case(pt, path) => animation(pt, path) }
  }
  


  /**
    * Re-centres all the points of the entities wrt to newCentre
    * @param newCentre
    * @return all the entities with points adjusted to the new centre
    */
  def recentre(interpretation: PartialInterpretation, newCentre: Point): Seq[ResolvedCompositePredicate] = {
    if (interpretation.centre.x == interpretation.centre.y &&
      interpretation.centre.x == DEFAULT_COORD)
      return interpretation.entities

    interpretation.entities map {
      case entity@ResolvedWall(wall, points) =>
        val newPoints = entity.points map (_.move(interpretation.centre, newCentre))
        ResolvedWall(wall, newPoints)
      case entity@ResolvedAgentPositions(agent, points) =>
        val newPoints = entity.points map (_.move(interpretation.centre, newCentre))
        ResolvedAgentPositions(agent, newPoints)
    }
  }

  def lines(walls: Seq[ResolvedWall]): Seq[Line] = {
    walls map { wall =>
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

}
