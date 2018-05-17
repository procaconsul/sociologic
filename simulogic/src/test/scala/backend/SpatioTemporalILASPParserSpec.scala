package backend

import org.scalatest.{FlatSpec, Matchers}

class SpatioTemporalILASPParserSpec extends FlatSpec with Matchers {

  import SpatioTemporalILASPParser._

  "The Environment Parser" should "correctly parse simple points and walls in lp lines" in {
    val lines = List(
      "point(p1, \"1.1\", \"1.1\").",
      "point(p2, \"2.2\", \"2.2\").",
      "wall(wall1, p1, p2).",
      "point(p3, \"3.3\", \"3.3\").",
      "% this is a comment",
      "#this is a directive."
    )

    val expected = Seq(Point("p1", 1.1, 1.1),
      Point("p2", 2.2, 2.2),
      Point("p3", 3.3, 3.3),
      Wall("wall1", "p1", "p2")
    )

    val actual = parsePredicates(lines)
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

    val expected = Seq(Point("p1", 1.1, 1.1),
      Point("p2", 2.2, 2.2),
      Point("p3", 3.3, 3.3, 3.3),
      Wall("wall1", "p1", "p2"),
      Agent("smith"),
      Agent("zero"),
      Pos("smith", 1, "p1"),
      Pos("zero", 1, "p2")
    )

    val actual = parsePredicates(lines)
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

    val actual = parsePredicatesInExamples(lines)
    val expected = List(
      List(
        Wall("wall1", "p1", "p2"),
        Point("p1", 1.1, 1.1),
        Point("p2", 2.2, 2.2)
      ), List(
        Wall("wall2", "p3", "p4"),
        Point("p3", 3.3, 3.3),
        Point("p4", 4.4, 4.4)
      ))

    actual should contain theSameElementsAs expected
  }

  it should "parse the metadata correctly" in {
    val lines = List(
      "% METADATA",
      "wall(wall1, p1, p2).",
      "% :name=p1_2A_1",
      "point(p1, \"1.1\", \"1.1\").",
      " ",
      "% :centrex=12",
      " ",
      "% :centrey=3.4",
      "point(p3, \"3.3\", \"3.3\").",
      "point(p4, \"4.4\", \"4.4\").",
      "})."
    )

    val actual = parseMetadata(lines)
    val expected = Map("name" -> "p1_2A_1", "centrex" -> "12", "centrey" -> "3.4")

    actual should contain theSameElementsAs expected
  }

  it should "parse the metadata in different examples correctly" in {
    val lines = List(
      "#pos(test_name, {}, {}, {",
      "% METADATA",
      "wall(wall1, p1, p2).",
      "% :name=p1_2A_1",
      "point(p1, \"1.1\", \"1.1\").",
      " ",
      "% :centrex=12",
      " ",
      "% :centrey=3.4",
      "}).",
      "#pos(test_name2, {}, {}, {",
      "% :name=p1_2B_1",
      "% :centrex=11",
      "% :centrey=2.4",
      "point(p3, \"3.3\", \"3.3\").",
      "point(p4, \"4.4\", \"4.4\").",
      "})."
    )

    val actual = parseMetadataInExamples(lines)
    val expected = Seq(
      Map("name" -> "p1_2A_1", "centrex" -> "12", "centrey" -> "3.4"),
      Map("name" -> "p1_2B_1", "centrex" -> "11", "centrey" -> "2.4")
    )

    actual should contain theSameElementsAs expected
  }

  // TODO test exceptions
}
