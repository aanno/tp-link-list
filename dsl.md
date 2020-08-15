# DSL

* https://tomassetti.me/domain-specific-languages/ (with tools)
* https://www.heise.de/thema/Domain-Specific-Languages
* https://de.wikipedia.org/wiki/Dom%C3%A4nenspezifische_Sprache
* http://dslbook.org/
* http://dsl-course.org/ (concepts, xtext, MPS)

## DSL Workbenchs

* https://medium.com/@dslmeinte/are-language-workbenches-dead-4b05d1698d3c
* https://voelter.de/data/pub/LWB-ResultsAndBenchmarks.pdf

## DSLFoundry

* https://dslfoundry.wordpress.com/
* https://github.com/DSLFoundry

## Eclipse

### Xtext

* https://www.eclipse.org/Xtext/index.html
* https://de.wikipedia.org/wiki/Xtext
* https://www.itemis.com/en/xtext/
* https://www.itemis.com/en/it-services/individual-software-tools#xtext
* https://typefox.io/xtext-2-13-0-released-semantic-editing-made-easy
* https://www.kingsware.de/2016/07/30/interview-with-dr-jan-kohnlein-on-xtext-xtend-xcore-fxdiagram-and-typefox/
* https://info.itemis.com/en/xtext/tips-and-tricks/
* https://blogs.itemis.com/en/get-started-with-xtext-and-intellij-idea-in-5-minutes (no recent updates)

#### Xtext and LSP

* https://www.typefox.io/blog/tutorial-building-a-language-server-for-your-dsl/
  + https://github.com/svenefftinge/xtext-lsp-workshop
* https://www.typefox.io/blog/xtext-lsp-vs-xtext-web/
* https://www.eclipse.org/community/eclipse_newsletter/2017/may/article5.php Building & Running a Language Server with Eclipse Xtext & Theia
* https://github.com/itemis/xtext-languageserver-example
* https://medium.com/@jan.koehnlein/domain-specific-languages-in-theia-8838aee1279

#### ... and Language Server

* https://www.eclipse.org/community/eclipse_newsletter/2017/may/article5.php
  + https://github.com/svenefftinge/xtext-lsp-workshop
  + https://github.com/theia-ide/theia-xtext
  + https://typefox.io/tutorial-building-a-language-server-for-your-dsl
  + https://github.com/eclipse/lsp4j

### Xtend

* http://www.eclipse.org/xtend/
* https://plugins.jetbrains.com/plugin/8073-xtend-support

### Visualization (Graph)

* https://typefox.io/visualizing-npm-package-dependencies-with-sprotty
  + http://npm-dependencies.com/
* http://typefox.io/sprotty-a-web-based-diagramming-framework  
* https://observablehq.com/ (web service)

* https://github.com/theia-ide/sprotty
* https://github.com/eclipse/elk
* Vega und Vega lite
  + https://vega.github.io/editor/#/examples/vega-lite/interactive_splom
  + https://vega.github.io/vega/examples/force-directed-layout/
* https://jankoehnlein.github.io/FXDiagram/


## MPS

* https://www.jetbrains.com/mps/download/
* https://www.jetbrains.com/help/mps/mps-calculator-language-tutorial.html
* https://confluence.jetbrains.com/display/MPSD20181/Fast+Track+to+MPS
* https://confluence.jetbrains.com/display/MPSD20181/MPS+User%27s+Guide

* https://github.com/DSLFoundry/mps-examples
* https://dzone.com/articles/antlr-and-jetbrains-mps-parsing-files-and-displayi
* https://tomassetti.me/how-to-add-jars-and-resources-in-a-jetbrains-mps-project/
* https://confluence.jetbrains.com/display/MPSD20181/Lightweight+DSL

* https://mps-support.jetbrains.com/hc/en-us
* https://www.jetbrains.com/mps/whatsnew/

### MPS buid

* https://confluence.jetbrains.com/display/MPSD20181/HowTo+--+MPS+and+ant
  + https://confluence.jetbrains.com/plugins/servlet/mobile#content/view/49457895
* https://github.com/mbeddr/mps-gradle-plugin 
* http://jetbrains.github.io/mps-maven-plugin/

## mbeddr

* http://mbeddr.com/

## Rascal MPL

* https://www.rascal-mpl.org/
  + https://github.com/usethesource/rascal
* http://tutor.rascal-mpl.org/Rascal/Declarations/SyntaxDefinition/SyntaxDefinition.html#/Rascal/Contents/Contents.html rascal docs
* https://github.com/cwi-swat/bacata jupyter kernel for rascal
  - https://github.com/cwi-swat/bacata-rascal
* http://usethesource.io/projects/ envelope project and blog
* https://www.swat.engineering/ company of rascal founders

### Papers

* https://homepages.cwi.nl/~paulk/publications/rascal-lncs.pdf (big paper)
* https://homepages.cwi.nl/~jurgenv/papers/SWAN2015.pdf (m3)

### Rascal Libs

* https://github.com/usethesource/vallang
* https://github.com/usethesource/capsule java tries collections
* ??? (unclear if related to rascal)
  + https://iguana-parser.github.io/ (data dependent grammar interpreter in scala)
    - https://github.com/iguana-parser/iguana

### Rascal Examples and Tutorials

* https://github.com/refactoring-towards-language-evolution/rascal-Java8
* https://github.com/visknut/LudoscopeLite
* https://github.com/visknut/SAnR
* https://github.com/cwi-swat
  + https://github.com/cwi-swat/hack-your-javascript
  + https://github.com/cwi-swat/rascal-wax-on-wax-off rascal tutorial (with pdf)
  + https://github.com/cwi-swat/rascal-minijava
  + https://github.com/cwi-swat/rascal-tetris
  + https://github.com/cwi-swat/rebel dsl for financial domain using Z3 solver
  + https://github.com/cwi-swat/salix ui dsl (elm style)
  + https://github.com/cwi-swat/rascal-mps (rascal to MPS exporter)
* use
  + https://github.com/usethesource/typepal typechecker generator


## Other Tools

* http://www.monticore.de/
  + https://github.com/MontiCore/monticore
* https://github.com/dynin/ideal

### Parser Generators

* https://en.wikipedia.org/wiki/Comparison_of_parser_generators
* https://matklad.github.io/2018/06/06/modern-parser-generator.html
* https://matklad.github.io/2020/04/13/simple-but-powerful-pratt-parsing.html
* https://www.oilshell.org/blog/2017/03/31.html
* https://blog.adamant-lang.org/2019/dreaming-of-a-parser-generator/

#### Antlr 

* https://github.com/tunnelvisionlabs/antlr4ts
  + https://github.com/tunnelvisionlabs/antlr4/blob/master/doc/optimized-fork.md
* https://github.com/tunnelvisionlabs/antlr4/blob/master/doc/index.md (antlr documentation)

#### Implementations

* https://iguana-parser.github.io/getting_started.html

### LSP (Language Server Protocol)

* https://langserver.org/
* https://microsoft.github.io/language-server-protocol/implementors/servers/
* https://github.com/SergioMD15/lsp-extension-generator
* https://github.com/eclipse/lsp4j
* https://jaxenter.de/yang-language-server-protocol-64232
* https://blog.getgauge.io/gauge-and-the-language-server-protocol-c56fbcfba177?gi=54722be3b74a
* https://medium.com/ballerina-techblog/implementing-a-language-server-how-hard-can-it-be-part-1-introduction-c915d2437076
* https://medium.com/ballerina-techblog/language-server-for-ballerina-auto-completion-engine-in-depth-ee20e543ac26
* https://medium.com/virtuslab/implementing-a-server-for-the-language-server-protocol-a2e6f94ed5df
* https://www.toptal.com/javascript/language-server-protocol-tutorial
* https://tomassetti.me/language-server-dot-visual-studio/

### Server

* https://microsoft.github.io/language-server-protocol/implementors/servers/
* https://code.visualstudio.com/api/language-extensions/language-server-extension-guide

* https://github.com/eclipse/lsp4j (java)
* https://scalameta.org/metals/ (scala)

### Client

* https://microsoft.github.io/language-server-protocol/implementors/sdks/
* https://projects.eclipse.org/projects/technology.lsp4e (eclipse)

### Highlighting (not part of LSP, but normally handled somehow)

* defacto-standard: [textmate highlighting grammar](https://macromates.com/manual/en/language_grammars)
* https://www.eclipse.org/community/eclipse_newsletter/2018/june/tm4e.php (eclipse)
