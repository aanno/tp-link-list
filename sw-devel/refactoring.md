# Refactoring

## Automatic Refactoring

* [csa](https://github.com/vmware-tanzu/cloud-suitability-analyzer) check if your (java, .net) server application is ready for the cloud
  + https://github.com/vmware-tanzu/cloud-suitability-analyzer/blob/master/doc/CSA-UserManual.md
  + https://github.com/vmware-tanzu/cloud-suitability-analyzer/projects/1
* [openrewrite](https://github.com/openrewrite/rewrite) by moderne
  + [recipes](https://docs.openrewrite.org/recipes)
  + [rewrite-gradle-plugin](https://github.com/openrewrite/rewrite-gradle-plugin)
    - https://plugins.gradle.org/plugin/org.openrewrite.rewrite
  + [Baeldung's guide to openrewrite](https://www.baeldung.com/java-openrewrite)

## Static Analysis of Source Code

* [pvs studio](https://pvs-studio.com/en/) commercial

### SARIF format

* [specs and docs](https://sarifweb.azurewebsites.net/)
* [spec 2.0](https://docs.oasis-open.org/sarif/sarif/v2.0/sarif-v2.0.html)

* https://www.grammatech.com/learn/using-sarif-to-extend-analysis-of-sast-tools/

#### SARIF tools

* [ms sarif tools](https://github.com/microsoft/sarif-tools)
* [use vscode for sarif](https://medium.com/pvs-studio/vscode-how-to-view-reports-of-static-analyzers-that-support-sarif-ad7f719091cd)
* [plog converter](https://github.com/viva64/plog-converter) for pvs studio
* [github support of sarif](https://docs.github.com/en/code-security/code-scanning/integrating-with-code-scanning/sarif-support-for-code-scanning)
