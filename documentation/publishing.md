# Publishing

* https://www.indoition.com/xml-dita-tools-technical-documentation.htm

## Presentations

* [list of markdown based presentation solutions](https://gist.github.com/johnloy/27dd124ad40e210e91c70dd1c24ac8c8)
* [reveal](https://github.com/hakimel/reveal.js/) html5 presentation framework
* [live deck](https://github.com/gaslight/live_deck) interactive html5 presentation framework
* [spectacle - react based presentation slides](https://formidable.com/open-source/spectacle/)
* [eagle - vue based presentation slides](https://github.com/zulko/eagle.js/)
* [NueDeck - vue based presentation slides](https://github.com/twitwi/nuedeck)
* [decktape](https://github.com/astefanutti/decktape) pdf from Html presentation - includes links to presentation frameworks

## XML

### Editors

* https://www.oxygenxml.com/doc/versions/20.0/ug-editor/topics/author-dita-doc-type.html
* http://www.codex.ca/
* http://www.eclipse.org/vex/
* https://www.fiduswriter.org/

### Dita

* http://idratherbewriting.com/2015/01/28/10-reasons-for-moving-away-from-dita/

#### Tips and tricks

* http://idratherbewriting.com//jquery_side_panel/

#### Tooling

* https://www.dita-ot.org/


## Markup

### Markdown

* https://meta.stackexchange.com/questions/72395/is-it-possible-to-have-definition-lists-in-markdown
* https://pythonhosted.org/Markdown/extensions/definition_lists.html

#### References

* https://en.support.wordpress.com/markdown-quick-reference/
* https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
* https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf
* http://geog.uoregon.edu/bartlein/courses/geog607/Rmd/MDquick-refcard.pdf

#### Editors (mostly markdown)

* https://www.tecmint.com/best-markdown-editors-for-linux/
* http://asciidoctor.org/docs/editing-asciidoc-with-live-preview/
* https://www.asciidocfx.com/
* https://asciidoclive.com/edit/scratch/1 (online)
* https://remarkableapp.github.io/
* [marktext](https://github.com/marktext/marktext#features)
  + https://marktext.app/
* [ghostwriter](https://wereturtle.github.io/ghostwriter/)
* [abricotine](https://abricotine.brrd.fr/)

#### Tooling

* http://pandoc.org/epub.html (epub)
* https://github.com/paulfurley/markdown-to-epub-mobi (epub)


### Asciidoctor (and Asciidoc)


#### Asciidoctor Setup

* [asciidoctor setup](https://www.informatik.htw-dresden.de/~zirkelba/notes/se/asciidoc-installation-and-configuration/)

##### Asciidoctor Setup for Presentation

* [setup asciidoctor reveal](https://docs.asciidoctor.org/reveal.js-converter/latest/setup/ruby-setup/)
* [several tools chains for asciidoctor reveal](https://docs.asciidoctor.org/reveal.js-converter/latest/)
* [example presentation](https://github.com/Ardemius/asciidoctor-presentation)
* https://matklad.github.io/2019/05/19/consider-using-asciidoctor-for-your-next-presentation.html
* [alternative presentation backends](https://github.com/asciidoctor/asciidoctor-backends)

#### Asciidoctor backends

* https://asciidoctor.org/docs/asciidoctor-pdf/
* https://github.com/asciidoctor/asciidoctor-fopub
* [semantic html5](https://github.com/jirutka/asciidoctor-html5s)

#### References

* https://docs.asciidoctor.org/asciidoc/latest/
* http://asciidoctor.org/docs/asciidoc-writers-guide/
* http://asciidoctor.org/docs/user-manual/#introduction-to-asciidoctor

#### Tooling

* http://asciidoctor.org/docs/install-toolchain/
  + http://asciidoctor.org/docs/editing-asciidoc-with-live-preview/
  + https://asciidoclive.com/
  + https://github.com/asciidoctor/asciidoctor-epub3/blob/master/data/samples/asciidoctor-js-browser-extension.adoc
* http://asciidoctor.org/docs/convert-asciidoc-to-epub/ (epub)
* http://theantway.com/2017/06/how-to-convert-asciidoc-book-to-epubmobi-formats/ (epub, mobi)
* http://www.methods.co.nz/asciidoc
  + http://www.methods.co.nz/asciidoc/publishing-ebooks-with-asciidoc.html (epub)
  + http://asciidoc.org/epub-notes.html (epub)

## Extensions

* [extensions points](https://docs.asciidoctor.org/asciidoctor/latest/extensions/)
* [source highlighting](https://docs.asciidoctor.org/asciidoc/latest/verbatim/source-highlighter/)
* [syntax highlighting](https://docs.asciidoctor.org/asciidoctor/latest/syntax-highlighting/)
* [apply highlighting during conversion](https://github.com/jirutka/asciidoctor-highlight.js)
* math
  + [build-in stem support](https://docs.asciidoctor.org/asciidoc/latest/stem/stem/)
  + [build-in mathjax support (only html)](https://docs.asciidoctor.org/asciidoctor/latest/stem/mathjax/)
  + [asciidoctor mathematical](https://docs.asciidoctor.org/asciidoctor/latest/stem/mathematical/) 
    all backend, renders math to images
  + [mathjax3 for asciidoctor](https://github.com/tani/asciidoctor-mathjax3)
  
## Diagramms

* [use many ascii-to-diagram tools inside asciidoctor](https://docs.asciidoctor.org/diagram-extension/latest/)
  + https://asciidoctor.org/news/2014/02/18/plain-text-diagrams-in-asciidoctor/
  + https://github.com/asciidoctor/asciidoctor-diagram
* [use plantuml server for rendering](https://github.com/hsanson/asciidoctor-plantuml)
* https://structurizr.com/ (supports md and asciidoc)

## asciidoctor.js

* https://asciidoctor.org/docs/asciidoctor.js/
  + https://docs.asciidoctor.org/asciidoctor.js/latest/
  + https://github.com/asciidoctor/asciidoctor.js
  + https://asciidoctor.org/news/2013/05/21/asciidoctor-js-render-asciidoc-in-the-browser/
* [compile ruby extensions to asciidoctor.js](https://docs.asciidoctor.org/asciidoctor.js/latest/extend/extensions/compile-ruby-extension/)
* https://github.com/Mogztter/asciidoctor-web-pdf render html5 through puppeteer/chrome to pdf
* https://github.com/mogztter/asciidoctor-kroki diagrams for asciidoctor.js
* https://gitlab.com/djencks/asciidoctor-mathjax.js server-side mathjax rendering

## Site generators based on asciidoctor

* [antora](https://gitlab.com/antora) html5 site generation for technical documentation
  + https://gitlab.com/antora/antora
  + https://docs.antora.org/antora/2.3/whats-new/
* [mdx](https://mdxjs.com/) asciidoc with jsx (react)
* [asciidoctor in vue.js](https://www.ahus1.de/post/asciidoc-content-spa)

## Rendering components for asciidoctor

* https://github.com/fast-reflexes/better-react-mathjax
* https://github.com/react-atomic/react-atomic-organism/tree/master/packages/organism-react-asciidoc

## Book Converter

* https://github.com/phxql/kotlin-one-epub
  + md -> epub of https://github.com/JetBrains/kotlin-web-site/tree/master/pages/docs/reference
  + pdf generation is part of the web site
* https://gittobook.org (online, pandoc based)
  + https://gittobook.org/books/47/git-to-book-docs
  + https://gittobook.org/books/92/lagom (lagom as example)
* https://github.com/akka/akka/tree/master/akka-docs (md to web site)
* https://xmlgraphics.apache.org/fop/news.html

## Formats

### Epub

* https://github.com/idpf/epubcheck
* https://github.com/futurepress/epub.js/

## Static Generators

* https://www.gatsbyjs.org/ (React based)
  + https://www.heise.de/developer/meldung/JavaScript-Statische-Websites-mit-React-und-Gatsby-entwickeln-3766769.html

## Dynamic Generators

* http://jupyter.org/

## Html Bundlers

* http://devdocs.io/
  + https://github.com/Thibaut/devdocs

## Chat

* https://zulip.org/

### XMPP

#### JavaScript for XMPP

* https://github.com/jcbrand/converse.js
* https://www.jsxc.org/installation.html
* https://github.com/movim/movim
  + https://github.com/movim/movim/wiki
* https://tlk.io/

* https://github.com/jsxc/jsxc/wiki/Prepare-apache

## Documentation and Books authoring

* https://itsfoss.com/open-source-tools-writers/
* https://blog.strapi.io/gitbook-open-source-documentation/

* http://www.theologeek.ch/manuskript/
* https://www.mkdocs.org/
* https://docsify.js.org/#/?id=docsify

## Asciidoc(tor) based

* http://www.vogella.com/tutorials/AsciiDoc/article.html
* https://asciidoclive.com/

* https://asciidoctor.org/docs/install-toolchain/
* https://asciidoctor.org/docs/asciidoctorj/
* https://stackoverflow.com/questions/48419521/converting-asciidoc-to-latex (pandoc)
  
### Math support

* https://asciidoctor.org/news/2014/08/12/asciidoctor-1-5-0-released/
* https://github.com/asciidoctor/asciidoctor.org/blob/master/docs/_includes/stem.adoc
  
### Docbook

* http://www.vogella.com/tutorials/DocBook/article.html

## Markdown based

* http://wereturtle.github.io/ghostwriter/
* https://www.madoko.net/
  + http://madoko.org/reference.html

## Markdown to Book

* [rust](https://github.com/arbreng/books)
  + [crowbook](https://github.com/lise-henry/crowbook)
  + [rust book](https://github.com/rust-lang/book)
    - https://doc.rust-lang.org/book/
* [mdBook](https://github.com/rust-lang-nursery/mdBook)
  + https://rust-lang-nursery.github.io/mdBook/
* [md to epub](https://github.com/paulfurley/markdown-to-epub-mobi)
* [pandoc](https://pandoc.org/installing.html)

## PDF

* [render PDF in JS](https://pspdfkit.com/blog/2018/render-pdfs-in-the-browser-with-pdf-js/)

### PDF software and tools

* https://pdfbox.apache.org/2.0/commandline.html
* https://github.com/rrthomas/pdfjam
* https://github.com/pts/pdfsizeopt
* https://pspdfkit.com/ (commercial)

### CSS Print, i.e. rendering HTML to PDF

* https://github.com/peterdemartini/html5-to-pdf puppeteer/chrome based
* https://github.com/RelaxedJS/ReLaXed markdown to PDF (puppeteer/chrome based)
* https://weasyprint.org/ own rendering engine
  + https://github.com/Kozea/WeasyPrint
* https://wkhtmltopdf.org/
  + https://github.com/wkhtmltopdf/wkhtmltopdf
  + https://wkhtmltopdf.org/status.html important: security flaws as based on (very old QtWebKit)
* https://www.princexml.com/ (commercial)
* https://www.pdfreactor.com/ (commercial)

## RTF software and tools

* https://github.com/LibrePDF/OpenRTF
