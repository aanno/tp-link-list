# (Big) Data Streaming

* https://ably.com/blog/a-look-at-8-top-stream-processing-platforms
* https://www.findbestopensource.com/tagged/stream-processing
* https://www.linkedin.com/pulse/apache-streaming-frameworks-when-use-what-srivathsan-g-r
* https://www.datanami.com/2019/05/30/understanding-your-options-for-stream-processing-frameworks/
* https://blog.mi.hdm-stuttgart.de/index.php/2020/03/09/distributed-stream-processing-frameworks-what-they-are-and-how-they-perform/
* [spark vs hadoop](https://searchdatamanagement.techtarget.com/feature/Hadoop-vs-Spark-Comparing-the-two-big-data-frameworks)
* https://www.upsolver.com/blog/popular-stream-processing-frameworks-compared (dated)

## Articles, Blogs, Link collections

* [many links for data streaming around flink](https://github.com/mikeroyal/Apache-Flink-Guide) dated, featured!
* [explain differences between big data technologies](https://www.geeksforgeeks.org/difference-between-hadoop-and-hive/)
* spark vs flink
  + [heise](https://www.heise.de/ratgeber/Spark-versus-Flink-Rumble-in-the-Big-Data-Jungle-3264705.html)
  + [macrometa](https://www.macrometa.com/event-stream-processing/spark-vs-flink)
  + [medium yousry](https://medium.com/@ansam.yousry/apache-spark-vs-apache-flink-a-comprehensive-comparison-104bf543869a)
* https://www.learningjournal.guru/article/ hadoop, cloud, kafka, featured!
* [dremio blog](https://www.dremio.com/blog/)
* [interesting list who uses arrow](https://arrow.apache.org/powered_by/)

## Blog and News

* https://www.bigdata-insider.de/
* https://www.datanami.com/

## Open Source Projects

* [flink](https://flink.apache.org/)
  + https://nightlies.apache.org/flink/flink-docs-master/docs/deployment/resource-providers/native_kubernetes/
  + [flink on hive data](https://nightlies.apache.org/flink/flink-docs-master/docs/connectors/table/hive/hive_read_write/)
* [beam](https://beam.apache.org/) abstraction over stream processing APIs:
  google cloud dataflow, flink, spark, samza, nemo, hazelcast jet, twister2, python/go direct runner
  + https://beam.apache.org/documentation/runners/capability-matrix/
* [mrjob](https://mrjob.readthedocs.io/en/latest/) abstration over MR for AWS, GCS, Spark, Hadoop, local
* https://github.com/alibaba/jstorm
* https://samza.apache.org/
* https://nemo.apache.org/
* [siddhi](https://siddhi.io/en/v5.1/docs/guides/overview/) event processing and SQL 
  (works with nearly all other streaming frameworks)
  + https://github.com/siddhi-io/siddhi
* [hazelcast](https://github.com/hazelcast/hazelcast) also includes streaming (in-memory)
* https://hazelcast.com/products/jet/ (now included in hazelcast5)
  + https://jet-start.sh/
  + https://www.baeldung.com/hazelcast-jet
  + https://github.com/hazelcast/hazelcast-jet
* [YoMo - serverless framework for real-time data processing and analytics](https://yomo.run/) (QUIC-based)
  + https://github.com/yomorun/yomo
* [twister2](https://twister2.org/) python-based
* [apache flume](https://flume.apache.org/)

## Big data streaming and kubernetes

* https://mr3docs.datamonad.com/ kubernetes scheduler for: (a) hive on hadoop, (b) spark on kubernetes
  + https://www.datamonad.com/post/2020-07-19-why-hive-k8s/
  + https://www.datamonad.com/post/2021-08-18-spark-mr3/

### Spark and Co

* https://spark.apache.org
* https://www.lightbend.com/platform/development/spark

#### Spark Docs

* https://legacy.gitbook.com/book/jaceklaskowski/mastering-apache-spark/details
* https://rockthejvm.com/ great content for Scala, Kotlin, Spark, Flink, ZIO, Akka, featured!

#### Tips and Tricks

* [spark-submit](https://spark.apache.org/docs/latest/submitting-applications.html)
* [spark on yarn](https://spark.apache.org/docs/latest/running-on-yarn.html)
* [spark history server](https://github.com/rangareddy/spark-history-server-docker/) only needed for spark standalone
  + [idea big data tools support for spark](https://www.jetbrains.com/help/idea/big-data-tools-spark-monitoring.html)

#### Spark MLlib

* https://spark.apache.org/mllib/

#### Spark based

* [livy - multiple users on spark cluster](https://livy.incubator.apache.org/)
* [delta lake - storage layer and transactions for spark](https://github.com/delta-io/delta)
  + https://docs.delta.io/latest/index.html

### Hadoop and Co

* [what is yarn](https://blog.cloudera.com/apache-hadoop-yarn-concepts-and-applications/) yarn scheduler
  + https://hadoop.apache.org/docs/stable/hadoop-yarn/hadoop-yarn-site/YARN.html
* [hadoop only runs on java 11](https://cwiki.apache.org/confluence/display/HADOOP/Hadoop+Java+Versions)
* [impala - analytic db for hadoop](https://impala.apache.org/) analytic BI and SQL layer, uses HDFS (or HBase) and the hive metastore
  + https://impala.apache.org/docs/build/asf-site-html/topics/impala_hadoop.html
* [cascading - stream processing on hadoop/tez](https://github.com/cwensel/cascading) java
* [atlas](https://atlas.apache.org/#/) governance and compliance
* [ranger](https://ranger.apache.org/) monitor and manage data security

#### HDFS

* [ozone - object store for hadoop](https://ozone.apache.org/)
  alternative implementation of HDFS (if you don't need hadoop), provides an S3 layer

### Kafka and Co

* [kafka use cases](https://www.kai-waehner.de/blog/2020/12/16/top-5-event-streaming-apache-kafka-use-cases-2021-edge-hybrid-cloud-cybersecurity-machine-learning-service-mesh/)
* [kafka schema registry](https://docs.confluent.io/platform/current/schema-registry/index.html)
* [kafka streams concepts](https://docs.confluent.io/platform/current/streams/concepts.html)
  + [kafka streams primer](https://www.confluent.io/blog/kafka-streams-tables-part-1-event-streaming/)
  + [kafka streams overview](https://docs.confluent.io/platform/current/streams/index.html)
  + [kafka streams architecture](https://docs.confluent.io/platform/current/streams/architecture.html)
* [kafka connect - in and out of kafka queues](https://docs.confluent.io/platform/current/connect/index.html)
* [strimzi - kafka on kubernetes](https://strimzi.io/) (includes 'kafka bridge' - REST API for kafka)
* [Red Hat AMQ - commercial strimzi](https://developers.redhat.com/products/amq/overview)
  + [try for free](https://developers.redhat.com/products/red-hat-openshift-streams-for-apache-kafka/getting-started
  + [`rhoas` CLI](https://access.redhat.com/documentation/en-us/red_hat_openshift_streams_for_apache_kafka/1/guide/f520e427-cad2-40ce-823d-96234ccbc047)
* [Kafka DSL and Joins](https://kafka.apache.org/20/documentation/streams/developer-guide/dsl-api.html)
  + https://supergloo.com/kafka-streams/kafka-streams-joins-examples/
* https://hevodata.com/learn/kafka-big-data/
* https://nexocode.com/blog/posts/apache-kafka-architecture-for-big-data-processing/

#### Kafka integrationn with x

* https://spark.apache.org/docs/latest/streaming-kafka-0-10-integration.html
* https://www.baeldung.com/kafka-flink-data-pipeline

#### Kafka extensions

* [ksqldb - DB based on kafka streaming, e.g. foreign key joins](https://ksqldb.io/)
  + https://github.com/confluentinc/ksql
  + https://www.confluent.de/blog/data-enrichment-with-kafka-streams-foreign-key-joins/
* https://github.com/kcctl/kcctl (CLI for kafka connect)
* [kafka backup](https://github.com/itadventurer/kafka-backup) old
  + [introduction to kafka backup](https://medium.com/@anatolyz/introducing-kafka-backup-9dc0677ea7ee)

#### Example apps

* https://github.com/rh-bu-cs-rhosak-iot
  + https://developers.redhat.com/devnation/tech-talks/kafka-at-edge

### Pulsar and Co

* [pulsar](https://pulsar.apache.org/) Cloud-Native, Distributed Messaging 
* [bookkeeper - storage service](https://bookkeeper.apache.org/)
* [StreamNative - pulsar on kubernetes](https://streamnative.io/)
  + https://docs.streamnative.io/platform/v1.1.0/quickstart
  + [pulsar/streamnative integrations](https://hub.streamnative.io/)
* [compare pulsar to kafka](https://www.kai-waehner.de/blog/2020/06/09/apache-kafka-versus-apache-pulsar-event-streaming-comparison-features-myths-explored/)
* https://pulsar-summit.org/
* https://pulsar.apache.org/docs/en/concepts-messaging/
* Transaction support
  + https://github.com/apache/pulsar/issues/2664
  + https://de.slideshare.net/streamnative/transaction-preview-of-apache-pulsar
  + https://medium.com/@sjwang_50864/apache-pulsar-helps-tencent-process-tens-of-billions-of-financial-transactions-efficiently-with-8b435f177023

## Reactive streams

* [rsocket](https://rsocket.io/)

## Stream DB changes

* https://debezium.io/
  + https://debezium.io/documentation/reference/development/engine.html

## Web Service (commercial)

* https://fivetran.com/


## Click stream analytics (mostly commercial)

* https://miso.ai/docs/quickstart/ interesting for supported catalogs and stream data sources

