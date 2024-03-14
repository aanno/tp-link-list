# big data congestion (DAG task systems)

* [inlong](https://inlong.apache.org/) big data integration: cache, pulsar, kafka, iceberg, ...
* [dolphin scheduler](https://github.com/apache/incubator-dolphinscheduler): DAG workflow scheduling system
* [gobblin](https://github.com/apache/incubator-gobblin) big data ingestion onto hadoop
* [hadoop tez - DAG of tasks for processing data](https://tez.apache.org/) old, yarn based
* [hadoop oozie](https://oozie.apache.org/) old
* [airflow](https://airflow.apache.org/) python, featured
* [dbt](https://github.com/dbt-labs/dbt-core) transform their data by simply writing select statements
  + [docs](https://docs.getdbt.com/docs/core/connect-data-platform/about-core-connections)
  + https://www.getdbt.com/
* https://nifi.apache.org/index.html
* https://azkaban.github.io/
  + https://github.com/azkaban/azkaban
* [miniwdl](https://github.com/chanzuckerberg/miniwdl) tasks for podman
  + [WDL spec](https://github.com/openwdl/wdl/blob/main/versions/development/SPEC.md)
* [dolt](https://github.com/dolthub/dolt) git for big data with mySQL interface
  + https://thenewstack.io/dolt-a-relational-database-with-git-like-cloning-features/
* https://en.wikipedia.org/wiki/Slurm_Workload_Manager


## Visualization

* https://elise-deux.medium.com/the-list-of-graph-visualization-libraries-7a7b89aab6a6
* https://speckyboy.com/open-source-javascript-data-chart-libraries/

* [kitware open source](https://www.kitware.com/open-source/)
  + https://vtk.org/ Process images and create 3D computer graphics
    - https://kitware.github.io/vtk-js/
  + https://trame.kitware.com/ Visual Analytics (in Browser)
  + https://www.paraview.org/ post-processing visualization engine
    - https://pvw.kitware.com/ paraviewweb

### Interactive Visualization and Analysis (like Tableau)

* https://docs.kanaries.net/articles/tableau-open-source-alternatives
* https://hevodata.com/learn/tableau-open-source/
* https://nikkilopez2.medium.com/top-5-free-open-source-alternatives-to-tableau-for-data-analytics-ff67350a5db8

### Interactive Visualization software

* [mlflow](https://mlflow.org) featured!
  Experiment tracking, Visualization, Generative AI, Evaluation, Models
* [superset](https://superset.apache.org/) featured! (data analysis, graphs)
* [shiny](https://shiny.posit.co/) for R and python
  + [shiny and arrow](https://posit.co/blog/shiny-and-arrow/)
* [streamlit](https://streamlit.io/) python data scripts into web apps
* [bokeh](http://bokeh.org/) python data scripts into Applications, Dashboards, Exploration, Streaming, Websites
* [dash](https://dash.plotly.com/tutorial) Low-Code Python Data Apps
  + https://github.com/plotly/dash
* [RATH](https://kanaries.net/home?ref=docs)
  + https://github.com/kanaries/rath
* [graphic walker](https://github.com/Kanaries/graphic-walker)
  + https://docs.kanaries.net/graphic-walker
* [redash](https://github.com/getredash/redash) (social visualization)
* [metabase](https://www.metabase.com/)
* [knime](https://www.knime.com/knime-analytics-platform)
* [rill](https://github.com/rilldata/rill) dashboards for data lakes, based on duckdb
* [perspective](https://perspective.finos.org/) interactive analytics and data visualization component in js
* [rawgraphs](https://www.rawgraphs.io/)
* [grafana](https://grafana.com/)
* [interactive pivot table](https://pivottable.js.org/examples/)
  + https://en.wikipedia.org/wiki/Pivot_table
* [knowage suite](https://www.knowage-suite.com/site/licensing/community-edition/) semi-commercial
  + https://github.com/KnowageLabs/Knowage-Server
* [qlikview](https://www.qlik.com/de-de/products/qlikview) commercial
* [plotly dash](https://plotly.com/dash/) commercial
* [scichart](https://www.scichart.com/javascript-chart-features/) commercial, WebGL & WebAssembly in the browser

### Visualization SaaS

* [observable](https://observablehq.com/) best dashboards are built with code
  + [docs](https://observablehq.com/documentation/cells/observable-javascript)
* [arrows](https://neo4j.com/labs/arrows/) visualize graphs for free
  + https://arrows.app

### Plots and Charts

see also: dsl.md -> Visualization

#### Python

* [matplotlib](https://matplotlib.org/stable/api/_as_gen/matplotlib.pyplot.plot.html)
* [seaborn](https://seaborn.pydata.org/) statistical data visualization

#### Java

* https://analyticsindiamag.com/top-7-scala-libraries-for-data-visualisation/

* [XChart](https://knowm.org/open-source/xchart/)
* [Chart Construction Kit](https://jcckit.sourceforge.net/) old
* [krayon](https://github.com/JuulLabs/krayon) kotlin, low-level
* [EvilPlot](https://cibotech.github.io/evilplot/) scala combinators for graphics
  + https://cibotech.github.io/evilplot/plot-catalog.html
  + https://medium.com/@CiboEng/evilplot-a-combinator-based-plotting-library-for-scala-4531f00208

#### Julia

* https://docs.juliaplots.org/latest/tutorial/
  + https://github.com/JuliaPlots/Plots.jl
* [Vega.jl](https://johnmyleswhite.github.io/Vega.jl/gettingstarted.html)
* [Gladfy.jl](https://towardsdatascience.com/statistical-plotting-with-julia-gadfly-jl-39582f91d7cc)
  + https://github.com/GiovineItalia/Gadfly.jl
  + https://www.cs.uic.edu/~wilkinson/TheGrammarOfGraphics/GOG.html
* [VegaLite.jl](https://towardsdatascience.com/statistical-plotting-with-julia-vegalite-jl-ad6fda253215)
  + https://www.queryverse.org/VegaLite.jl/stable/

## Python libs

* https://pandas.pydata.org/
  + https://pandas.pydata.org/pandas-docs/stable/user_guide/io.html
  + https://www.geeksforgeeks.org/adding-new-column-to-existing-dataframe-in-pandas/
* [arrow](https://arrow.apache.org/docs/index.html) alternative to panda, cross platform and for 
  C, C++, C#, Go, Java, JavaScript, Julia, MATLAB, Python, R, Ruby, and Rust
  + https://arrow.apache.org/docs/python/csv.html
  + https://github.com/apache/arrow
* https://docs.dask.org/en/latest/
* https://github.com/quiltdata/quilt versioned big data on s3
  + https://open.quiltdata.com/
