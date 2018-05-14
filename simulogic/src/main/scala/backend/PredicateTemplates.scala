package backend

object PredicateTemplates {
  final val wallPattern  = "wall\\(([A-Za-z0-9_]+)\\,\\s?([A-Za-z0-9_]+)\\,\\s?([A-Za-z0-9_]+)\\)\\.".r
  final val pointPattern = "point\\(([A-Za-z0-9_]+)\\,\\s?\"([0-9]+\\.[0-9]+)\"\\,\\s?\"([0-9]+\\.[0-9]+)\"\\)\\.".r
  final val orientedPointPattern = ("o_point\\(([A-Za-z0-9_]+)\\,\\s?\"([0-9]+\\.[0-9]+)\"\\," +
    "\\s?\"([0-9]+\\.[0-9]+)\"\\,\\s?\"([0-9]+\\.[0-9]+)\"\\)\\.").r
  final val posPattern   = "pos\\(([A-Za-z0-9_]+)\\,\\s?([0-9]+)\\,\\s?([A-Za-z0-9_]+)\\).".r
  final val agentPattern = "agent\\(([A-Za-z0-9_]+)\\).".r

  final val partialInterpBeginning = "#pos\\(([A-Za-z0-9_]+)(?:@\\d+)?[\\,\\s?\\{\\}]{0,11}".r
  final val partialInterpEnd = "\\}\\).".r
}
