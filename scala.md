# Scala

Scala ist eine funktionale Alternative zu Java auf der JVM, die mittlerweile in ernsthafter Konkurrenz zu Java steht und eine völlig eigene Infrastruktur mit bringt. Auslöser ist die (akademische) Überlegung, dass eine Programmierung, die auf Grundlage von

* Funktionaler Programmierung
* Streams und Aktoren
* Reactiver Programmierung
* Non-blocking IO 

prinzipiell der klassischen Programmierung überlegen ist.

## Link lists

* https://github.com/lauris/awesome-scala


* https://docs.scala-lang.org/tutorials/FAQ/yield.html
  + https://alvinalexander.com/scala/scala-for-loop-yield-examples-yield-tutorial
  + https://stackoverflow.com/questions/48700846/scala-for-comprehension-yielding-result-from-multiple-variable-bindings
* Ternary operator
  + https://stackoverflow.com/questions/2705920/how-to-define-a-ternary-operator-in-scala-which-preserves-leading-tokens
  + https://stackoverflow.com/questions/4947535/ternary-operator-similar-to/4949295
  
### Using together with Java 8

* https://stackoverflow.com/questions/24369449/scala-using-java-libraries-taking-advantage-of-lambda-expressions-support-in-ja
* https://github.com/scala/scala-java8-compat
* https://blog.takipi.com/compiling-lambda-expressions-scala-vs-java-8/

## Extensions

* https://scalameta.org/

### Dotty

* http://dotty.epfl.ch/#getting-started

## Libs

* https://github.com/functional-streams-for-scala/fs2 (functional streams)
* https://doc.akka.io/docs/akka/2.4/scala/stream/ (akka streams)
* https://monix.io/docs/3x/ (concurrency lib)
* https://typelevel.org/cats/
* https://github.com/scalaz/scalaz (fp, obsolete, use cats)

## Links

* https://www.scala-lang.org/
* http://akka.io/
* http://doc.akka.io/docs/akka-http/current/scala/http/
* https://www.lightbend.com/platform/development
* https://www.lightbend.com/platform/development/spark
* http://slick.lightbend.com/ 

## Examples

* https://danielasfregola.com/2016/02/07/how-to-build-a-rest-api-with-akka-http/
* https://github.com/hseeberger/akka-http-json
* https://github.com/theiterators/akka-http-microservice
* https://github.com/akka/akka-http 
* https://github.com/lauris/awesome-scala
* https://github.com/lihaoyi/scala.rx

## Build

* http://www.foundweekends.org/giter8/
* https://github.com/foundweekends/giter8/wiki/giter8-templates/30ac1007438f6f7727ea98c19db1f82ea8f00ac8
* http://www.scala-sbt.org/0.13/docs/sbt-new-and-Templates.html

* https://chris-martin.org/2015/gradle-scala-repl

## Language features

### Generators (compared to Python Generators)

* https://gist.github.com/arnolddevos/574873
* http://notes.backgroundsignal.com/Generators_in_Scala.html
* https://stackoverflow.com/questions/2137619/scala-equivalent-to-python-generators

## Scala for Web Server

* https://github.com/ThoughtWorksInc/Binding.scala

* Example: https://github.com/ArchDev/akka-http-rest
  + https://www.lightbend.com/activator/template/akka-http-rest


* http://www.brainoverload.nl/scala/105/jpa-with-scala
* http://jonasboner.com/real-world-scala-managing-cross-cutting-concerns-using-mixin-composition-and-aop/
* https://www.mirkosertic.de/blog/2013/03/using-scala-with-jpa-2-0/
* http://www.hars.de/2009/03/jpa-with-scala.html

* http://bhashitparikh.com/2014/10/28/hibernate-with-scala-options-with-less-pain.html (Scala and Hibernate)
* https://stackoverflow.com/questions/1494792/hibernate-and-scala

* https://www.lightbend.com/activator/template/activator-akka-scala-guice

### Lagom

* https://www.lagomframework.com/documentation/1.3.x/scala/CoreConcepts.html
* https://ordina-jworks.github.io/microservices/2016/04/22/Lagom-First-Impressions-and-Initial-Comparison-to-Spring-Cloud.html
* https://groups.google.com/forum/#!topic/lagom-framework/kpNCDCQgQp8
* https://gitter.im/lagom/lagom

* https://github.com/lagom/online-auction-scala/
* https://www.lagomframework.com/get-started-scala.html
  + https://github.com/lagom/lagom-scala.g8/tree/master/src/main/g8

* https://www.lagomframework.com/documentation/1.2.x/java/ServiceLocator.html#default-port
* https://www.lagomframework.com/documentation/1.3.x/java/KafkaServer.html
* https://www.lagomframework.com/documentation/1.3.x/java/CassandraServer.html

* https://www.lagomframework.com/blog/announcing-lagom-code-generator.html
  + https://github.com/lagom/sbt-lagom-descriptor-generator

* https://www.lagomframework.com/documentation/1.3.x/scala/ReadSide.html
* https://www.lagomframework.com/documentation/1.3.x/scala/PersistentEntity.html

* https://stackoverflow.com/questions/41902036/lagom-lagomservicelocatorstart-failed-to-start-embedded-service-locator-or-ser
* https://stackoverflow.com/questions/42675442/lagoms-embedded-kafka-fails-to-start-after-killing-lagom-process-once
* https://github.com/lagom/online-auction-scala/issues/4
* https://stackoverflow.com/questions/42675442/lagoms-embedded-kafka-fails-to-start-after-killing-lagom-process-once

* https://www.lagomframework.com/documentation/1.3.x/java/Logging.html
* https://www.lagomframework.com/documentation/1.3.x/java/SettingsLogger.html

* https://github.com/jboner/lagom-service-locator-consul

### Play

* https://www.playframework.com/documentation/2.6.x/ScalaHome
* https://www.playframework.com/documentation/2.6.x/ScalaAkka
* https://www.playframework.com/documentation/2.6.x/ScalaStream

* http://nordicapis.com/building-a-rest-api-in-java-scala-using-play-framework-2-part-1/

### Lift

* https://www.liftweb.net/lift_overview
