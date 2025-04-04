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
* https://kt.academy/ learn kotlin

## documentation kotlin

* [kdoc](ttps://kotlinlang.org/docs/kotlin-doc.html) kotlin's 'javadoc'
  + [kdoc overview](https://www.baeldung.com/kotlin/kdoc)
* [dokka](https://kotlinlang.org/docs/dokka-introduction.html) API documentation
  + [dokka on github](https://github.com/Kotlin/dokka)
* [kdocify idea plugin](https://plugins.jetbrains.com/plugin/22727-kdocify--kotlin-doc-generator)
* [kotlinx.knit](https://github.com/Kotlin/kotlinx-knit) Kotlin source example files and tests from markdown documents with embedded snippets of Kotlin code
* [orchid](https://orchid.run/) doc server (for kotlin, java, swift, and ?scala?)
  + [quick start](https://orchid.run/wiki/user-manual/getting-started/quickstart)
  + [orchid manual](https://orchid.run/wiki/user-manual/getting-started)
  + [orchid kotlin howto](https://orchid.run/wiki/learn/tutorials/how-to-document-kotlin)
  + [orchid on github](https://github.com/orchidhq/orchid)
  + [orchid plugins](https://orchid.run/plugins/orchidcore)
    - https://orchid.run/plugins/orchidkotlindoc
    - https://orchid.run/plugins/orchidsearch

## emerging features

### type system

* [no way to define receiver type](https://stackoverflow.com/questions/68919647/kotlin-how-to-explicitly-specify-the-actual-type-of-a-lambda)
* [ExperimentalTypeInference BuilderInference](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin/-builder-inference/)
* [difference between anonymous function and lambda](https://stackoverflow.com/questions/58004914/kotlin-fun-vs-lambda-is-there-difference)
* [specify both object dispatched and receiver type](https://stackoverflow.com/questions/65349747/in-kotlin-is-it-possible-to-call-a-member-extension-function-specifying-both-th/65376089#65376089)

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
* [structured concurrency in action](https://proandroiddev.com/structured-concurrency-in-action-97c749a8f755)
* [Composing Coroutines and Suspend Functions](https://www.baeldung.com/kotlin/composing-coroutines-suspend-functions)
* [deep look into suspend functions](https://medium.com/axel-springer-tech/deep-look-into-coroutine-suspend-functions-part-1-introduction-1f339aaf7449)
* in java
  + [Calling Kotlin Suspending Functions from Java](https://www.baeldung.com/kotlin/suspend-functions-from-java)
  + https://stackoverflow.com/questions/41559105/can-i-take-advantage-of-kotlins-coroutines-by-using-them-in-java-code
  + [difference between coroutine and async await](https://stackoverflow.com/questions/56249553/difference-between-kotlin-coroutine-android-async-task-and-async-await)
  + [Use Kotlin's Coroutines in Java code](https://stackoverflow.com/questions/41559105/can-i-take-advantage-of-kotlins-coroutines-by-using-them-in-java-code)
  + [Call Kotlin suspend function in Java class](https://stackoverflow.com/questions/52869672/call-kotlin-suspend-function-in-java-class)

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

* [ksp](https://github.com/google/ksp) Kotlin Symbol Processing (KSP) is an API that you can use to develop lightweight compiler plugins
  + [ktlint-gradle problem](https://github.com/JLLeitschuh/ktlint-gradle/issues/746#issuecomment-2430462228)
* [kotlin-html - server jvm dsl](https://github.com/celtric/kotlin-html)
* [sqldelight - type SQL](https://github.com/cashapp/sqldelight)

### Injection frameworks

* [dagger](https://dagger.dev/) fully static, compile-time dependency injection framework for Java, Kotlin, and Android
  + [hilt](https://dagger.dev/hilt/)
    - [hilt-android](https://developer.android.com/training/dependency-injection/hilt-android)

## Metadata

* [@Metadata](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin/-metadata/) present on any class file produced by the Kotlin compiler and is read by the compiler and reflection
* [kotlinx-metadata](https://github.com/JetBrains/kotlin/tree/master/libraries/kotlinx-metadata) platform-agnostic part of the Kotlin Metadata library
  + [kotinx-metadata-jvm](https://kotlinlang.org/api/kotlinx-metadata-jvm/kotlinx-metadata-jvm/kotlinx.metadata/)
  + https://github.com/JetBrains/kotlin/blob/master/libraries/kotlinx-metadata/jvm/ReadMe.md

## Server

* https://github.com/kotlin/ktor (server, microservices)
  + https://ktor.io/docs/compression.html#configure_content_type
  + https://github.com/ktorio/ktor-documentation/blob/2.1.2/codeSnippets/snippets/client-content-encoding/src/main/kotlin/com/example/Application.kt
* https://spring.io/blog/2017/01/04/introducing-kotlin-support-in-spring-framework-5-0
* https://dzone.com/articles/kotlin-guice-example (guice)

### Vert.x

* https://github.com/kohesive/kovert (REST)

## Kotlin on JS

* https://github.com/Yegair/kotlin-angular
* Or: compile -> TeaVM

## Kotlin Multiplatform (mpp)

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
* [akkurate](https://github.com/nesk/akkurate) validation library
  + https://akkurate.dev/docs/overview.html#showcase
* [cache4k](https://github.com/ReactiveCircus/cache4k) simple in-memory key-value cache

### Kotlin JS

* [dukat](https://github.com/Kotlin/dukat) generate kotlin stubs from typescript definitions
* [kotlinx-nodejs](https://github.com/Kotlin/kotlinx-nodejs) kotlin access to node API
* [kotlin js interop](https://kotlinlang.org/docs/js-interop.html) use JS from kotlin

### Kotlin for web UI

* [compose](https://github.com/JetBrains/compose-jb) (android compose based)
  + [compose multiplatform](https://www.jetbrains.com/de-de/lp/compose-multiplatform/)
  + [compose-mpp](https://www.jetbrains.com/de-de/lp/compose-mpp/)
  + [compose-web](https://compose-web.ui.pages.jetbrains.team/)
  + https://compose-web.ui.pages.jetbrains.team/
  + https://medium.com/mindorks/build-server-driven-personalized-ui-using-jetpack-compose-a0a31689b375
  + https://developer.android.com/compose (former: https://developer.android.com/jetpack/compose )
    - https://developer.android.com/develop/ui/compose/tutorial?hl=de
    - [state in compose](https://developer.android.com/develop/ui/compose/state?hl=de)
  + [skia](https://skia.org/) - base native canvas technology
  + [introduction to compose snapshots](https://dev.to/zachklipp/introduction-to-the-compose-snapshot-system-19cn)
    - https://blog.zachklipp.com/introduction-to-the-compose-snapshot-system/
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

* https://kotlinlang.org/docs/ksp-overview.html Kotlin Symbol Processing (KSP) is an API that you can use to develop lightweight compiler plugins
  + https://github.com/google/ksp
* https://arrow-kt.io/docs/meta/analysis/
* https://kotlinlang.org/docs/sam-with-receiver-plugin.html compiler plugins shipped with kotlin

### Kotlin pure functional programming (pfp, arrow)

Articles
* [monads in kotlin](https://medium.com/@albert.llousas/monads-explained-in-kotlin-4126ac0cb7f2)
* [ Functional Programming in Kotlin by Tutorials - Monads](https://www.kodeco.com/books/functional-programming-in-kotlin-by-tutorials/v1.0/chapters/13-understanding-monads) only partly readable
* [For-Comprehension Free Monads in Kotlin - Mini Howto](https://gist.github.com/PhBastiani/26d8734ff33001cb0304df337ea936a1)

Kotlin multi platform FPF

* [arrow kt](https://arrow-kt.io/learn/overview/)
  + [summary](https://arrow-kt.io/learn/summary/)
  + [typed errors and validation](https://arrow-kt.io/learn/typed-errors/)
  + [High-level concurrency](https://arrow-kt.io/learn/coroutines/parallel/)
    - [kolinx.coroutines](https://github.com/Kotlin/kotlinx.coroutines)
    - [flow](https://kotlinlang.org/api/kotlinx.coroutines/kotlinx-coroutines-core/kotlinx.coroutines.flow/-flow/)
  + [resilience](https://arrow-kt.io/learn/resilience/intro/)
  + [immutable data, optics and lenses](https://arrow-kt.io/learn/immutable-data/intro/)
    - [kotlinx.serialization.jsonpath](https://github.com/nomisRev/kotlinx-serialization-jsonpath)
  + [serialization gotchas](https://arrow-kt.io/learn/quickstart/serialization/)
  + [arrow-kt core on github](https://github.com/arrow-kt/arrow)
* [arrow analysis](https://arrow-kt.io/ecosystem/analysis/quickstart/) static analyzer compile time plugin, 
  including support for pre and post conditions
* [arrow suspendapp](https://arrow-kt.io/ecosystem/suspendapp/) graceful shutdown without resource leaks,
  including kafka and ktor support
* [quiver](https://github.com/cashapp/quiver) make functional programming in Kotlin even more accessible
* [libs based on arrow](https://arrow-kt.io/libraries/)
* [moebius](https://spotify.github.io/mobius/concepts/) PFP redux pattern
  + https://github.com/spotify/mobius

#### learn Kotlin PFP

* [fpk-materials](https://github.com/kodecocodes/fpk-materials)
  + [Functional Programming in Kotlin by Tutorials](https://www.kodeco.com/books/functional-programming-in-kotlin-by-tutorials)

#### arrow ecosystem

* [inikio](https://github.com/serras/inikio) Initial-style DSL (monadic) made easy
  + http://serranofp.com/inikio/
* [arrow-exact](https://github.com/arrow-kt/arrow-exact) easy smart constructors for restricted types
* [arrow-tracing](https://github.com/arrow-kt/arrow-tracing) distributed tracing based on opentracing/jvm
* [arrow-reflection](https://github.com/arrow-kt/arrow-reflection) meta programming for kotlin/arrow
* [kopykat](https://github.com/kopykat-kt/kopykat) alternative to optics and lenses
* [arrow-gradle-config](https://github.com/arrow-kt/arrow-gradle-config) gradle template for mpp
* [parsus](https://github.com/alllex/parsus) parser combinator lib implemented with coroutines
* [hoplite](https://github.com/sksamuel/hoplite) loading configuration files into typesafe classes in a boilerplate-free way
* [tribune](https://github.com/sksamuel/tribune) parse-and-validate library based on arrow

#### fundaments of arrow

* https://blog.rockthejvm.com/kotlin-context-receivers/
* https://xebia.com/blog/the-suspend-receivers-style-in-kotlin/
* https://arrow-kt.io/learn/design/effects-contexts/
* https://arrow-kt.io/learn/design/receivers-flatmap/
* https://arrow-kt.io/learn/design/suspend-io/

#### old arrow

Arrow has formerly been more in line with PFP of other languages (haskell, 
scala). However this effort was surrendered in favour of a kotlin specific
way to handle PFP.

Old code has used kapt processing for compile time annotation processing.
This is all gone now (and optics uses KSP).

Old docs are currently still available:

* [arrow](https://arrow-kt.io/docs/core/) - functional library
  + https://github.com/arrow-kt/arrow
  + [arrow monad comprehensions](https://old.arrow-kt.io/docs/patterns/monad_comprehensions/) old arrow
  + [arrow and coroutines](https://old.arrow-kt.io/docs/fx/coroutines/)
  + [Why suspend () -> A instead of IO<A>](https://old.arrow-kt.io/docs/effects/io/) featured!
  + https://old.arrow-kt.io/docs/fx/parallel/
  + https://old.arrow-kt.io/docs/core/
    - https://old.arrow-kt.io/docs/apidocs/arrow-core/arrow.core.continuations/-effect/
  + https://www.47deg.com/blog/arrow-v1-01-3-release/
* [Function Programming in Kotlin](https://github.com/fpinkotlin/fpinkotlin) manning book
  + https://github.com/eureka84/functional-programming-in-kotlin-book-exercise
* [migration to arrow 2.0](https://arrow-kt.io/learn/quickstart/migration/)
* [openrewrite recipe to arrow 2.0](https://github.com/arrow-kt/rewrite-arrow)
* [For-Comprehension Free Monads in Kotlin - Mini Howto](https://gist.github.com/PhBastiani/26d8734ff33001cb0304df337ea936a1) featured!
* https://abdulkj.medium.com/idiomatic-validation-in-kotlin-using-applicatives-911035cda9b6
* [Baeldung on arrow](https://www.baeldung.com/kotlin/arrow)

### Kotlin Testing

* [kotlin.test](https://kotlinlang.org/api/latest/kotlin.test/)
* [kotest](https://kotest.io/) Framework Extensions Assertions Property Testing Intellij Plugin
  + [quick start](https://kotest.io/docs/quickstart/)
  + [bald](https://www.baeldung.com/kotlin/kotest)
  + [property testing](https://kotest.io/docs/proptest/property-based-testing.html)

#### fundaments of kotlin testing

* https://phauer.com/2018/best-practices-unit-testing-kotlin/

### Static Code Analysis

#### Detekt

* [detekt](https://detekt.dev/docs/intro)
  + [quick start gradle](https://detekt.dev/docs/gettingstarted/gradle/)
  + [type resolution](https://detekt.dev/docs/gettingstarted/type-resolution/#is-my-rule-using-type-resolution) experimental feature
  + [marketplace for rules](https://detekt.dev/marketplace/)
  + [detekt.yml file from github](https://github.com/detekt/detekt/blob/main/config/detekt/detekt.yml)
* [detekt rules for arrow](https://github.com/woltapp/arrow-detekt-rules) find missing calls to `.bind()`

## Kotlin and Java

* [kotlin java interop](https://www.baeldung.com/kotlin/category/java-interop)
