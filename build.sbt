ThisBuild / version := "0.1.0-SNAPSHOT"

ThisBuild / scalaVersion := "2.13.13"

val chiselVersion = "3.6.1"
val chiselTestVersion = "0.6.0"
addCompilerPlugin("edu.berkeley.cs" % "chisel3-plugin" % chiselVersion cross CrossVersion.full)
lazy val root = (project in file("."))
  .settings(
    name := "chisel-rv32",
    libraryDependencies += "edu.berkeley.cs" %% "chisel3" % chiselVersion,
    libraryDependencies += "edu.berkeley.cs" %% "chiseltest" % chiselTestVersion % "test"
  )
