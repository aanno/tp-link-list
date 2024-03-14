# OLAP and analytics

## learning and courses

* https://datascientest.com/de/# commercial
  + https://datascientest.com/de/weiterbildung-machine-learning-engineer (good for finding other tools)

## data formats

* https://sourceforge.net/software/product/Apache-Parquet/alternatives

### (open) file formats

* [parquet vs arrow](https://medium.com/@diehardankush/comparing-data-storage-parquet-vs-arrow-aa2231e51c8a)

* [parquet - columnar storage format](https://parquet.apache.org/)
  + [docs](https://parquet.apache.org/docs/)
  + [deep dive](https://learncsdesigns.medium.com/understanding-apache-parquet-d722645cfe74)
  + [file format](https://data-mozart.com/parquet-file-format-everything-you-need-to-know/)
* [orc](https://orc.apache.org/) native used in hive

### (open) table formats

* https://www.onehouse.ai/blog/apache-hudi-vs-delta-lake-vs-apache-iceberg-lakehouse-feature-comparison

* [iceberg](https://iceberg.apache.org/) for spark, flink, hive, trino, presto, dremio, starrocks, ...
* [hudi](https://hudi.apache.org/) transactional data lake platform that brings database and data warehouse capabilities
  + [Build Open Lakehouse using Apache Hudi & dbt](https://hudi.apache.org/blog/2022/07/11/build-open-lakehouse-using-apache-hudi-and-dbt/)
  + [hudi zero to one](https://blog.datumagic.com/p/apache-hudi-from-zero-to-one-910)
* [paimon](https://paimon.apache.org/docs/master/) lake format that enables building a Realtime Lakehouse Architecture with Flink and Spark
* [arrow as RPC](https://arrow.apache.org/docs/format/Flight.html)
  + https://arrow.apache.org/faq/

## Metastores

* [Hive Metastore](https://cwiki.apache.org/confluence/display/hive/design#Design-Metastore)
* [HCatalog](https://cwiki.apache.org/confluence/display/Hive/HCatalog+UsingHCat)
* [nessie](https://projectnessie.org/) Transactional Catalog for Data Lakes, git for data lakes

## SQL

* [trino](https://trino.io/)
* [presto - distributed SQL query engine](https://prestodb.io/) with spark support
  + https://prestodb.io/docs/current/connector.html
  + [presto is now trino](https://trino.io/blog/2020/12/27/announcing-trino.html)
  + https://ahana.io/ (commercial support for presto)
  + [AWS athena _is_ presto](https://ahana.io/blog/aws-athena-alternatives/)
  + https://github.com/prestodb/presto
* [OmniSciDB aka MapD - GPU accelerated RDB](https://github.com/omnisci/omniscidb)
  + https://docs.omnisci.com/v5.3.0/index.html
  + https://www.omnisci.com/
* https://www.monetdb.org/ hybrid transactional/analytical processing
* [phoenix - OLTP and operational analytics](https://phoenix.apache.org/) transactional SQL layer for HBase
* [hue](https://gethue.com/) UI for SQL and data warehouses, featured!

## No-SQL (nosql)

* https://en.wikipedia.org/wiki/Comparison_of_OLAP_servers

* https://druid.apache.org/use-cases
* https://kylin.apache.org/
* https://pinot.apache.org/
* [no-sql distributed query engine](https://drill.apache.org/)
* http://duckdb.org/ in-process SQL OLAP database
* [kudu - distributed data storage engine](https://kudu.apache.org/) (with impala integration)
  + https://kudu.apache.org/overview.html
* [hbase](https://hbase.apache.org/) random, realtime read/write access to your Big Data
  + [docs](https://hbase.apache.org/book.html)

### No-SQL SaaS

* [AWS dynamodb](https://aws.amazon.com/de/dynamodb/)
  + [onetable](https://doc.onetable.io/start/quick-tour/) API for dynamodb, JS
  + https://onetable.dev/

## Data Lake

### Data Lake SaaS (commercial)

* [dremio](https://www.dremio.com/) currently best-in-class
  + [docs, what is dremio](https://docs.dremio.com/current/)
* [databricks](https://databricks.com/de/product/data-lakehouse) sparks, delta lake, mlflow
* [onehouse](https://www.onehouse.ai/) Universal Data Lakehouse, hudi based
* [snowflake](https://www.snowflake.com/en/) data cloud, query engine
* [starburst](https://www.starburst.io/) End-to-end analytics platform, trino based
* [AWS EMR](https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-release-components.html)
  Delta Lake, Ganglia, Hadoop, HBase, HCatalog, Hive, Hudi, Hue, Iceberg, Livy, MXNet, Oozie, Phoenix, Pig, ...
  + [Data Lakes on AWS](https://itnext.io/building-data-lakes-on-aws-with-kafka-connect-debezium-apicurio-registry-and-apache-hudi-b4da0268dce?gi=b20d75123051)

* https://www.leanxcale.com/# transactional DB, SQL
* https://www.teradata.de/

### Data Lake Software

* [delta lake](https://github.com/delta-io/delta) featured! storage framework in scala for Spark, PrestoDB, Flink, Trino, and Hive
  + https://delta.io/
* https://kylo.io/ (open source data lake management)
* https://www.dremio.com/open-source/
  + https://arrow.apache.org/ in-memory analytics
  + https://arrow.apache.org/docs/format/Flight.html RCP format
  + https://projectnessie.org/ data ops for data lake (binder, iceberg, deltalake)
    - https://www.dremio.com/subsurface/nessie-git-for-data-lakes/
* https://www.talend.com/de/products/talend-open-studio/
* [delta sharing protocol](https://github.com/delta-io/delta-sharing) panda and spark support
  + https://github.com/delta-io/delta-sharing reference implementation
* [lakehouse architecture - meta data lake](https://delta.io/)
* [hudi - transactions, record-level updates/deletes and change streams](https://hudi.apache.org/)
  + https://hudi.apache.org/docs/cloud/
* [alluxio - virtual distributed storage system](https://www.alluxio.io/)
  + https://docs.alluxio.io/os/user/stable/en/Overview.html
  + https://github.com/Alluxio/alluxio
* [airbyte - replicate data as streams](https://airbyte.io/why-airbyte)
  + https://github.com/airbytehq/airbyte

### Data Lake articles and comparisons

* [doris vs starrocks](https://www.influxdata.com/comparison/doris-vs-starrocks/)
* [doris vs databricks vs starrocks](https://db-engines.com/en/system/Apache+Doris%3BDatabricks%3BStarRocks)

### Data Lake storage engines (leading edge)

Apache doris and starrocks are forks of the same original code base. Doris 
is now more directed to real-time analysis, starrocks has gained direct query 
capabilities for (lake) referenced data.

clickhouse is currently best-in-class.

* [starrocks](https://www.starrocks.io/)
  + [docs](https://docs.starrocks.io/docs/introduction/StarRocks_intro/)
  + https://github.com/StarRocks/starrocks
* [doris](https://doris.apache.org/) modern data warehouse for real-time analytics
  + [ecosystem](https://doris.apache.org/ecosystem/cluster-management/) cluster management - connectors - data loading
  + https://github.com/apache/doris
* [clickhouse](https://clickhouse.com)
  + [docs](https://clickhouse.com/docs/en/intro) high-performance, column-oriented SQL database management system (DBMS)

### Data lineage

* https://de.wikipedia.org/wiki/Data-Lineage
* https://openlineage.io/

## data warehouse

### data warehouse SaaS (commercial)

* https://databricks.com/de/ (bi, data warehouse)
* https://aws.amazon.com/de/redshift/
* https://www.snowflake.com/data-warehouse-workloads/?lang=de
* https://azure.microsoft.com/de-de/services/synapse-analytics/
* https://cloud.google.com/bigquery
  + https://de.wikipedia.org/wiki/BigQuery

### data warehouse software

* [apache hive](https://hive.apache.org/) hadoop based, HS2, HSM, ACID, compaction, replication, LLAP
  + [hive on docker](https://hshirodkar.medium.com/apache-hive-on-docker-4d7280ac6f8e)

## Monitoring Solutions

* [ganglia](https://github.com/ganglia/) old?
* [skywalking](https://skywalking.apache.org/) featured

# Data integration and enterprise service bus (ESB)

* https://www.openintegrationhub.org/einsatzszenarien/ (also data lake?)
  + https://github.com/openintegrationhub
* https://servicemix.apache.org/ bundles Activiti, ActiveMQ, Camel, CXF, and Karaf
* [cxf - services (soap, REST, corba) framework](https://cxf.apache.org/)
* https://www.elastic.io/ (commercial)

## Camel and Co

* [camel - routing and mediation engine](https://camel.apache.org/)
  + https://camel.apache.org/manual/faq/what-is-camel.html
  + [camel-quarkus](https://camel.apache.org/camel-quarkus/next/reference/index.html)
  + [camel-k - camel on kubernetes](https://camel.apache.org/camel-k/1.6.x/index.html)
  + [routes](https://camel.apache.org/manual/routes.html)
  + [processor](https://camel.apache.org/manual/processor.html)
  + [message exchange(https://camel.apache.org/manual/exchange.html)

### Camel tutorials

* [migrate SOAP to REST](https://developers.redhat.com/blog/2018/07/24/migrate-soap-to-rest-with-camel#)
* [SOAP to REST example](https://github.com/fabric8-quickstarts/spring-boot-camel-soap-rest-bridge)
* [Open Source Integration](https://dzone.com/articles/open-source-integration-apache) IBM Fuse
* [SOAP transformation](https://dzone.com/articles/soap-transformation-with-apache-camel-java-dsl)
* [IBM Fuse overview](https://developers.redhat.com/products/fuse/overview)
