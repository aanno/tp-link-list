# Kotlin

Kotlin ist eine moderne Alternative zu Java auf der JVM. Anders als bei Scala geht es hier um inkrementelle Verbesserung und Zusammenarbeit mit (legacy) Java Code. Neuerdings kann man Kotlin auch im Browser oder 'native' benutzen. Eine Besonderheit ist die Unterstützung für fiber durch Quasar, die als Alternative zu Threads gedacht ist.

* http://kotlinlang.org/
* http://blog.paralleluniverse.co/2015/06/04/quasar-kotlin/
* http://docs.paralleluniverse.co/quasar/
* https://blog.jetbrains.com/kotlin/2015/06/fibers-and-actors-in-kotlin-with-quasar/
* https://blog.jetbrains.com/kotlin/ 

* http://kotlinlang.org/docs/tutorials/koans.html

## Blogs

* https://www.47deg.com/blog/technical/ kotlin, arrow, scala

## Coroutines

* https://dzone.com/articles/concurrency-java-futures-and-kotlin-coroutines
* https://medium.com/swlh/how-can-we-use-coroutinescopes-in-kotlin-2210695f0e89
* documentation
  + [basics](https://kotlinlang.org/docs/coroutines-basics.html)
  + [context and dispatcher](https://kotlinlang.org/docs/coroutine-context-and-dispatchers.html)
  + [channels](chttps://kotlinlang.org/docs/channels.html)
  + [channels 2](https://kotlinlang.org/docs/coroutines-and-channels.html)
  + [composing](https://kotlinlang.org/docs/composing-suspending-functions.html)
  + [concurrency and coroutines](https://kotlinlang.org/docs/multiplatform-mobile-concurrency-and-coroutines.html#multithreaded-coroutines)
  + [synchronized is deprecated in kotlin](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin/synchronized.html)
  + [examples](https://github.com/Kotlin/kotlinx.coroutines/tree/master/kotlinx-coroutines-core/jvm/test/guide)
  + [examples 2](https://github.com/Kotlin/coroutines-examples)
    - https://github.com/Kotlin/coroutines-examples/blob/master/examples/generator/generator.kt
* [kotlin coroutines with spring](https://spring.io/blog/2019/04/12/going-reactive-with-spring-coroutines-and-kotlin-flow)
* [kotlin coroutine sdl](https://github.com/Kotlin/kotlinx.coroutines)
* https://proandroiddev.com/structured-concurrency-in-action-97c749a8f755
* in java
  + [Calling Kotlin Suspending Functions from Java](https://www.baeldung.com/kotlin/suspend-functions-from-java)
  + https://stackoverflow.com/questions/41559105/can-i-take-advantage-of-kotlins-coroutines-by-using-them-in-java-code
  + [difference between coroutine and async await](https://stackoverflow.com/questions/56249553/difference-between-kotlin-coroutine-android-async-task-and-async-await)

### Coroutines programming examples

* [js-generator-like implemented in coroutine](https://github.com/Kotlin/coroutines-examples/blob/master/examples/generator/generator.kt)
* [discussion why the current actors are deprecated(https://github.com/Kotlin/kotlinx.coroutines/issues/87)
* https://stackoverflow.com/questions/61031827/how-to-crawl-recursive-structures-using-kotlin-coroutines
* https://stackoverflow.com/questions/73659561/how-to-use-kotlin-coroutines-with-two-for-loops-and-channels-that-update-each-ot

### Saga pattern

* [saga pattern in kotlin 1](https://github.com/cingaldi/sagapattern/tree/master/src/main/kotlin/com/cingaldi/sagapattern/application)
* [saga pattern in kotlin 2](https://gist.github.com/araqnid/02552db155c1572bcfdc3880a9d3804d)
* [saga pattern in kotlin 3](https://github.com/nomisRev/Saga)
  + https://nomisrev.github.io/Saga/

### Effect (handler) pattern

* https://www.47deg.com/blog/effects-contexts/ featured!

## Link lists

* https://github.com/KotlinBy/awesome-kotlin
* http://www.baeldung.com/category/kotlin/
* https://kotlin.link/

## language feature

* https://github.com/Kotlin/KEEP/blob/master/proposals/sealed-class-inheritance.md

## Articles

* https://hellsoft.se/simple-asynchronous-loading-with-kotlin-coroutines-f26408f97f46
* https://www.informatik-aktuell.de/entwicklung/programmiersprachen/ist-kotlin-das-bessere-java-eine-einfuehrung.html
* http://www.baeldung.com/java-to-kotlin

## Examples

* https://github.com/ebean-orm-examples/example-kotlin-web (guice, REST, Ebean)
* https://github.com/vert-x3/vertx-examples/tree/master/kotlin-example (vert.x)

## Libraries

* [kotlin libs search engine](https://kotlin.link/)

* [kotlin-html - server jvm dsl](https://github.com/celtric/kotlin-html)
* [sqldelight - type SQL](https://github.com/cashapp/sqldelight)

### Server

* https://github.com/kotlin/ktor (server, microservices)
  + https://ktor.io/docs/compression.html#configure_content_type
  + https://github.com/ktorio/ktor-documentation/blob/2.1.2/codeSnippets/snippets/client-content-encoding/src/main/kotlin/com/example/Application.kt
* https://spring.io/blog/2017/01/04/introducing-kotlin-support-in-spring-framework-5-0
* https://dzone.com/articles/kotlin-guice-example (guice)

#### Vert.x

* https://github.com/kohesive/kovert (REST)

## Kotlin on JS

* https://github.com/Yegair/kotlin-angular
* Or: compile -> TeaVM

## Kotlin Multiplatform

### Kotlin Mutliplarm Execution and Memory Model

### Kotlin Multiplatform Libs

* https://libs.kmp.icerock.dev/
* https://github.com/AAkira/Kotlin-Multiplatform-Libraries

* https://github.com/kotlin/ktor (server, microservices)
  + [build microservice with ktor](https://www.marcogomiero.com/posts/2021/ktor-in-memory-db-testing/)
* [Reaktive](https://github.com/badoo/Reaktive) for JVM, Android, iOS, macOS, watchOS, tvOS, JavaScript, Linux X64, Linux ARM 32 hfp with rxjava interop
* [Corbind](https://github.com/LDRAlighieri/Corbind) Android UI events to Flow, ReceiveChannels, and Actors
* [alternative to Corbind](https://github.com/satoshun/CoroutineBinding)
* [html testing and parsing](https://github.com/skrapeit/skrape.it)
* [arrow](https://arrow-kt.io/docs/core/) - functional library
  + https://github.com/arrow-kt/arrow
  + [arrow monad comprehensions](https://arrow-kt.io/docs/patterns/monad_comprehensions/)
  + [arrow and coroutines](https://arrow-kt.io/docs/fx/coroutines/)
  + [Why suspend () -> A instead of IO<A>](https://arrow-kt.io/docs/effects/io/) featured!
  + https://arrow-kt.io/docs/fx/parallel/
  + https://arrow-kt.io/docs/core/
    - https://arrow-kt.io/docs/apidocs/arrow-core/arrow.core.continuations/-effect/
  + https://www.47deg.com/blog/arrow-v1-01-3-release/
* [kotlinx-atomicfu](https://github.com/Kotlin/kotlinx-atomicfu)
* [exposed - kotlin orm](https://github.com/JetBrains/Exposed)
* [xmlutil](https://github.com/pdvrieze/xmlutil)
* [korge - game engine](https://korge.org/)
  + https://docs.korge.org/
  + https://github.com/korlibs/korge
  + [korim - image](https://github.com/korlibs/korge/tree/main/korim)
  + [korio](https://github.com/korlibs/korge/tree/main/korio) Streams, TCP Client/Server, VFS
* [resultat - Result with a loading state](https://github.com/nicolashaan/resultat)
* [moko-network](https://github.com/icerockdev/moko-network) addition to ktor-client for android
* [reflection-less serialization](https://github.com/Kotlin/kotlinx.serialization)  JSON, Protobuf, CBOR, Hocon, Properties

### Kotlin JS

* [dukat](https://github.com/Kotlin/dukat) generate kotlin stubs from typescript definitions
* [kotlinx-nodejs](https://github.com/Kotlin/kotlinx-nodejs) kotlin access to node API
* [kotlin js interop](https://kotlinlang.org/docs/js-interop.html) use JS from kotlin

### Kotlin for web UI

* [compose](https://github.com/JetBrains/compose-jb) (android compose based)
  + [compose-mpp](https://www.jetbrains.com/de-de/lp/compose-mpp/)
  + [compose-web](https://compose-web.ui.pages.jetbrains.team/)
  + https://compose-web.ui.pages.jetbrains.team/
  + https://medium.com/mindorks/build-server-driven-personalized-ui-using-jetpack-compose-a0a31689b375
  + https://developer.android.com/jetpack/compose
  + [skia](https://skia.org/) - base native canvas technology
* [MVIKotlin](https://github.com/arkivanov/MVIKotlin) elm-like
* [Decompose](https://github.com/arkivanov/Decompose)
* [jetpack compose effects](https://effectiveandroid.substack.com/p/jetpack-compose-effect-handlers)
  + [side-effects](https://developer.android.com/jetpack/compose/side-effects)
  + https://www.heise.de/news/Android-Entwicklung-UI-Toolkit-Jetpack-Compose-arbeitet-mit-aktuellem-Kotlin-7157898.html
* [fritz2](https://github.com/jwstegemann/fritz2) elm-like
* [kotlinx.html](https://github.com/Kotlin/kotlinx.html)
* [doodle](https://github.com/nacular/doodle)
  + https://nacular.github.io/doodle/

### Kotlin compilier plugins

* https://kotlinlang.org/docs/ksp-overview.html
  + https://github.com/google/ksp
* https://arrow-kt.io/docs/meta/analysis/
