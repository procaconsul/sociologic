package backend

case class InvalidMetadataException(param: String, value: String) extends Exception {
  def msg: String = s"\'$param\'=\'$value\' is not a valid metadata combination."
}

case class PredicateResolutionException(predName: String, failingRef: String) extends Exception {
  def msg: String = s"Failed to resolve predicate \'$predName\': referenced predicate \'$failingRef\' not found."
}