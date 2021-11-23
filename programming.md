# Programming (General)

## Vorgehen

* https://www.heise.de/developer/artikel/Digital-Innovation-Model-In-neun-Schritten-zum-funktionierenden-Softwarekonzept-2792638.html
* https://www.heise.de/developer/artikel/Gamification-als-Treiber-von-Codequalitaet-3759236.html
* https://www.heise.de/developer/artikel/Klappt-bei-Facebook-klappt-bei-uns-3767162.html

## Architektur

* https://ordina-jworks.github.io/architecture/2017/06/21/pragmatic-architecture-today.html
* https://de.m.wikipedia.org/wiki/Ressourcenbelegung_ist_Initialisierung
* https://de.m.wikipedia.org/wiki/Communicating_Sequential_Processes
* https://www.heise.de/developer/artikel/Episode-84-Anforderungen-an-Softwareteams-6128669.html

## Pattern

* https://www.heise.de/developer/artikel/DDD-Co-Teil-1-Was-an-CRUD-falsch-ist-3756224.html
* [the dark side of expertise](https://lwn.net/Articles/809556/)

## Language structure

* https://www.heise.de/developer/artikel/Weg-mit-den-Schleifen-4009774.html

## Blogs

* https://ordina-jworks.github.io/
* http://concurrencyfreaks.blogspot.com/2018/?m=1
* https://www.digitalocean.com/community/tutorials
* https://rdmueller.github.io/ (dsl)

## Lang

* http://opalang.org/
* https://www.meteor.com
* https://pharo.org/
* https://ballerina.io/
* https://github.com/ansible/awx (on top of ansible)
* https://racket-lang.org/ (scheme-like, with meta-programming)

## IPC and Linux Programming

* https://beej.us/guide/bgipc/html/multi/index.html

### Elixir

* https://elixir-lang.org/blog/2018/01/17/elixir-v1-6-0-released/
* https://www.heise.de/developer/meldung/Programmiersprachen-Elixir-Entwickler-arbeiten-an-Zugaenglichkeit-3783360.html
* https://www.heise.de/newsticker/meldung/Schnelle-Konkurrenz-fuer-LinkedIn-und-XING-Neues-Netzwerk-Vutuv-ist-online-3501699.html

## Emerging Technologies

### CQRS and event sourcing

* https://github.com/Chinchilla-Software-Com/CQRS/wiki/CQRS-Architecture
  + https://github.com/Chinchilla-Software-Com
* https://symfony.fi/entry/using-cqrs-es-for-content-management-systems-cms

### Emerging Web

#### Progressive Web Apps

Überkreuz
* https://www.heise.de/developer/artikel/Progressive-Web-Apps-Teil-1-Das-Web-wird-nativ-er-3733624.html
*
* https://www.heise.de/developer/artikel/Progressive-Web-Apps-Teil-2-Die-Macht-des-Service-Worker-3740464.html
* https://www.heise.de/developer/artikel/Progressive-Web-Apps-Teil-3-Wie-die-Web-App-zur-App-App-wird-3464603.htmlhttps://www.heise.de/developer/artikel/Progressive-Web-Apps-Teil-4-Eine-Frage-des-Geldes-3759686.html
* https://www.heise.de/developer/artikel/Progressive-Web-Apps-Teil-5-Das-App-Modell-der-Zukunft-3767383.html

Know-how
* https://www.heise.de/developer/artikel/Zukunft-der-Webentwicklung-Webkomponenten-und-Progressive-Web-Apps-Teil-1-3355449.html
* https://www.heise.de/developer/artikel/Zukunft-der-Webentwicklung-Webkomponenten-und-Progressive-Web-Apps-Teil-2-3355490.html

Alternative
* [ampproject, amplify]https://amp.dev/documentation/guides-and-tutorials/
  + https://amp.dev/documentation/guides-and-tutorials/learn/spec/amphtml/
  + https://amp.dev/documentation/components/
* https://www.netlify.com/ (jamstack based)

### Emerging Cloud

#### BaaS and Serverless

* https://www.heise.de/developer/artikel/Serverless-Computing-Teil-1-Theorie-und-Praxis-3756877.html
* https://www.future-processing.com/blog/serverless-with-java/
* https://blog.codecentric.de/2020/12/serverless-java-aws-zwei-jahre-cloud-native/
* https://github.com/apache/openwhisk
  + https://openwhisk.apache.org/
* https://opensource.com/article/18/11/open-source-serverless-platforms
* https://www.serverless.com/open-source/ (node-based)
  + https://www.serverless.com/blog/how-to-create-a-rest-api-in-java-using-dynamodb-and-serverless/
* https://spring.io/serverless
* (serverless on kubernetes)[https://kyma-project.io/]
  + https://kyma-project.io/docs/kyma/latest/01-overview/main-areas/
  + [busola - web frontend for kyma](https://github.com/kyma-project/busola)

##### Serverless platforms

* [cloudflare workers](https://workers.cloudflare.com/)

### Emerging Stacks

#### Go

Go is well suited also for web development. Gogs has been implemented in Go and https://gogs.io/docs gives an overview of the open source components used in that.

#### F#

* http://fsharpforfunandprofit.com/why-use-fsharp/
* http://fsharp.org/use/linux/
* https://www.jetbrains.com/rider/
* https://github.com/dotnet/roslyn

* http://www.mono-project.com/news/
* http://www.mono-project.com/docs/advanced/garbage-collector/sgen/

* [IDE for F#](https://ionide.io/)
* [Fornax - F# scriptable static site generator](https://github.com/ionide/Fornax)

#### Vert.x 3

* https://www.informatik-aktuell.de/entwicklung/programmiersprachen/vertx-3-reactive-microservices.html
* https://github.com/vert-x3/vertx-awesome
* https://github.com/vert-x3
* https://github.com/eclipse/vert.x
* https://github.com/vert-x3/vertx-codegen

* https://github.com/kohesive/kovert (REST)
* https://github.com/ef-labs/vertx-guice (guice)

#### Service Locator for Microservices (and Service Mesh)

* http://microservices.io/patterns/service-registry.html (pattern)
* https://www.consul.io/
  + https://www.consul.io/intro/index.html
  + https://www.consul.io/api/
* https://github.com/Netflix/eureka/wiki/Eureka-at-a-glance
* https://istio.io/
  + https://istio.io/docs/concepts/what-is-istio/
* https://ortelius.io/
  + http://ortelius.io/microservice-mapping/
  + https://github.com/ortelius/ortelius
* https://fabiolb.net/
  + https://github.com/fabiolb/fabio
* https://github.com/Netflix/eureka
  + https://spring.io/guides/gs/service-registration-and-discovery/
  + https://www.baeldung.com/spring-cloud-netflix-eureka

#### C++

* https://github.com/fffaraz/awesome-cpp
* https://github.com/schlangster/cpp.react
* [conon - C/C++ package manager](https://conan.io/)
  + https://docs.conan.io/en/latest/installation.html

## Swagger

Tool für polyglotte API Entwicklung und Dokumentation, insbesondere im JSON REST Bereich.

* https://swagger.io/
* https://github.com/swagger-api/swagger-codegen
* https://github.com/swagger-api/swagger-codegen/tree/master/samples/client/petstore/typescript-fetch
* https://blog.codecentric.de/en/2016/04/swagger-akka-http/

* https://senya.io/

### Swagger 3, OpenAPI 3

* Swagger 2 vs OpenAPI 3
  + [visual guide](https://blog.readme.io/an-example-filled-guide-to-swagger-3-2/)
  + [conversion](https://blog.runscope.com/posts/tutorial-upgrading-swagger-2-api-definition-to-openapi-3)
* Examples
  + https://github.com/OAI/OpenAPI-Specification/blob/master/examples/v3.0/api-with-examples.yaml

### Springfox = Swagger + Spring

* http://springfox.github.io/springfox/docs/current/
* https://github.com/springfox/springfox/blob/master/docs/transitioning-to-v2.md
* https://github.com/springfox/springfox
* https://github.com/springfox/springfox-demos

## RPC and Remoting

* https://grpc.io/

### IoC Frameworks

#### Guice

* https://github.com/google/guice
* https://github.com/google/guice/wiki/Transactions

### DB Frameworks (OR Mapper)

* http://ebean-orm.github.io/
  + https://github.com/ebean-orm/ebean
* http://www.querydsl.com/ (JPA, JDO, SQL, MongoDB, typesafe, ...)
* https://github.com/timmolter/Yank (simplistic)

## SCM

### git

* https://stackoverflow.com/questions/4126300/git-how-to-get-all-the-files-changed-and-new-files-in-a-folder-or-zip
* https://opensource.googleblog.com/2018/05/introducing-git-protocol-version-2.html (new wire protocol)
* https://stackoverflow.com/questions/4220416/can-i-specify-multiple-users-for-myself-in-gitconfig
* https://stackoverflow.com/questions/5480069/autosetuprebase-vs-autosetupmerge

#### Server/GUI/Hosting

* https://gitea.io/en-US/
  + https://github.com/go-gitea/gitea
* https://gitbucket.github.io/
  + https://github.com/gitbucket/gitbucket
  + https://github.com/gitbucket/gitbucket/wiki/Docker
  + https://github.com/gitbucket/gitbucket/wiki/Enabling-SSH-access-to-repository
  + https://github.com/gitbucket/gitbucket/wiki/External-database-configuration
  + https://github.com/gitbucket/gitbucket/blob/master/doc/how_to_run.md
  + https://gitbucket.herokuapp.com/
* http://gitblit.com/ (old)

#### Extensions

* https://git-annex.branchable.com/
  + https://git-annex.branchable.com/assistant/
  + https://git-annex.branchable.com/tips/fully_encrypted_git_repositories_with_gcrypt/
  + http://joeyh.name/blog/entry/git-annex_v6/
* https://git-lfs.github.com/
  + https://github.com/git-lfs/git-lfs
  + https://github.com/artemkin/git-lfs-server
  + [Encountered x file(s) that should have been pointers](https://github.com/git-lfs/git-lfs/issues/2839)
* https://www.agwa.name/projects/git-crypt/
  + https://github.com/AGWA/git-crypt
* https://spwhitton.name/tech/code/git-remote-gcrypt/
  + https://github.com/spwhitton/git-remote-gcrypt
* https://github.com/felipec/git-remote-hg
* https://www.perforce.com/blog/your-git-repository-database-pluggable-backends-libgit2
* https://git-secret.io/

# Copied

Spring Projects

Spring Framework 5

Das Spring Framework 5 bringt sehr viele Neuerungen, insbesondere in den Bereichen

    Reactive Web Applications (aka WebFlux): Das ist ein echter Paradigmenwechsel und keine Weiterentwicklung des bisherigen SpringMVC.
    Kotlin Support
    Testing (z.B. JUnit5 Support) 

Reactive Links

    https://projectreactor.io/
    https://spring.io/blog/2016/02/09/reactive-spring (https://github.com/reactor/reactor-spring)
    https://spring.io/blog/2016/07/28/reactive-programming-with-spring-5-0-m1
    https://spring.io/blog/2016/09/22/new-in-spring-5-functional-web-framework
    http://docs.spring.io/spring/docs/5.0.0.RC2/spring-framework-reference/web.html#web-reactive (WebFlux)
    http://docs.spring.io/spring/docs/5.0.0.RC2/spring-framework-reference/overview.html#spring-introduction 

Links

    http://projects.spring.io/spring-framework/
    https://github.com/spring-projects/spring-framework/wiki/What's-New-in-the-Spring-Framework#whats-new-in-spring-framework-5x 

Diving into Spring Boot

Spring Boot vereinfacht die Verwendung des Spring Frameworks insbesondere bei neuen Projekten.

Features

    Create stand-alone Spring applications
    Embed Tomcat, Jetty or Undertow directly (no need to deploy WAR files)
    Provide opinionated 'starter' POMs to simplify your Maven configuration
    Automatically configure Spring whenever possible
    Provide production-ready features such as metrics, health checks and externalized configuration
    Absolutely no code generation and no requirement for XML configuration 

Links

* http://projects.spring.io/spring-boot/

Spring Data

Spring Data ist eine Abstractionsschicht oberhalb von OR-Mappern wie Hibernate, die die Entwicklung von datengetriebenen Servern wie z.B. JSON-REST Servern (die ja die Gegenseite für SPA Darstellen), entscheidend vereinfacht.

Features

    Powerful repository and custom object-mapping abstractions
    Dynamic query derivation from repository method names
    Implementation domain base classes providing basic properties
    Support for transparent auditing (created, last changed)
    Possibility to integrate custom repository code
    Easy Spring integration via JavaConfig and custom XML namespaces
    Advanced integration with Spring MVC controllers
    Experimental support for cross-store persistence 

Links

    http://projects.spring.io/spring-data/
    http://projects.spring.io/spring-hateoas/ 

Spring IO

The Spring IO platform includes Foundation Layer modules and Execution Layer domain-specific runtimes (DSRs).

Features

    One platform, many workloads - build web, integration, batch, reactive or big data applications
    Radically simplified development experience with Spring Boot
    Production-ready features provided out of the box
    Curated and harmonized dependencies that just work together
    Modular platform that allows developers to deploy only the parts they need
    Support for embedded runtimes, classic application server, and PaaS deployments
    Depends only on Java SE, and supports Groovy, Grails and some Java EE
    Works with your existing dependency management tools such as Maven and Gradle
    The Spring IO Platform is certified to work on JDK 7 and 8* 

Links

    http://platform.spring.io/platform/ 

Kurzüberblick über alle Spring Projekte

Mittlerweile gibt es soviele Spring Projekte, dass man schnell die Übersicht verliert. Hier sollen die Stoßrichtungen diverser Projekte vorgestellt werden und deren gemeinsamer Rahmen klarer werden.

Links

    https://spring.io/projects 

Alternative Server Technologies

Make me reactive - VertX

Microservices

Lagom

Lagom ist ein reactive Microserviceframework für Scala und Java

Links

    https://www.lagomframework.com 

Serverless Frameworks

* http://www.officefloor.net/

Alternative Sprachen für die JVM



JavaScript und Front-end Webentwicklung

Web Frontend Frameworks

Angular

CSS

Modernes CSS und die Neuerungen der letzten Jahre

    flexbox
    grid
    Präprozessoren 

Programmierung Allgemein und Polyglott

Generatoren

MPS

DSL Development Environment. Eine alternative zur DSL Generierung und dem von uns verwendeten Eclipse Tools zur Codegenerierung.

Links

    https://www.jetbrains.com/mps/
    https://confluence.jetbrains.com/display/MPSD20171/MPS+User's+Guide
    https://confluence.jetbrains.com/display/MPSD20171/Fast+Track+to+MPS
    https://www.jetbrains.com/mps/whatsnew/ 
