# Full stack microservices

* https://dev.to/javinpaul/5-best-java-frameworks-to-learn-in-2022-for-microservices-and-cloud-native-development-4732

## Tools

* https://www.heise.de/developer/artikel/Aus-der-Werkzeugkiste-Teil-4-Adam-Bien-3755575.html?artikelseite=2
  + https://prometheus.io
  + https://github.com/AdamBien/porcupine
  + http://zipkin.io/
  + https://johnragan.wordpress.com/2009/12/08/release-it-stability-patterns-and-best-practices/
* [squash - debug microservice deploy on kubernetes](https://squash.solo.io/) debugs go, node, java, python, c/c++
  + https://github.com/solo-io/squash

## Generators

## Frameworks

* https://blogs.itemis.com/de/4-microservice-frameworks-im-vergleich
* https://medium.com/microservices-architecture/top-10-microservices-framework-for-2020-eefb5e66d1a2
* https://jax.de/blog/core-java-jvm-languages/microframeworks-unter-der-lupe-javalin-vs-ktor-vs-spring-fu-vs-micronaut/

## Benchmarks

* https://www.techempower.com/benchmarks/#section=data-r21
* https://github.com/networknt/microservices-framework-benchmark
* https://github.com/smallnest/go-web-framework-benchmark go only

### Emerging Microservices

* http://cqrs.nu/tutorial/cs/01-design
* http://cqrs.nu/Faq/aggregates
* https://msdn.microsoft.com/en-us/library/jj554200.aspx
* https://msdn.microsoft.com/en-us/library/jj591573.aspx
* https://jazzy.id.au/2016/10/08/cqrs-increases-consistency.html

* https://quarkus.io/
  + https://developers.redhat.com/blog/2019/03/07/quarkus-next-generation-kubernetes-native-java-framework
  + https://developers.redhat.com/blog/2019/04/09/from-zero-to-quarkus-and-knative-the-easy-way (tutorial)
  + https://github.com/quarkiverse/quarkus-scala3
* https://knative.dev/ for kubernetes
  + https://developers.redhat.com/blog/2019/03/20/knative-what-developers-need-to-know
* https://micronaut.io/
* https://helidon.io/#/
* https://ktor.io/ kotlin
* https://javalin.io/
  + https://www.heise.de/news/Webframework-Javalin-4-0-bringt-Unterstuetzung-fuer-JDK-16-und-Kotlin-1-5-6191750.html
* https://axoniq.io/#0
* https://github.com/networknt/light-4j
  + https://www.networknt.com/
  + https://github.com/networknt/microservices-framework-benchmark
* https://github.com/spring-projects-experimental/spring-fu kotlin and java
  + https://entwickler.de/spring/spring-fu-neues-microframework-von-spring/
* [light-4j](https://www.networknt.com/)
  + [benchmarks](https://github.com/networknt/microservices-framework-benchmark)
  + [compare with other microservices](https://www.techempower.com/benchmarks/)
* [activej](https://activej.io/)
  + https://github.com/activej/activej
  + https://github.com/the-benchmarker/web-frameworks (benchmark in favour of activej)
* [fastAPI](https://fastapi.tiangolo.com/) python-based
* https://higherkindness.io/mu/ kotlin, scala, haskell (no rest, just grpc and avro)

* https://www.lightbend.com/learn for kubernetes
* https://www.lagomframework.com/documentation/1.3.x/scala/ConductR.html (scala)
  + https://www.lightbend.com/platform/production

### Node

* https://geekflare.com/javascript-frameworks-for-api/
* https://taglineinfotech.com/best-node-js-framework-for-microservices/

* https://moleculer.services/
* http://restify.com/ build-in DTrace support
* https://hapi.dev/
* https://loopback.io/ typescript
* https://nestjs.com/ typescript
* https://rokkit.dev/ typescript

### Scala

* https://sttp.softwaremill.com/en/latest/json.html circe, json4s, spray-json, Jsoniter-scala, ...
  + https://sttp.softwaremill.com/en/latest/json.html
* https://http4s.org/
  + https://http4s.org/v0.18/json/
* https://disneystreaming.github.io/smithy4s/
  + https://disneystreaming.github.io/smithy4s/docs/protocols/simple-rest-json/overview/

### Go

* https://pkg.go.dev/github.com/mingrammer/go-web-framework-stars#section-readme

* https://go-kratos.dev/ powerful middleware with rate limiter, circuit breaker, prometheus metrics, ...
  + https://go-kratos.dev/en/docs/guide/openapi/ plugin for swagger-ui
* https://gofiber.io/
  + https://github.com/gofiber/swagger plugin for swagger-ui
  + https://github.com/swaggo/fiber-swagger another plugin for swagger-ui
* https://micro.mu/
* https://github.com/NYTimes/gizmo
* https://github.com/koding/kite
* https://github.com/beego/beego complete solution including REST support, ORM, auto API docs, ...
* https://github.com/kataras/iris
  + https://github.com/iris-contrib
* https://www.gorillatoolkit.org/

### Spring and Angular

* https://www.jhipster.tech/
  + https://www.jhipster.tech/jdl/
  + https://start.jhipster.tech/jdl-studio/
  + https://github.com/jhipster/jdl-studio
  + https://www.ionos.de/digitalguide/websites/web-entwicklung/jhipster/

#### Spring reactive/webflux

* https://docs.spring.io/spring-framework/docs/5..BUILD-SNAPSHOT/spring-framework-reference/html/web-reactive.html
  + https://octoperf.com/blog/2019/10/09/kraken-server-sent-events-reactive/

#### Example apps

* https://github.com/jhipster/jhipster-sample-app
* https://github.com/dancancro/great-big-example-application


## Base Technology

### Websocket and SSE

#### SSE

* https://apifriends.com/api-streaming/server-sent-events/
