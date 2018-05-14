package backend

import org.scalatest.{FlatSpec, Matchers}

class PredicateParserSpec extends FlatSpec with Matchers {

  import PredicateParser._

  "The Environment Parser" should "correctly parse simple points and walls in lp lines" in {
    val lines = List(
      "point(p1, \"1.1\", \"1.1\").",
      "point(p2, \"2.2\", \"2.2\").",
      "wall(wall1, p1, p2).",
      "point(p3, \"3.3\", \"3.3\").",
      "% this is a comment",
      "#this is a directive."
    )

    val expected = Seq(PlainPoint("p1", 1.1, 1.1),
      PlainPoint("p2", 2.2, 2.2),
      PlainPoint("p3", 3.3, 3.3),
      Wall("wall1", "p1", "p2")
    )

    val actual = parse(lines)
    actual should contain theSameElementsAs expected
  }

  "The Environment Parser" should "correctly parse points, walls, agents and positions in lp lines" in {
    val lines = List(
      "point(p1, \"1.1\", \"1.1\").",
      "point(p2, \"2.2\", \"2.2\").",
      "wall(wall1, p1, p2).",
      "o_point(p3, \"3.3\", \"3.3\", \"3.3\").",
      "agent(smith).",
      "agent(zero).",
      "pos(smith, 1, p1).",
      "pos(zero, 1, p2).",
      "% this is a comment",
      "#this is a directive."
    )

    val expected = Seq(PlainPoint("p1", 1.1, 1.1),
      PlainPoint("p2", 2.2, 2.2),
      OrientedPoint("p3", 3.3, 3.3, 3.3),
      Wall("wall1", "p1", "p2"),
      Agent("smith"),
      Agent("zero"),
      Pos("smith", 1, "p1"),
      Pos("zero", 1, "p2")
    )

    val actual = parse(lines)
    actual should contain theSameElementsAs expected
  }

  it should "correctly parse partial interpretations in separated lists of predicates" in {
    val lines = List(
      "#pos(pi1, {}, {}, {",
      "wall(wall1, p1, p2).",
      "point(p1, \"1.1\", \"1.1\").",
      "point(p2, \"2.2\", \"2.2\").",
      "}).",
      " ",
      "#pos(pi2, {}, {}, {",
      "wall(wall2, p3, p4).",
      "point(p3, \"3.3\", \"3.3\").",
      "point(p4, \"4.4\", \"4.4\").",
      "})."
    )

    val actual = parsePartialInterpretations(lines)
    val expected = List(
      List(
        Wall("wall1", "p1", "p2"),
        PlainPoint("p1", 1.1, 1.1),
        PlainPoint("p2", 2.2, 2.2)
      ), List(
        Wall("wall2", "p3", "p4"),
        PlainPoint("p3", 3.3, 3.3),
        PlainPoint("p4", 4.4, 4.4)
      ))

    actual should contain theSameElementsAs expected
  }
}
