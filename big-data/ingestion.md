# big data congestion (DAG task systems)

* [inlong](https://inlong.apache.org/) big data integration: cache, pulsar, kafka, iceberg, ...
* [dolphin scheduler](https://github.com/apache/incubator-dolphinscheduler): DAG workflow scheduling system
* [gobblin](https://github.com/apache/incubator-gobblin) big data ingestion onto hadoop
* [hadoop tez - DAG of tasks for processing data](https://tez.apache.org/)
* [hadoop oozie](https://oozie.apache.org/)
* https://airflow.apache.org/ - python
* https://nifi.apache.org/index.html
* https://azkaban.github.io/
  + https://github.com/azkaban/azkaban
* [miniwdl](https://github.com/chanzuckerberg/miniwdl) tasks for podman
  + [WDL spec](https://github.com/openwdl/wdl/blob/main/versions/development/SPEC.md)
* [dolt](https://github.com/dolthub/dolt) git for big data with mySQL interface
  + https://thenewstack.io/dolt-a-relational-database-with-git-like-cloning-features/
* https://en.wikipedia.org/wiki/Slurm_Workload_Manager


## Visualization

* https://github.com/apache/superset (data analysis, graphs)
* https://github.com/getredash/redash (social visualization)
* https://observablehq.com/ (web services)
* [kitware open source](https://www.kitware.com/open-source/)
  + https://vtk.org/ Process images and create 3D computer graphics
    - https://kitware.github.io/vtk-js/
  + https://trame.kitware.com/ Visual Analytics (in Browser)
  + https://www.paraview.org/ post-processing visualization engine
    - https://pvw.kitware.com/ paraviewweb

### Plots and Charts

see also: dsl.md -> Visualization

#### Python

* [matplotlib](https://matplotlib.org/stable/api/_as_gen/matplotlib.pyplot.plot.html)

#### Java

* https://analyticsindiamag.com/top-7-scala-libraries-for-data-visualisation/

* [XChart](https://knowm.org/open-source/xchart/)
* [Chart Construction Kit](https://jcckit.sourceforge.net/) old
* [krayon](https://github.com/JuulLabs/krayon) kotlin, low-level

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
* [arrow](https://arrow.apache.org/docs/index.html) alternative to panda, cross platform
  + https://arrow.apache.org/docs/python/csv.html
* https://docs.dask.org/en/latest/
* https://github.com/quiltdata/quilt versioned big data on s3
  + https://open.quiltdata.com/
