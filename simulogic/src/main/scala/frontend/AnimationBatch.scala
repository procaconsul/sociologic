package frontend

import javafx.animation.Animation
import scalafx.animation.PathTransition
import scalafx.beans.property.ReadOnlyObjectProperty
import scalafx.util.Duration

class AnimationBatch(val transitions: Seq[PathTransition]) {

  def duration(millis: Double): Unit = {
    transitions foreach(_.duration = Duration(millis))
  }

  def status: ReadOnlyObjectProperty[Animation.Status] = {
    transitions.head.status
  }

  def playFromStart(): Unit = {
    transitions foreach(_.playFromStart)
  }

  def pause(): Unit = {
    transitions foreach(_.pause)
  }

  def play(): Unit = {
    transitions foreach(_.play)
  }

  def stop(): Unit = {
    transitions foreach(_.stop)
  }
}
