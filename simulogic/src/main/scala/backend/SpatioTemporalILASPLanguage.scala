package backend

/**
  * This object collects the regexes that the parser uses to extract values
  * from the predicates and metadata of ILASP Scenarios.
  */
object SpatioTemporalILASPLanguage {

  // Predicates ------------------------------------------------------------------------------
  final val wallPattern  = "wall\\(([A-Za-z0-9_]+)\\,\\s+([A-Za-z0-9_]+)\\,\\s+([A-Za-z0-9_]+)\\)\\.".r
  final val pointPattern = "point\\(([A-Za-z0-9_]+)\\,\\s+\"([0-9]+\\.[0-9]+)\"\\,\\s+\"([0-9]+\\.[0-9]+)\"\\)\\.".r
  final val orientedPointPattern = "o_point\\(([A-Za-z0-9_]+)\\,\\s+\"([0-9]+\\.[0-9]+)\"\\,\\s+\"([0-9]+\\.[0-9]+)\"\\,\\s+\"(-?[0-9]+\\.[0-9]+)\"\\)\\.".r
  final val posPattern   = "pos\\(([A-Za-z0-9_]+)\\,\\s+([0-9]+)\\,\\s+([A-Za-z0-9_]+)\\)\\.".r
  final val agentPattern = "agent\\(([A-Za-z0-9_]+)\\)\\.".r

  // Interpretation Metadata -----------------------------------------------------------------
  final val STRING_FORMAT = "[A-Za-z_\\d]+"
  final val NUMBER_FORMAT = "\\d+\\.?\\d+"
  final val metadataPattern = s"%\\s?:([a-z]+)=($STRING_FORMAT|$NUMBER_FORMAT)".r

  final val metadataParams = Map(
    "name" -> STRING_FORMAT,
    "centrex" -> NUMBER_FORMAT,
    "centrey" -> NUMBER_FORMAT
  )
  // -------------------------------------------------------------------------------------------

  final val pointOfView = "focus_agent"

  final val partialInterpBeginning = "#pos\\(([A-Za-z0-9_]+)(?:@\\d+)?[\\,\\s?\\{\\}]{0,11}".r
  final val partialInterpEnd = "\\}\\).".r
}
