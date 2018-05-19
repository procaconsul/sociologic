package backend

import org.scalatest.{FlatSpec, Matchers}

class SpatioTemporalILASPProcessorSpec extends FlatSpec with Matchers {

  import SpatioTemporalILASPProcessor._

  "The PredicateProcessor" should "create a mapping for all the points among the given predicates" in {

    val predicates = Seq(Point("p1", 1.1, 1.1),
      Point("p2", 2.2, 2.2),
      Point("p3", 3.3, 3.3, 3.3),
      Wall("wall1", "p1", "p2"),
      Agent("smith"),
      Agent("zero"),
      Pos("smith", 1, "p1"),
      Pos("zero", 1, "p2")
    )

    val expected = Map(
      "p1" -> Point("p1", 1.1, 1.1),
      "p2" -> Point("p2", 2.2, 2.2),
      "p3" -> Point("p3", 3.3, 3.3, 3.3))

    val actual =  pointsMap(predicates)
    actual should contain theSameElementsAs expected
  }

  it should "associate walls and points in ResolvedWalls" in {
    val predicates = Seq(Point("p1", 1.1, 1.1),
      Point("p2", 2.2, 2.2),
      Point("p3", 3.3, 3.3, 3.3),
      Wall("wall1", "p1", "p2"),
      Wall("wall2", "p4", "p5"),
      Agent("smith"),
      Point("p4", 4.4, 4.4),
      Point("p5", 5.5, 5.5)
    )

    val points = pointsMap(predicates)

    val expected = Seq(
      ResolvedWall("wall1", Seq(Point("p1", 1.1, 1.1), Point("p2", 2.2, 2.2))),
      ResolvedWall("wall2", Seq(Point("p4", 4.4, 4.4), Point("p5", 5.5, 5.5)))
    )

    val actual = resolveWalls(predicates, points)

    actual should contain theSameElementsAs expected
  }

  it should "throw PredicateResolutionException if point referenced by wall is not present" in {
    val predicates = Seq(Point("p1", 1.1, 1.1),
      Wall("wall1", "p1", "p2"),
      Wall("wall2", "p4", "p5"),
      Point("p4", 4.4, 4.4),
      Point("p5", 5.5, 5.5)
    )

    val points = pointsMap(predicates)

    a [PredicateResolutionException] should be thrownBy resolveWalls(predicates, points)

  }

  it should "associate agents and points in ResolvedAgents" in {
    val predicates = Seq(
      Point("p1", 1.1, 1.1, 1.1),
      Point("p2", 2.2, 2.2, 2.2),
      Point("p3", 3.3, 3.3, 3.3),
      Wall("wall1", "p1", "p2"),
      Wall("wall2", "p4", "p5"),
      Agent("smith"),
      Agent("zero"),
      Point("p4", 4.4, 4.4, 4.4),
      Pos("smith", 1, "p1"),
      Pos("smith", 2, "p2"),
      Pos("zero", 1, "p3"),
      Pos("zero", 2, "p4"),
      Point("p5", 5.5, 5.5)
    )

    val points = pointsMap(predicates)
    val posPerAgent = positionsPerAgent(predicates)

    val expected = Seq(
      ResolvedAgentPositions("smith", Seq(Point("p1", 1.1, 1.1, 1.1), Point("p2", 2.2, 2.2, 2.2))),
      ResolvedAgentPositions("zero", Seq(Point("p3", 3.3, 3.3, 3.3), Point("p4", 4.4, 4.4, 4.4)))
    )

    val actual = resolveAgentPositions(posPerAgent, points)

    actual should contain theSameElementsAs expected
  }

  it should "throw PredicateResolutionException if point referenced by pos is not present" in {
    val predicates = Seq(Point("p1", 1.1, 1.1, 1.1),
      Point("p3", 3.3, 3.3, 3.3),
      Agent("smith"),
      Pos("smith", 1, "p1"),
      Pos("smith", 2, "p2"),
      Point("p5", 5.5, 5.5)
    )

    val points = pointsMap(predicates)
    val posPerAgent = positionsPerAgent(predicates)

    a [PredicateResolutionException] should be thrownBy resolveAgentPositions(posPerAgent, points)
  }

  it should "create PartialInterpretations from names and predicates" in {
    val metadata = Seq(Map("name" -> "pi1"), Map("name" -> "pi2"))
    val predicates = Seq(
      Seq(
        Wall("wall1", "p1", "p2"),
        Point("p1", 1.1, 1.1),
        Point("p2", 2.2, 2.2)
      ),
      Seq(
        Wall("wall2", "p4", "p5"),
        Point("p4", 4.4, 4.4),
        Point("p5", 5.5, 5.5),
        Agent("smith"),
        Pos("smith", 1, "p1"),
        Point("p1", 1.1, 1.1, 1.1)
      )
    )

    val actual = simulations(metadata, predicates)
    val expected = Seq(
      Scenario(
        "pi1",
        Seq(ResolvedWall("wall1", Seq(Point("p1", 1.1, 1.1), Point("p2", 2.2, 2.2)))),
        Point("centre_of_pi1", 0.0, 0.0)
      ),
      Scenario(
          "pi2",
          Seq(
            ResolvedAgentPositions("smith", Seq(Point("p1", 1.1, 1.1, 1.1))),
            ResolvedWall("wall2", Seq(Point("p4", 4.4, 4.4), Point("p5", 5.5, 5.5)))),
          Point("centre_of_pi2", 0.0, 0.0)
      )
    )

    actual should contain theSameElementsAs expected
  }

}
