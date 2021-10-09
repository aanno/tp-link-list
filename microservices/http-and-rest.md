# Http and REST microservers

## Polyglott

* http://micronaut.io/ (java, kotlin, groovy)
  + https://jaxenter.com/micronaut-framework-microservices-142457.html

## Java

* https://ratpack.io/ (non-blocking, netty-based?)
  + http://www.baeldung.com/ratpack
  + https://github.com/drmaas/ratpack-reactor
  + https://github.com/pledbrook/lazybones
  + https://github.com/ratpack/example-ratpack-gradle-kotlin-app (kotlin)
* Netflix OSS: https://github.com/Netflix
  + https://github.com/Netflix/Hystrix/wiki (resilient cloud)
  + https://github.com/Netflix/ribbon (rpc)
* http://www.dropwizard.io (also for scala)
* https://www.rapidoid.org/
* http://undertow.io/ (blocking and non-blocking)
  + http://www.baeldung.com/jboss-undertow
  + https://examples.javacodegeeks.com/enterprise-java/spring/tomcat-vs-jetty-vs-undertow-comparison-of-spring-boot-embedded-servlet-containers/
  + https://github.com/undertow-io/undertow-docs/blob/master/src/main/asciidoc/servlet-using-non-blocking-handlers.asciidoc
  + https://github.com/undertow-io/undertow-docs/blob/master/src/main/asciidoc/undertow-handler-guide.asciidoc
  + https://github.com/armdev/micro-undertow-rest
  + https://stackoverflow.com/questions/39697332/simple-rest-with-undertow
  + https://stackoverflow.com/questions/25204887/how-to-send-a-asynchronous-response-in-an-undertow-httphandler
* https://github.com/buremba/netty-rest

## Rest clients

* https://github.com/Kong/insomnia API Client for GraphQL, REST, and gRPC with plugin system
  
## Libs

* http://www.baeldung.com/rxjava-jdbc (jdbc)
* http://square.github.io/retrofit/ (http)
* https://github.com/pac4j/pac4j (authentication, authorization)

### Spring

* http://projectreactor.io/

## Kotlin

* http://sparkjava.com/
* https://javalin.io/
* https://ktor.io/index.html
  + https://github.com/kotlin/ktor
* http://hexagonkt.com/
  + https://github.com/hexagonkt/hexagon
* http://www.fireflysource.com/index.html (also for java)
  + https://github.com/hypercube1024/firefly
  + http://www.fireflysource.com/docs/database-access-kotlin.html 
    (includes a ASYNC JDBC layer, and a AsyncTransactionalManager (since 4.8))
* https://www.http4k.org/
* https://github.com/drmaas/ratpack-kotlin
  
### Kotlin with Spring

* https://spring.io/blog/2017/01/04/introducing-kotlin-support-in-spring-framework-5-0
* https://spring.io/blog/2016/02/15/developing-spring-boot-applications-with-kotlin
* https://github.com/konrad-kaminski/spring-kotlin-coroutine
* http://blog.alexnesterov.com/post/kotlin-coroutines-in-spring/
* https://moelholm.com/2017/03/19/spring-boot-a-bit-more-cool-with-kotlin/
* http://www.baeldung.com/kotlin-mongodb-spring-webflux
* http://www.baeldung.com/spring-boot-kotlin

#### Example apps

* https://github.com/sdeleuze/spring-kotlin-functional
* https://github.com/spring-petclinic/spring-petclinic-kotlin
* https://github.com/rechnerherz/demo-kotlin-gradle-spring-boot-starter
* https://github.com/PacktPublishing/Building-Applications-with-Spring-5-and-Kotlin
* https://github.com/k-tamura/easybuggy4kt

### Libs 

* https://github.com/kittinunf/Fuel
* https://github.com/consoleau/kotlin-jpa-specification-dsl

## Scala

### Overview

* https://www.quora.com/Which-Scala-framework-is-the-best-for-REST-API-development

### Self-written

* https://nordicapis.com/building-a-rest-api-in-java-scala-using-play-framework-2-part-1/
* https://medium.cforom/software-engineering-for-the-real-world/how-to-build-fast-and-robust-rest-api-with-scala-24e50621fe61

#### Akka based

* https://tobyjsullivan.github.io/applicative-slides/
  + https://github.com/tobyjsullivan/applicative-slides

### Big Ones

* https://www.playframework.com/
  + https://www.playframework.com/documentation/2.6.x/ScalaAsync
  + https://www.playframework.com/documentation/2.6.x/JavaJPA
  + http://www.jamesward.com/2012/05/08/play-2-java-tutorial
* https://www.lagomframework.com
  + https://www.lagomframework.com/documentation/1.4.x/java/ReadSideJPA.html
  + https://www.lagomframework.com/documentation/1.4.x/java/PersistentEntity.html
* https://liftweb.net/
* http://spray.io/

### Server

* https://http4s.org/
  + https://github.com/http4s/http4s
* http://unfiltered.ws/
  + https://github.com/unfiltered/unfiltered
* http://reactivecouchbase.org/
  + https://github.com/ReactiveCouchbase/reactivecouchbase-rs-core
  
### Libs

* https://github.com/scalaj/scalaj-http
* https://github.com/twitter/finatra
* http://scalatra.org/
  + https://github.com/scalatra/scalatra
* https://github.com/mauricio/postgresql-async (async jdbc driver)
  
### Scala-Spring (obsolete!)

* https://dzone.com/articles/akka-samples-scala-and-spring
* https://hub.darcs.net/psnively/spring-scala
* https://github.com/dnvriend/spring-boot-with-scala
