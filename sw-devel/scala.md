# Scala

Scala ist eine funktionale Alternative zu Java auf der JVM, die mittlerweile in ernsthafter Konkurrenz zu Java steht und eine völlig eigene Infrastruktur mit bringt. Auslöser ist die (akademische) Überlegung, dass eine Programmierung, die auf Grundlage von

* Funktionaler Programmierung
* Streams und Aktoren
* Reactiver Programmierung
* Non-blocking IO 

prinzipiell der klassischen Programmierung überlegen ist.

## blogs

* [Turing Taco Tales](https://www.turingtaco.com/) Python Scala 3 Haskell CS MOOCs

## fundaments of pure functional programming

* [Typeclass Chronicle: A Series on ADTs](https://www.turingtaco.com/the-typeclass-chronicle-a-series-on-adts/) with code in scala and haskell
  + [ADTs](https://www.turingtaco.com/algebraic-data-types-structuring-data-in-functional-programming/)
  + [functors](https://www.turingtaco.com/functors-the-key-to-scalable-functional-code/)
  + [applicatives](https://www.turingtaco.com/applicatives-cooking-up-compositions-with-ease/)
  + [monads](https://www.turingtaco.com/monad-mixology-harnessing-composability-for-better-code/)

### relation of PFP, coroutines, and CPS (continuation passing style)

* [Cont - mother of all monads](https://www.schoolofhaskell.com/school/to-infinity-and-beyond/pick-of-the-week/the-mother-of-all-monads) featured!
* [kotlin coroutines and CPS](https://kt.academy/article/cc-under-the-hood) featured!
* [operational monad as eager Cont](https://apfelmus.nfshost.com/articles/operational-monad.html)
* [CPS in haskell](https://en.m.wikibooks.org/wiki/Haskell/Continuation_passing_style)
* [ContSeq in arrow-kt](https://github.com/arrow-kt/arrow-analysis/blob/main/analysis/common/src/main/kotlin/arrow/meta/continuations/ContSeq.kt)

## Link lists

* https://github.com/lauris/awesome-scala


* https://docs.scala-lang.org/tutorials/FAQ/yield.html
  + https://alvinalexander.com/scala/scala-for-loop-yield-examples-yield-tutorial
  + https://stackoverflow.com/questions/48700846/scala-for-comprehension-yielding-result-from-multiple-variable-bindings
* Ternary operator
  + https://stackoverflow.com/questions/2705920/how-to-define-a-ternary-operator-in-scala-which-preserves-leading-tokens
  + https://stackoverflow.com/questions/4947535/ternary-operator-similar-to/4949295
* https://rockthejvm.com/ great content for Scala, Kotlin, Spark, Flink, ZIO, Akka, featured!
* [scalacenter](https://scala.epfl.ch/)
  + https://github.com/scalacenter
* [scala home page](https://www.scala-lang.org/)
  
### Using together with Java 8

* https://stackoverflow.com/questions/24369449/scala-using-java-libraries-taking-advantage-of-lambda-expressions-support-in-ja
* https://github.com/scala/scala-java8-compat
* https://blog.takipi.com/compiling-lambda-expressions-scala-vs-java-8/

## Scala Native

* https://scala-native.org/en/stable/
  + [no multithreading](https://scala-native.org/en/stable/user/lang.html#multithreading)
* https://github.com/tindzk/awesome-scala-native
* https://scala-native.org/en/stable/lib/javalib.html

## Scala Concurrency

* [fs2](https://fs2.io) - input and output on the JVM, Node.js, and Scala Native
* [skunk](https://typelevel.org/skunk/) - async postgres on JVM, Node.js, and Native
* [epollcat](https://github.com/armanbilge/epollcat) cats effects implementation for Native

## Scala Web

* https://www.scala-lang.org/#creating-services
* [tapir](https://tapir.softwaremill.com/en/latest/#) describe HTTP API endpoints as immutable Scala values
* [http4s](https://http4s.org) - Http4s provides a standard interface for defining services and clients
* [snunit](https://github.com/lolgab/snunit) - nginx unit based Native web server

## Extensions

* https://scalameta.org/
* https://github.com/scala/scala-xml/wiki/XML-Processing
* [scalafix](https://scalacenter.github.io/scalafix/) refactoring and linting tool
* [magnolia](https://github.com/softwaremill/magnolia) automatic type classes for case classes and enum on JVM, Node.js, and Native
* [metals](https://scalameta.org/metals/) scala language server
* [scastie](https://scastie.scala-lang.org/) try scala in browser

## Libs

* https://github.com/functional-streams-for-scala/fs2 (functional streams)
* https://doc.akka.io/docs/akka/2.4/scala/stream/ (akka streams)
* https://monix.io/docs/3x/ (concurrency lib)
* https://typelevel.org/cats/
* https://github.com/scalaz/scalaz (fp, obsolete, use cats)
* [galia - scala 2 data transformation](https://towardsdatascience.com/gallia-a-library-for-data-transformation-3fafaaa2d8b9)
* https://ammonite.io/ repl shell - great for scala learning
  + https://docs.scala-lang.org/overviews/repl/overview.html simple repl included in scala
* [scala-cli](https://scala-cli.virtuslab.org/) repl and build tool especially for scala learning
  + [cheat sheet](https://github.com/yadavan88/ScalaCLI-Cheatsheet)
  + [Scala CLI Tutorial](https://blog.rockthejvm.com/scala-cli-and-scala-native/)
  + [scala CLI intro](https://www.baeldung.com/scala/scala-cli-intro)
  + [setup coursier with cs](https://get-coursier.io/docs/cli-setup)
* https://github.com/plokhotnyuk/jsoniter-scala macro based json (de)serializer
* https://sirthias.github.io/borer/ CBOR and JSON (de)serializer
* [fs](https://github.com/typelevel/fs2) functional streaming
  + https://fs2.io/#/ecosystem

## Links

* https://www.scala-lang.org/
* http://akka.io/ now commercial
  + [new akka license](https://www.lightbend.com/akka/license-faq)
  + http://doc.akka.io/docs/akka-http/current/scala/http/
  + [lightbend blog](https://www.lightbend.com/blog)
* [alpakka](https://doc.akka.io/docs/alpakka/current/) stream-aware and reactive integration pipelines for Java and Scala
* [kalix](https://www.kalix.io/) fully managed cloud platform that gives developers the framework
* https://www.lightbend.com/platform/development
* https://www.lightbend.com/platform/development/spark
* http://slick.lightbend.com/

* https://contributors.scala-lang.org language discussion like
  + https://contributors.scala-lang.org/t/proposed-changes-and-restrictions-for-implicit-conversions/4923
  + https://contributors.scala-lang.org/t/for-comprehension-requires-withfilter-to-destructure-tuples/5953
    works in scala 3
  + https://contributors.scala-lang.org/t/poor-or-rich-mans-refinement-types-in-scala-3-x/4647/2
    works in scala 3, example: PositiveInt

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

### Build systems

* [sbt](https://www.scala-sbt.org/)
  + https://github.com/sbt/sbt
  + [sbt-coursier](https://get-coursier.io/docs/sbt-coursier)
    - [coursier](https://get-coursier.io/) Pure Scala Artifact Fetching
* [mill](https://mill-build.com/mill/Intro_to_Mill.html)
  + [mill on github](https://github.com/com-lihaoyi/mill)
* [bloop](https://scalacenter.github.io/bloop/)
  + https://github.com/scalacenter/bloop
* [pantsbuild](https://www.pantsbuild.org/) Python-based for Python, Go, Java, Scala, Kotlin, Shell, and Docker
  + https://github.com/pantsbuild/pants
* [scala rules for bazel](https://github.com/higherkindness/rules_scala)

## Compiler

* [zinc](https://github.com/sbt/zinc) scala incremental compiler (from sbt)

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

### Lagom (now deprecated)

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

## Dotty/Scala 3

* http://dotty.epfl.ch/#getting-started
* http://dotty.epfl.ch/docs/reference/other-new-features/explicit-nulls.html
  + https://ayushm4489.medium.com/explicit-nulls-in-scala-3-9aa9cdb6b10c

## Scala 3

* [scala 3 reference](https://docs.scala-lang.org/scala3/reference/)
* [scala 3 book](https://docs.scala-lang.org/scala3/book/fp-functional-error-handling.html)

* [explicit nulls](https://docs.scala-lang.org/scala3/reference/experimental/explicit-nulls.html#)
* [typeclasses deriving](https://www.47deg.com/blog/scala-3-deriving-typeclasses/)
* [not in scala 3](https://www.47deg.com/blog/scala-3-dropping-baggage/)
* [F\[_\]](https://www.47deg.com/blog/what-is-F-with-hole-in-scala/)
* [tagless final](https://www.baeldung.com/scala/tagless-final-pattern) featured!
* [pattern matching](https://docs.scala-lang.org/tour/pattern-matching.html)
* https://www.baeldung.com/scala/implicitly
* https://www.baeldung.com/scala/higher-kinded-types

### Not null, non-nullable

* https://stackoverflow.com/questions/1522367/library-support-for-scalas-notnull-trait
* https://stackoverflow.com/questions/48713965/scala-how-to-determine-if-a-type-is-nullable

### Learn

* https://typelevel.org/cats/resources_for_learners.html

* https://www.scala-exercises.org/ scala, std lib, doobie (jdbc), cats, shapeless, scalacheck, cirle (json), 
  fetch (remote data fetching), monocle (lens monad), FP in scala
  featured!
* https://docs.scala-lang.org/
  + [Scala 3 Book](https://docs.scala-lang.org/scala3/book/introduction.html)


### Scala 3 `-Yexplicit-nulls`

* https://dotty.epfl.ch/3.0.0/docs/reference/other-new-features/explicit-nulls.html
* https://stackoverflow.com/questions/70747784/scala-3-explicit-nulls-flag-makes-string-operations-quite-unusable

### Special interest

* http://www.scalaformachinelearning.com/
* https://index.scala-lang.org/awesome/serverless?sort=stars
  + https://index.scala-lang.org/typelevel/feral
    - https://disneystreaming.github.io/smithy4s/docs/overview/intro/
    - https://github.com/tpolecat/natchez
* coroutines
  + https://scala-coroutines.github.io/coroutines/
  + [scala futures vs kotlin coroutines](https://gist.github.com/alexbezhan/9bb140dc25c06cdfd56bc748c7fa9c19)
    - https://monix.io/ Asynchronous Programming for Scala and Scala.js
  + [zio](https://github.com/zio/zio) multiplatform asynchronous and concurrent programming
  + [suspendable functions and coroutines](https://contributors.scala-lang.org/t/suspendable-functions-and-coroutines/3772/4)
* https://typelevel.org/projects/
* [coroutine - fibers - effects in react](https://www.yld.io/blog/continuations-coroutines-fibers-effects/) off-topic

#### Cats and Cats Effects

* [cats](https://typelevel.org/cats/)
  + https://typelevel.org/cats/datatypes/state.html
  + https://stackoverflow.com/questions/34407212/scala-and-state-monad
  + https://en.m.wikipedia.org/wiki/Monad_(functional_programming)#Comonads
  + https://www.scalawithcats.com/ book
  + [Comonad](https://typelevel.org/cats/typeclasses/comonad.html)
    - https://softwareengineering.stackexchange.com/questions/322431/what-is-a-comonad-and-how-are-they-useful
* [cats-effect](https://typelevel.org/cats-effect/)
  + https://github.com/typelevel/cats-effect/blob/series/3.x/docs/concepts.md
  + https://typelevel.org/cats-effect/docs/tutorial
  + [herding cats tutorial](https://eed3si9n.com/herding-cats/sum-function.html)
  + [async/await with `-Xasync`](https://typelevel.org/cats-effect/docs/std/async-await)
  + [cats effect vs zio](https://softwaremill.com/cats-effect-vs-zio/)
* [cats-collections](https://github.com/typelevel/cats-collections)
  + https://typelevel.org/cats-collections/
* [cats-mtl](https://github.com/typelevel/cats-mtl) monad transformer library
  + https://github.com/typelevel/cats-mtl/blob/main/docs/getting-started.md
* [cats-tagless](https://github.com/typelevel/cats-tagless/) not for scala 3
* https://blog.knoldus.com/scala-cats-eithert/


### Scala Multiplatform

* [all multiplatfrom libs - from index](https://index.scala-lang.org/search?languages=3.x&platforms=jvm&platforms=sjs0.6&platforms=native0.4&q=*)

libs

* [ui data binding](https://github.com/ThoughtWorksInc/Binding.scala) elm-like
* [meiosis](https://meiosis.js.org/) general pattern for redux and elm-like
* [argonaut](https://github.com/argonaut-io/argonaut) JSON (jvm, js)
* [shapeless](https://github.com/milessabin/shapeless) type class and dependent type based generic programming
  + https://github.com/milessabin/shapeless/wiki/Feature-overview:-shapeless-2.0.0

build

* https://github.com/portable-scala/sbt-crossproject
* https://eed3si9n.com/parallel-cross-building-using-sbt-projectmatrix/
* https://www.scala-js.org/doc/project/cross-build.html
* https://www.scala-sbt.org/1.x/docs/Cross-Build.html

### Scala.js

* https://www.lihaoyi.com/hands-on-scala-js/
* https://www.b12-consulting.com/blog/posts/scala.js-:-a-somewhat-opinionated-guide-to-going-full-stack-in-scala/
  scala browser and server
* https://ochrons.github.io/scalajs-spa-tutorial/en/
* https://scalablytyped.org/docs/readme use typescript libs from scala.js
* https://github.com/ScalablyTyped/Converter Typescript to Scala.js converter

### Scala native

* https://scala-native.org/en/stable/
  + https://scala-native.org/en/stable/blog/interflow.html
* Scala version support: https://scala-native.org/en/stable/user/sbt.html#scala-versions

