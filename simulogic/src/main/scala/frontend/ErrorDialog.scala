package frontend

import java.io.{PrintWriter, StringWriter}

import scalafx.scene.control.Alert.AlertType
import scalafx.scene.control.{Alert, TextArea}
import scalafx.scene.layout.{GridPane, Priority}
import scalafx.Includes._

object ErrorDialog {

  private def exceptionText(implicit exception: Throwable) = {
    val sw = new StringWriter
    val pw = new PrintWriter(sw)
    exception.printStackTrace(pw)
    sw.toString
  }

  private def textArea(implicit exception: Throwable) = new TextArea {
    text = exceptionText
    editable = false
    wrapText = true
    maxWidth = Double.MaxValue
    maxHeight = Double.MaxValue
    vgrow = Priority.Always
    hgrow = Priority.Always
  }

  private def expContent(implicit exception: Throwable) = new GridPane {
    maxWidth = Double.MaxValue
    add(textArea, 0, 1)
  }

  def apply(implicit exception: Throwable, header: String) = {
    print(exception.getMessage)
    new Alert(AlertType.Error) {
      title = "Error!"
      headerText = header
      contentText = exception.getMessage
      dialogPane().expandableContent = expContent
    }.showAndWait()
  }


}
