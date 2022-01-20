import scala.io.Source
import cats._, cats.implicits._
import slick.jdbc.SQLiteProfile.api._
import scala.concurrent.{Future, Await}
import scala.reflect.ClassTag
import scala.concurrent.duration.Duration

package object app {
  type Name = String
  type Email = String
}

import app._

case class User(name: Name, email: Email)

object ExampleApp extends App {
  val db = Database.forURL("jdbc:sqlite:./users.db")

  ammonite
    .Main(predefCode = "println(\"Hello\")")
    .run("db" -> db)
}
