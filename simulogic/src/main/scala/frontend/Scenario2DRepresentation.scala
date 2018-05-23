package frontend

import backend._
import scalafx.collections.ObservableBuffer
import scalafx.scene.paint.Color
import scalafx.scene.shape._

case class Scenario2DRepresentation(id: String, agents: Seq[Circle], walls: Seq[Line], paths: Seq[Path], centre: Centre) {

  def adjustToWindow(newCentre: Centre, scaleFactor: Double): Unit = {

    def offset(x: Double, y: Double) = (x - centre.x, y - centre.y)

    walls foreach { l =>
      val (offStartX, offStartY) = offset(l.startX.toDouble, l.startY.toDouble)
      val (offEndX, offEndY) = offset(l.endX.toDouble, l.endY.toDouble)
      l.startX = newCentre.x + offStartX * scaleFactor
      l.startY = newCentre.y + offStartY * scaleFactor
      l.endX = newCentre.x + offEndX * scaleFactor
      l.endY = newCentre.y + offEndY * scaleFactor
    }

    // TODO Refactor me

    paths foreach {
      _.elements.toArray() foreach {
        case e: javafx.scene.shape.MoveTo =>
          val (offX, offY) = offset(e.getX, e.getY)
          e.setX(newCentre.x + offX * scaleFactor)
          e.setY(newCentre.y + offY * scaleFactor)
        case e: javafx.scene.shape.LineTo =>
          val (offX, offY) = offset(e.getX, e.getY)
          e.setX(newCentre.x + offX * scaleFactor)
          e.setY(newCentre.y + offY * scaleFactor)
      }
    }
  }
}

object Scenario2DRepresentation {

  val DEFAULT_COORD = -20.0
  val DEFAULT_RADIUS = 7
  val STROKE_WIDTH = 4
  val LINE_COLOUR = "BLACK"
  val OPACITY = 0.7

  def apply(scenario: Scenario): Scenario2DRepresentation = {

    val circles = scenario.agentPositions map agent2D
    val paths = scenario.agentPositions map path
    val walls = scenario.walls map wall2D
    new Scenario2DRepresentation(scenario.id, circles, walls, paths, scenario.centre)
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
      id = resolvedAgent.agent
      centerX = resolvedAgent.points.head.x
      centerY = resolvedAgent.points.head.y
      radius = DEFAULT_RADIUS
      fill = if (resolvedAgent.agent == SpatioTemporalLanguage.pointOfView) Color.Red else Color.DarkGray
    }
  }


  private def wall2D(wall: ResolvedWall): Line = {
    new Line {
      id = wall.id
      stroke = Color.web(LINE_COLOUR, OPACITY)
      strokeWidth = STROKE_WIDTH
      startX = wall.points.head.x
      startY = wall.points.head.y
      endX = wall.points.last.x
      endY = wall.points.last.y
    }
  }
}
