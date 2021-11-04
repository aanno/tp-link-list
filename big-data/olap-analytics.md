# OLAP and analytics

## SQL

* https://trino.io/
* [presto - distributed SQL query engine](https://prestodb.io/) with spark support
  + https://prestodb.io/docs/current/connector.html
  + [presto is now trino](https://trino.io/blog/2020/12/27/announcing-trino.html)
  + https://ahana.io/ (commercial support for presto)
  + [AWS athena _is_ presto](https://ahana.io/blog/aws-athena-alternatives/)

## No-SQL

* https://en.wikipedia.org/wiki/Comparison_of_OLAP_servers
* https://druid.apache.org/use-cases
* https://kylin.apache.org/
* https://pinot.apache.org/
* [no-sql distributed query engine](https://drill.apache.org/)

## Data Lake

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

### Commercial (No-SQL and analytics)

* https://www.leanxcale.com/#
* https://www.teradata.de/
* https://databricks.com/de/product/data-lakehouse

## Web Services (commercial)

* https://databricks.com/de/ (bi, data warehouse)
* https://aws.amazon.com/de/redshift/
* https://www.snowflake.com/data-warehouse-workloads/?lang=de
* https://azure.microsoft.com/de-de/services/synapse-analytics/
* https://cloud.google.com/bigquery
  + https://de.wikipedia.org/wiki/BigQuery
* https://www.teradata.de/ (data lake)

# Data integration and enterprise service bus (ESB)

## Camel and Co

* [camel - routing and mediation engine](https://camel.apache.org/)
  + https://camel.apache.org/manual/faq/what-is-camel.html
  + [camel-quarkus](https://camel.apache.org/camel-quarkus/next/reference/index.html)
  + [camel-k - camel on kubernetes](https://camel.apache.org/camel-k/1.6.x/index.html)
* https://servicemix.apache.org/ bundles Activiti, ActiveMQ, Camel, CXF, and Karaf
* [cxf - services (soap, REST, corba) framework](https://cxf.apache.org/)
