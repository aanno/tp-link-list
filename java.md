# Java

* https://dev.java/
* https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/CompletionStage.html

## JavaEE

* https://www.heise.de/developer/meldung/Java-EE-8-auf-der-Zielgeraden-3762047.html

## Blogs

* [gunnar morling](https://www.morling.dev/)
* https://inside.java/
* https://snyk.io/jvm-ecosystem-report-2021/
* https://www.microdoc.com/de/techtalk/

## Java desktop apps (swing-based, web start, really)

* http://griffon-framework.org/
  + https://github.com/pledbrook/lazybones
  + https://pivot.apache.org/index.html
  + https://github.com/mabe02/lanterna
  + https://github.com/griffon/griffon-kotlin-plugin (also for kotlin)

## Language Extensions

* https://manifold.systems/ (meta-programming, class extensions, structural typing)
* http://www.vavr.io/ (pattern matching, monads, collections, monadic for)
  + https://docs.vavr.io/
* http://docs.paralleluniverse.co/quasar/ (first coroutine attempt, also for kotlin)
* http://docs.paralleluniverse.co/comsat/ (http, db for quasar)
* http://www.paralleluniverse.co/ (also: data grid, in-memory db)
* https://projectlombok.org/ (annotation to reduce code)

## Libs

* https://github.com/square/okio (io)
* https://github.com/JetBrains/intellij-deps-trove4j (high performance collection api)
  + https://bitbucket.org/trove4j/trove
* https://github.com/oracle/oracle-db-examples/tree/master/java/AoJ (preview of oracle's async JDBC)
* [feature flipping for java](https://github.com/ff4j/ff4j)
* [java library of graph theory](https://jgrapht.org/)
* [modern collections](https://guava.dev/)

## Testing

* https://www.testcontainers.org/

### Table output on console

* https://github.com/vdmeer/asciitable
* https://github.com/JakeWharton/picnic
* https://github.com/minhhungit/ConsoleTableExt

### Openjfx

* https://openjfx.io/openjfx-docs/#install-javafx

### Mail

* http://www.simplejavamail.org/features.html

## QS

* https://jqassistant.org/
  + https://www.heise.de/developer/artikel/Dirk-Mahler-ueber-automatisierte-Codeanalyse-mit-jQAssistant-3884825.html

### Reactive vs traditional

* https://stackoverflow.com/questions/42299455/spring-webflux-and-reading-from-database

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

* [tools](https://github.com/openjdk/jdk17/tree/master/src/utils) hsdis, IdealGraphVisualizer
* [overview of new language features per version](https://www.jetbrains.com/help/idea/supported-java-versions.html)

## GraalVM

* https://www.graalvm.org/
  + https://www.graalvm.org/reference-manual/native-image/
* [spring-native](https://docs.spring.io/spring-native/docs/current/reference/htmlsingle/)
  + https://spring.io/blog/2021/03/11/announcing-spring-native-beta
  + https://www.heise.de/news/Java-Framework-Native-Spring-Anwendungen-laufen-ohne-die-JVM-5078681.html

### Java 17 LTS

* https://developer.oracle.com/developer-live/java-innovations-sep-2021/
* https://www.infoq.com/news/2021/07/java-17-glass/
* https://www.heise.de/news/Programmiersprache-Java-17-erweitert-Pattern-Matching-und-versiegelt-Klassen-6191321.html
* https://blogs.oracle.com/javamagazine/migrate-to-java-17
* https://www.baeldung.com/java-sealed-classes-interfaces

### Implementations

* https://adoptopenjdk.net/
* https://adoptium.net/
  + [build adoptium RPMs](https://githubmemory.com/repo/aahlenst/adoptium-packages-linux)
  + [build adoptium on linux](https://github.com/adoptium/installer/tree/master/linux#readme)
* https://www.graalvm.org/
* http://zulu.org/download/
* jetbrains/idea
  + https://github.com/JetBrains/JetBrainsRuntime
  + https://confluence.jetbrains.com/display/JBR/JetBrains+Runtime
  + [jvm chromium embedded](https://plugins.jetbrains.com/docs/intellij/jcef.html)
  + [jcef replaces javafx](https://blog.jetbrains.com/platform/2020/07/javafx-and-jcef-in-the-intellij-platform/)
  + [jcef - Java Chromium Embedded Framework](https://plugins.jetbrains.com/docs/intellij/jcef.html)
  + [DCEVM - hotswapping vm](https://blog.jetbrains.com/idea/2013/07/get-true-hot-swap-in-java-with-dcevm-and-intellij-idea/)
    - https://dcevm.github.io/ (java 8 and 11)
    - https://github.com/TravaOpenJDK/trava-jdk-11-dcevm
  + https://ssw.jku.at/dcevm/
* [sap-machine](https://github.com/SAP/SapMachine)
  + https://github.com/SAP/SapMachine/wiki/Features-Contributed-by-SAP
  + https://github.com/SAP/SapMachine/wiki/Differences-between-SapMachine-and-OpenJDK

### Profiler

* https://github.com/jvm-profiling-tools
* https://github.com/jvm-profiling-tools/async-profiler
  + https://www.jetbrains.com/help/idea/async-profiler.html
* http://findtheflow.io (old)
  + http://findtheflow.io/docs/usecases.html
* [eclipse memory analyser](https://projects.eclipse.org/projects/tools.mat)

### Security scanner and code analyzers

* [eclipse steady](https://github.com/eclipse/steady) static code analyzer for java and python

#### Flight recorder (jfr) and JDK mission control (jmc)

* [health-report](https://github.com/flight-recorder/health-report) jfr event streaming
* https://github.com/thegreystone/jmc-tutorial
* https://www.baeldung.com/java-flight-recorder-monitoring

##### jfr and testing

* https://github.com/quick-perf/quickperf
* https://github.com/moditect/jfrunit

### GC (garbage collector)

* https://wiki.openjdk.java.net/display/shenandoah/Main

### Java module system

* https://github.com/moditect/moditect

### Osgi

* [karaf - modulith runtime](https://karaf.apache.org/) includes: cellar - clustered jvms, 
  cave - artifact repository, and decanter - business activity monitoring (BAM)

### Docker

* [heap size inside docker container](https://www.baeldung.com/ops/docker-jvm-heap-size)

### Serialization

* https://github.com/RuedigerMoeller/fast-serialization
* https://github.com/EsotericSoftware/kryo

### Reactive Streams

* http://reactors.io/ (new framework)
* https://docs.spring.io/spring-integration/docs/current/reference/html/reactive-streams.html (reactive stream in spring-integration)

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
  + [hotswap agent for idea](http://hotswapagent.org/mydoc_setup_intellij_idea.html)
  + https://github.com/HotswapProjects/HotswapAgent
  + http://hotswapagent.org/mydoc_plugin_spring.html
* https://github.com/dcevm/dcevm
* https://github.com/fakereplace/fakereplace
* https://github.com/ifedorenko/com.ifedorenko.m2e.sourcelookup (eclipse and maven)

# Spring

* https://www.baeldung.com/spring-aop-annotation

## Security

* https://www.baeldung.com/get-user-in-spring-security

### OAuth2

* https://spring.io/guides/tutorials/spring-boot-oauth2/
* https://projects.spring.io/spring-security-oauth/docs/oauth2.html
* https://stackoverflow.com/questions/31338742/spring-security-how-to-get-oauth2-userinfo-during-sso-logged-in
