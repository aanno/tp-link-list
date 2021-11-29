# (Big) Data Streaming

* https://ably.com/blog/a-look-at-8-top-stream-processing-platforms
* https://www.findbestopensource.com/tagged/stream-processing
* https://www.linkedin.com/pulse/apache-streaming-frameworks-when-use-what-srivathsan-g-r
* https://www.datanami.com/2019/05/30/understanding-your-options-for-stream-processing-frameworks/
* https://blog.mi.hdm-stuttgart.de/index.php/2020/03/09/distributed-stream-processing-frameworks-what-they-are-and-how-they-perform/
* [spark vs hadoop](https://searchdatamanagement.techtarget.com/feature/Hadoop-vs-Spark-Comparing-the-two-big-data-frameworks)
* https://www.upsolver.com/blog/popular-stream-processing-frameworks-compared (dated)

## Blog and News

* https://www.bigdata-insider.de/
* https://www.datanami.com/

## Open Source Projects

* https://flink.apache.org/
  + https://nightlies.apache.org/flink/flink-docs-master/docs/deployment/resource-providers/native_kubernetes/
* https://beam.apache.org/ (abstraction over over stream processing APIs:
  google cloud dataflow, flink, spark, samza, nemo, hazelcast jet, twister2, python/go direct runner)
  + https://beam.apache.org/documentation/runners/capability-matrix/
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

## Big data streaming and kubernetes

* https://mr3docs.datamonad.com/ kubernetes scheduler for: (a) hive on hadoop, (b) spark on kubernetes
  + https://www.datamonad.com/post/2020-07-19-why-hive-k8s/
  + https://www.datamonad.com/post/2021-08-18-spark-mr3/

### Spark and Co

* [livy - multiple users on spark cluster](https://livy.incubator.apache.org/)
* [delta lake - storage layer and transactions for spark](https://github.com/delta-io/delta)
  + https://docs.delta.io/latest/index.html

### Hadoop and Co

* [what is yarn](https://blog.cloudera.com/apache-hadoop-yarn-concepts-and-applications/)
* [parquet - columnar storage format](https://parquet.apache.org/)
* [impala - analytic db for hadoop](https://impala.apache.org/)
* [kudu - distributed data storage engine](https://kudu.apache.org/) (with impala integration)
* [ozone - object store for hadoop](https://ozone.apache.org/)
* [cascading - stream processing on hadoop/tez](https://www.cascading.org/projects/cascading/)
  + [lingual - SQL on cascading](https://www.cascading.org/projects/lingual/)
  + [get started](http://docs.cascading.org/impatient/)
  + https://www.cascading.org/news/
  + https://www.cascading.org/extensions/

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

#### Kafka integrationn with x

* https://spark.apache.org/docs/latest/streaming-kafka-0-10-integration.html
* https://www.baeldung.com/kafka-flink-data-pipeline

#### Kafka extensions

* [ksqldb - DB based on kafka streaming, e.g. foreign key joins](https://ksqldb.io/)
  + https://github.com/confluentinc/ksql
  + https://www.confluent.de/blog/data-enrichment-with-kafka-streams-foreign-key-joins/
* https://github.com/kcctl/kcctl (CLI for kafka connect)

#### Example apps

* https://github.com/rh-bu-cs-rhosak-iot
  + https://developers.redhat.com/devnation/tech-talks/kafka-at-edge

### Pulsar and Co

* https://pulsar.apache.org/
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
