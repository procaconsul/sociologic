package backend

import org.scalatest.{FlatSpec, Matchers}

class PredicateProcessorSpec extends FlatSpec with Matchers {

  import PredicateProcessor._

  "The PredicateProcessor" should "create a mapping for PlainPoints only" in {

    val predicates = Seq(PlainPoint("p1", 1.1, 1.1),
      PlainPoint("p2", 2.2, 2.2),
      OrientedPoint("p3", 3.3, 3.3, 3.3),
      Wall("wall1", "p1", "p2"),
      Agent("smith"),
      Agent("zero"),
      Pos("smith", 1, "p1"),
      Pos("zero", 1, "p2")
    )

    val expected = Map("p1" -> PlainPoint("p1", 1.1, 1.1),
    "p2" -> PlainPoint("p2", 2.2, 2.2))

    val actual =  plainPoints(predicates)
    actual should contain theSameElementsAs expected
  }

  it should "create a mapping for OrientedPoints only" in {

    val predicates = Seq(PlainPoint("p1", 1.1, 1.1),
      PlainPoint("p2", 2.2, 2.2),
      OrientedPoint("p3", 3.3, 3.3, 3.3),
      Wall("wall1", "p1", "p2"),
      Agent("smith"),
      Agent("zero"),
      Pos("smith", 1, "p1"),
      Pos("zero", 1, "p2")
    )

    val expected = Map("p3" -> OrientedPoint("p3", 3.3, 3.3, 3.3))

    val actual = orientedPoints(predicates)
    actual should contain theSameElementsAs expected
  }

  it should "associate walls and points in ResolvedWalls" in {
    val predicates = Seq(PlainPoint("p1", 1.1, 1.1),
      PlainPoint("p2", 2.2, 2.2),
      OrientedPoint("p3", 3.3, 3.3, 3.3),
      Wall("wall1", "p1", "p2"),
      Wall("wall2", "p4", "p5"),
      Agent("smith"),
      PlainPoint("p4", 4.4, 4.4),
      PlainPoint("p5", 5.5, 5.5)
    )

    val points = plainPoints(predicates)

    val expected = Seq(
      ResolvedWall("wall1", PlainPoint("p1", 1.1, 1.1), PlainPoint("p2", 2.2, 2.2)),
      ResolvedWall("wall2", PlainPoint("p4", 4.4, 4.4), PlainPoint("p5", 5.5, 5.5))
    )

    val actual = resolveWalls(predicates, points)

    actual should contain theSameElementsAs expected
  }

  it should "associate agents and points in ResolvedWalls" in {
    val predicates = Seq(OrientedPoint("p1", 1.1, 1.1, 1.1),
      OrientedPoint("p2", 2.2, 2.2, 2.2),
      OrientedPoint("p3", 3.3, 3.3, 3.3),
      Wall("wall1", "p1", "p2"),
      Wall("wall2", "p4", "p5"),
      Agent("smith"),
      Agent("zero"),
      OrientedPoint("p4", 4.4, 4.4, 4.4),
      Pos("smith", 1, "p1"),
      Pos("smith", 2, "p2"),
      Pos("zero", 1, "p3"),
      Pos("zero", 2, "p4"),
      PlainPoint("p5", 5.5, 5.5)
    )

    val points = orientedPoints(predicates)
    val posPerAgent = positionsPerAgent(predicates)

    val expected = Seq(
      ResolvedAgentPositions("smith", Seq(OrientedPoint("p1", 1.1, 1.1, 1.1), OrientedPoint("p2", 2.2, 2.2, 2.2))),
      ResolvedAgentPositions("zero", Seq(OrientedPoint("p3", 3.3, 3.3, 3.3), OrientedPoint("p4", 4.4, 4.4, 4.4)))
    )

    val actual = resolveAgentPositions(posPerAgent, points)

    actual should contain theSameElementsAs expected
  }




}
