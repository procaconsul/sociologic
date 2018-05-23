package frontend

import javafx.animation.Animation
import scalafx.animation.PathTransition
import scalafx.beans.binding.{Bindings, ObjectBinding}
import scalafx.beans.property.ReadOnlyObjectProperty
import scalafx.collections.ObservableBuffer
import scalafx.util.Duration

class AnimationsBatch() {

  val transitions = new ObservableBuffer[PathTransition]()

  // TODO make readOnly
  def empty = Bindings.createBooleanBinding(() => transitions.size <= 1, transitions)

  def duration(millis: Double): Unit = {
    transitions foreach(_.duration = Duration(millis))
  }


  def status: ObjectBinding[ReadOnlyObjectProperty[Animation.Status]] = Bindings.createObjectBinding (() =>
    if (empty.value) new ReadOnlyObjectProperty[Animation.Status](this, "stopped", Animation.Status.STOPPED)
    else transitions.head.status, transitions
  )

  def refreshWith(newTransitions: Seq[PathTransition]): Unit = {
    transitions.clear()
    transitions ++= newTransitions
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
    println(transitions.head.status)
  }
}
