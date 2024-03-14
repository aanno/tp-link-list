# Http and REST microservers

## Specs

* https://stackshare.io/open-api/alternatives

* [odata](https://www.odata.org/)
  + [olingo](https://olingo.apache.org/) java implementation of odata
* [openapi 3.1 spec](https://swagger.io/specification/)
  + https://www.openapis.org/
  + https://openapi.tools/
* [raml](https://raml.org/)
* [TypeAPI](https://typeapi.org/)

## Polyglott

* http://micronaut.io/ (java, kotlin, groovy, scala)
  + https://jaxenter.com/micronaut-framework-microservices-142457.html
  + [scala support in micronaut](https://github.com/micronaut-projects/micronaut-core/wiki/Scala-Support)

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
* [Metamug R2](https://github.com/metamug/r2) a generic REST server for resources (CRUD) in java

## Python

* https://github.com/tiangolo/fastapi Python 3.7+ based on standard Python type hints

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
  + [size of js ktor](https://youtrack.jetbrains.com/issue/KTOR-1084)
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

* https://mattmoore.io/blog/scala3-microservices-http4s-doobie (wok)
* https://www.quora.com/Which-Scala-framework-is-the-best-for-REST-API-development
* https://www.heise.de/hintergrund/Scala-Microservices-mit-dem-Actor-Modell-serialisieren-5075590.html
* https://www.packtpub.com/product/scala-microservices/9781786469342 (retired)

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


## Async SQL and async JDBC

* https://spring.io/blog/2018/12/07/reactive-programming-and-relational-databases
* https://medium.com/@ggonchar/non-blocking-sql-in-scala-bddf327a1ca3
* https://suchakjani.medium.com/non-blocking-jdbc-early-2021-update-b8b2a24a3b83

### Async SQL libs

* https://github.com/scalikejdbc/scalikejdbc-async scala
  + https://github.com/scalikejdbc/scalikejdbc
  + https://scalikejdbc.org/
* https://github.com/jasync-sql/jasync-sql kotlin
  + https://github.com/28Smiles/jasync-sql-extensions
* https://github.com/darkredz/Zeko-Data-Mapper kotlin
* https://github.com/darkredz/Zeko-SQL-Builder kotlin
* https://spring.io/projects/spring-data-r2dbc spring java
* https://methodpoet.com/dapper/ C+ .NET
* https://fastapi.tiangolo.com/advanced/async-sql-databases/ python, part of fastapi
