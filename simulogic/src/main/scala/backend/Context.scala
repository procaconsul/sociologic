package backend

import com.typesafe.config.{Config, ConfigFactory}

class Context(config: Config) {

  config.checkValid(ConfigFactory.defaultReference(), "simulogic")

  def this() {
    this(ConfigFactory.load())
  }

  val lpFilesRootDir = config.getString("simulogic.root_dir")
}
