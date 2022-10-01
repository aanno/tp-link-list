# Kotlin

Kotlin ist eine moderne Alternative zu Java auf der JVM. Anders als bei Scala geht es hier um inkrementelle Verbesserung und Zusammenarbeit mit (legacy) Java Code. Neuerdings kann man Kotlin auch im Browser oder 'native' benutzen. Eine Besonderheit ist die Unterstützung für fiber durch Quasar, die als Alternative zu Threads gedacht ist.

* http://kotlinlang.org/
* http://blog.paralleluniverse.co/2015/06/04/quasar-kotlin/
* http://docs.paralleluniverse.co/quasar/
* https://blog.jetbrains.com/kotlin/2015/06/fibers-and-actors-in-kotlin-with-quasar/
* https://blog.jetbrains.com/kotlin/ 

* http://kotlinlang.org/docs/tutorials/koans.html

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

* [js-generator-like implemented in coroutine](https://github.com/Kotlin/coroutines-examples/blob/master/examples/generator/generator.kt)

### Saga pattern

* [saga pattern in kotlin 1](https://github.com/cingaldi/sagapattern/tree/master/src/main/kotlin/com/cingaldi/sagapattern/application)
* [saga pattern in kotlin 2](https://gist.github.com/araqnid/02552db155c1572bcfdc3880a9d3804d)
* [saga pattern in kotlin 3](https://github.com/nomisRev/Saga)
  + https://nomisrev.github.io/Saga/

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

* [arrow](https://arrow-kt.io/docs/core/) - functional library
  + https://github.com/arrow-kt/arrow
  + [arrow monad comprehensions](https://arrow-kt.io/docs/patterns/monad_comprehensions/)
  + [arrow and coroutines](https://arrow-kt.io/docs/fx/coroutines/)

### Server

* https://github.com/kotlin/ktor (server, microservices)
* https://spring.io/blog/2017/01/04/introducing-kotlin-support-in-spring-framework-5-0
* https://dzone.com/articles/kotlin-guice-example (guice)

#### Vert.x

* https://github.com/kohesive/kovert (REST)

## Kotlin on JS

* https://github.com/Yegair/kotlin-angular
* Or: compile -> TeaVM

## Kotlin for web UI

* [compose](https://github.com/JetBrains/compose-jb) (android compose based)
  + https://www.jetbrains.com/lp/compose-mpp/
  + https://compose-web.ui.pages.jetbrains.team/
  + https://medium.com/mindorks/build-server-driven-personalized-ui-using-jetpack-compose-a0a31689b375
  + https://developer.android.com/jetpack/compose
