ThisBuild / scalaVersion := "2.13.8"

lazy val circeVersion = "0.14.1"

libraryDependencies ++= Seq(
  "org.typelevel" %% "cats-core" % "2.7.0",
  "org.typelevel" %% "cats-effect" % "3.3.4",
  "com.lihaoyi" % "ammonite" % "2.5.1" cross CrossVersion.full,
  "com.typesafe.slick" %% "slick" % "3.3.3",
  "org.slf4j" % "slf4j-nop" % "2.0.0-alpha6"
) ++ Seq(
  "io.circe" %% "circe-core",
  "io.circe" %% "circe-generic",
  "io.circe" %% "circe-parser"
).map(_ % circeVersion)

// fork := true
