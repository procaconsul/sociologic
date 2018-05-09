import backend._
import org.scalatest.{FlatSpec, Matchers}

class PredicateParserSpec extends FlatSpec with Matchers {

  import PredicateParser._

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

    val got = parsePoints(lines)
    got shouldEqual expected
  }

  it should "extract nothing from empty file" in {
    val lines = List()

    val expected = Map()

    val got = parsePoints(lines)
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

    val got = parseWall(lines, points)
    got should contain theSameElementsAs expected
  }

  it should "extract agents' positions correctly from well-formed lp lines" in {
    val lines = List(
      "pos(agent1, 1, p1).",
      "pos(agent1, 2, p2).",
      "pos(agent2, 1, p3).",
      "wall(wall1)."
    )

    val points = Map("p1" -> OrientedPoint(1.1, 1.1, 10.0),
      "p2" -> OrientedPoint(2.2, 2.2, 20.0),
      "p3" -> OrientedPoint(3.3, 3.3, 30.0)
    )

    val expected = List(
      Agent("agent1", Map(
        1 -> OrientedPoint(1.1, 1.1, 10.0),
        2 -> OrientedPoint(2.2, 2.2, 20.0))
      ),
      Agent("agent2", Map(
        1 -> OrientedPoint(3.3, 3.3, 30.0))
      )
    )

    val got = parsePos(lines, points)
    got should contain theSameElementsAs expected

  }
}
