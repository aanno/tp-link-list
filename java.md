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

## QS

* https://jqassistant.org/
  + https://www.heise.de/developer/artikel/Dirk-Mahler-ueber-automatisierte-Codeanalyse-mit-jQAssistant-3884825.html

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
  
## JVM

### Serialization

* https://github.com/RuedigerMoeller/fast-serialization
* https://github.com/EsotericSoftware/kryo

### Reactive file handling

* https://dzone.com/articles/rxjava-faq-loading-files-with-backpressure
* https://simonbasle.github.io/2017/10/file-reading-in-reactor/

### Process handling

* https://github.com/brettwooldridge/NuProcess
* https://github.com/okapies/rx-process

### Hot code swap

* http://javacolors.blogspot.ch/2015/09/the-great-alternative-to-jrebel.html
* https://dzone.com/articles/spring-boot-application-live-reload-hot-swap-with
* https://docs.spring.io/spring-boot/docs/current/reference/html/howto-hotswapping.html
* https://dzone.com/articles/spring-boot-application-live-reload-hot-swap-with
* https://docs.spring.io/spring-boot/docs/current/reference/html/using-boot-devtools.html

#### Implementations

* https://github.com/spring-projects/spring-loaded
* http://hotswapagent.org/
  + https://github.com/HotswapProjects/HotswapAgent
  + http://hotswapagent.org/mydoc_plugin_spring.html
* https://github.com/dcevm/dcevm
* https://github.com/fakereplace/fakereplace
* https://github.com/ifedorenko/com.ifedorenko.m2e.sourcelookup (eclipse and maven)

