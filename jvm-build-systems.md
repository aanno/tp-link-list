# JVM build systems

## Incremental compiler

* https://github.com/sbt/zinc (scala (does it work for java?))
* https://stackoverflow.com/questions/2590579/can-standard-sun-javac-do-incremental-compiling (org.eclipse.jdt.core.JDTCompilerAdapter)
* [gradle incremental builds](https://docs.gradle.org/current/userguide/performance.html)
* http://takari.io/2014/10/16/incremental-compilation.html
* [sjavac](https://stackoverflow.com/questions/26424759/what-is-sjavac-who-is-it-for-and-how-do-i-use-it)

## Embedding tomcat

* https://devcenter.heroku.com/articles/create-a-java-web-application-using-embedded-tomcat
* https://metamug.com/article/java/generate-build-run-webapp-maven-command-line-tomcat.html
* https://www.geeksforgeeks.org/embedding-tomcat-server-in-maven-project/

## Java centered

### Maven

#### Maven Dev and Maven 4

* https://github.com/apache/maven-sources/
* https://maven.apache.org/scm.html
* https://github.com/apache/maven
* https://github.com/github/maven-plugins

* https://maarten.mulders.it/2020/11/whats-new-in-maven-4/
* https://maven.apache.org/plugins/maven-wrapper-plugin/
  + https://github.com/takari/maven-wrapper

#### Dependencies

* https://stackoverflow.com/questions/60411162/how-can-i-transform-top-level-dependencies-from-mvn-dependencytree-into-a-list

#### Build only needed problem with maven

* http://takari.io/book/40-lifecycle.html#overview
* https://github.com/khmarbaise/incremental-module-builder
* https://issues.apache.org/jira/browse/MCOMPILER-205

* https://stackoverflow.com/questions/15405413/maven-building-only-changed-files
* https://stackoverflow.com/questions/13702531/maven-build-to-generate-only-changed-artifact

#### Interesting Plugins

* https://github.com/mvndaemon/mvnd (alternative to mvn)
* https://maven.apache.org/plugins/index.html
* https://maven.apache.org/plugins/maven-toolchains-plugin/

#### Transition to gradle

* https://docs.gradle.org/current/userguide/migrating_from_maven.html
* [gradle script that reads Maven dependencies](https://gist.github.com/jashatton/3237323)
* https://github.com/sagioto/maven2gradle
* [gradle-maven-exec-plugin](https://github.com/dkorotych/gradle-maven-exec-plugin)
* [gradle-pom-plugin](https://github.com/xvik/gradle-pom-plugin)
