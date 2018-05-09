# Java

* https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/CompletionStage.html

## JavaEE

* https://www.heise.de/developer/meldung/Java-EE-8-auf-der-Zielgeraden-3762047.html

## Java desktop apps (swing-based, web start, really)

* http://griffon-framework.org/
  + https://github.com/pledbrook/lazybones
  + https://pivot.apache.org/index.html
  + https://github.com/mabe02/lanterna
  + https://github.com/griffon/griffon-kotlin-plugin (also for kotlin)

## Language Extensions

* https://manifold.systems/ (meta-programming, class extensions, structural typing)
* http://www.vavr.io/ (pattern matching, monads, collections, monadic for)
* http://docs.paralleluniverse.co/quasar/ (first coroutine attempt, also for kotlin)
* http://docs.paralleluniverse.co/comsat/ (http, db for quasar)
* http://www.paralleluniverse.co/ (also: data grid, in-memory db)

## Libs

* https://github.com/square/okio (io)
* https://github.com/JetBrains/intellij-deps-trove4j (high performance collection api)
  + https://bitbucket.org/trove4j/trove
* https://github.com/oracle/oracle-db-examples/tree/master/java/AoJ (preview of oracle's async JDBC)

## Spring

* https://ordina-jworks.github.io/spring/2017/06/07/Spring-IO-2017-The-Spring-ecosystem.html
* https://spring.io/blog/2013/11/01/exception-handling-in-spring-mvc
* http://blog.codeleak.pl/2013/11/controlleradvice-improvements-in-spring.html
* https://www.heise.de/developer/meldung/Spring-beginnt-Projekt-fuer-Serverless-Computing-3765938.html
* https://spring.io/guides/gs/accessing-data-jpa/

### Reactive vs traditional

* https://stackoverflow.com/questions/42299455/spring-webflux-and-reading-from-database

### Quickstart 

* https://start.spring.io/
* https://github.com/spring-cloud-samples
* https://github.com/hantsy/spring-reactive-sample (also for kotlin)
* https://spring.io/blog/2015/07/14/microservices-with-spring
  + https://github.com/paulc4/microservices-demo


### Subprojects

* https://projects.spring.io/spring-cloud/
  + https://github.com/spring-cloud-samples
* https://docs.spring.io/spring-cloud-dataflow-samples/docs/current/reference/htmlsingle/
* http://www.baeldung.com/the-persistence-layer-with-spring-data-jpa

## Build tools

### Mvn

* https://bintray.com/docs/usermanual/formats/formats_mavenrepositories.html (adding bintray repo)
* https://github.com/spring-cloud/spring-cloud-config/blob/master/.settings.xml (adding spring)

### Gradle

* https://docs.gradle.org/current/release-notes.html
* https://plugins.gradle.org/plugin/com.gradle.build-scan
* https://github.com/mdietrichstein/gradle-offline-dependencies-plugin
  (download all dependencies of a gradle project)
* https://docs.gradle.org/current/userguide/publishing_maven.html
  (could perhaps also be used to transform the gradle to a pom.xml dependency)
