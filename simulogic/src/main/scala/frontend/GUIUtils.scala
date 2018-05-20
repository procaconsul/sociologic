package frontend

import backend._

object GUIUtils {

  def scale(scenario: Scenario, factor: Double): Scenario = {
    scenario.predicates foreach { p =>
      p.points = p.points map (scale(_, factor))
    }
    scenario
  }

  def adjustToCentre(scenario: Scenario, newCentre: Centre, scalingFactor: Double): Scenario = {
    scenario.predicates foreach { p =>
      p.points = p.points map (adjustToCentre(_, scenario.centre, newCentre, scalingFactor))
    }
    scenario
  }

  def scale(point: Point, factor: Double): Point = {
    Point(point.id, point.x * factor, point.y * factor)
  }

  def adjustToCentre(point: Point, oldCentre: Centre, newCentre: Centre, scalingFactor: Double): Point = {
    val (offsetX, offsetY) = (point.x - oldCentre.x, point.y - oldCentre.y)
    Point(point.id, newCentre.x + offsetX * scalingFactor, newCentre.y + offsetY * scalingFactor)
  }
}
