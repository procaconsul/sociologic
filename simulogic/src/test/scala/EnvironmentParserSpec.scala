import backend.{EnvironmentParser, Point, Wall}
import org.scalatest.{FlatSpec, Matchers}

class EnvironmentParserSpec extends FlatSpec with Matchers {

  val environmentParser = new EnvironmentParser

  "The Environment Parser" should "extract points from a valid list of environment lp lines" in {
    val lines = List(
      "point(p1, \"1.1\", \"1.1\").",
      "point(p2, \"2.2\", \"2.2\").",
      "wall(wall1, p1, p2)",
      "point(p3, \"3.3\", \"3.3\").",
      "% this is a comment",
      "#this is a directive."
    )

    val expected = Map("p1" -> Point(1.1, 1.1),
      "p2" -> Point(2.2, 2.2),
      "p3" -> Point(3.3, 3.3)
    )

    val got = environmentParser.parsePoints(lines)
    got shouldEqual expected
  }

  it should "extract nothing from empty file" in {
    val lines = List()

    val expected = Map()

    val got = environmentParser.parsePoints(lines)
    got shouldEqual expected
  }

  it should "extract walls from valid list of enviroment lp lines and map of points" in {
    val lines = List(
      "point(p1, \"1.1\", \"1.1\").",
      "point(p2, \"2.2\", \"2.2\").",
      "wall(wall1, p1, p2).",
      "point(p3, \"3.3\", \"3.3\").",
      "% this is a comment",
      "#this is a directive."
    )

    val points = Map("p1" -> Point(1.1, 1.1),
      "p2" -> Point(2.2, 2.2),
      "p3" -> Point(3.3, 3.3)
    )

    val expected = List(Wall("wall1", Point(1.1, 1.1), Point(2.2, 2.2)))

    val got = environmentParser.parseWall(lines, points)
    got shouldEqual expected
  }
}
