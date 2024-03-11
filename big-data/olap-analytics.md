# OLAP and analytics

* https://sourceforge.net/software/product/Apache-Parquet/alternatives

## SQL

* https://trino.io/
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
* https://kudu.apache.org/ distributed data storage engine that makes fast analytics on fast and changing data easy
  + https://kudu.apache.org/overview.html

## No-SQL (nosql)

* https://en.wikipedia.org/wiki/Comparison_of_OLAP_servers
* https://druid.apache.org/use-cases
* https://kylin.apache.org/
* https://pinot.apache.org/
* [no-sql distributed query engine](https://drill.apache.org/)
* http://duckdb.org/ in-process SQL OLAP database

## Data Lake

* [delta lake](https://github.com/delta-io/delta) featured! in scala for Spark, PrestoDB, Flink, Trino, and Hive
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

## Data Lake articles and comparisons

* [doris vs starrocks](https://www.influxdata.com/comparison/doris-vs-starrocks/)
* [doris vs databricks vs starrocks](https://db-engines.com/en/system/Apache+Doris%3BDatabricks%3BStarRocks)

## Data Lake storage engines

Apache doris and starrocks are forks of the same original code base. Doris 
is now more directed to real-time analysis, starrocks has gained direct query 
capabilities for (lake) referenced data.

### Commercial (No-SQL and analytics)

* https://www.leanxcale.com/#
* https://www.teradata.de/
* https://databricks.com/de/product/data-lakehouse

### Data lineage

* https://de.wikipedia.org/wiki/Data-Lineage
* https://openlineage.io/

## Web Services (commercial)

* https://databricks.com/de/ (bi, data warehouse)
* https://aws.amazon.com/de/redshift/
* https://www.snowflake.com/data-warehouse-workloads/?lang=de
* https://azure.microsoft.com/de-de/services/synapse-analytics/
* https://cloud.google.com/bigquery
  + https://de.wikipedia.org/wiki/BigQuery
* https://www.teradata.de/ (data lake)

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
