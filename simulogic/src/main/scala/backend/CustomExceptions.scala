package backend

case class InvalidMetadataException(param: String, value: String) extends Exception {
  override def getMessage: String = s"\'$param\'=\'$value\' is not a valid metadata combination."
}

case class PredicateResolutionException(predName: String, failingRef: String) extends Exception {
  override def getMessage: String = s"Failed to resolve predicate \'$predName\': referenced predicate \'$failingRef\' not found."
}