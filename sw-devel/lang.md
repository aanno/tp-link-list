# Emerging Computer Languages

* [pure-lang](https://beaglesecurity.com/blog/article/dmarc-security.html) haskell for scripting
  + https://agraef.github.io/pure-docs/
  + https://github.com/agraef/pure-lang
* [crystal-lang](https://crystal-lang.org/) compiled script lang with type interference
  + https://en.wikipedia.org/wiki/Crystal_(programming_language)
  + https://github.com/crystal-lang/crystal
* [nim-lang](https://github.com/nim-lang/Nim)
  + https://nim-lang.org/
* [chapel-lang](https://chapel-lang.org/)
* [v-lang](https://vlang.io/)
  + https://github.com/vlang/v
  + https://mawfig.github.io/2022/06/18/v-lang-in-2022.html#summary featured
  + https://blog.logrocket.com/v-lang-vs-rust-comparing-build-languages/
  + https://blog.logrocket.com/what-is-vlang-an-introduction/
  + https://github.com/vlang/vinix os in v-lang
  + https://github.com/elliotchance/vsql db-engine in v-lang
    - https://medium.com/geekculture/%EF%B8%8Fvsql-is-a-sql-database-written-in-v-69ba7749cd79
* [zig](https://ziglang.org/) simple, C-like, embedded
  + https://en.m.wikipedia.org/wiki/Zig_(programming_language)
* [D](https://en.m.wikipedia.org/wiki/D_(programming_language))
* [lua](https://www.lua.org/)
  + https://de.wikipedia.org/wiki/Lua
  + [luajit](https://luajit.org/luajit.html)
* [pony](https://www.ponylang.io/)
  object-oriented, actor-model, capabilities-secure, high-performance programming language

## JIT

* [Adding a JIT compiler to CPython](https://lwn.net/Articles/977855/)
* [Copy-and-patch compilation](https://dl.acm.org/doi/10.1145/3485513)
* [Building a baseline JIT for Lua automatically](https://sillycross.github.io/2023/05/12/2023-05-12/)

## General lang problems

* https://en.m.wikipedia.org/wiki/Funarg_problem

## General meta programming

* [srcml](http://www.srcml.org/about.html) XML representation for source code  for the exploration, analysis, and manipulation of source code for C/C++, C#, and Java

## Language benchmarks

* https://github.com/kostya/benchmarks

### Elm - type redux for web ui

* https://de.m.wikipedia.org/wiki/Elm_(Programmiersprache)
* https://elm-lang.org/

## Erlang

### Elixir

* https://elixir-lang.org/
* https://de.wikipedia.org/wiki/Elixir_(Programmiersprache)

#### Elexir web frameworks

* https://nordicapis.com/13-frameworks-for-building-apis-in-elixir/
* https://www.icicletech.com/blog/top-open-source-frameworks-in-elixir
* https://phoenixframework.org/
  + https://en.wikipedia.org/wiki/Phoenix_(web_framework)
  + https://pragmaticstudio.com/tutorials/what-is-phoenix-liveview

## Dart

* https://dart.dev/
* https://de.wikipedia.org/wiki/Dart_(Programmiersprache)

### Flutter

* https://flutter.dev/
* https://de.wikipedia.org/wiki/Flutter_(Software)
* https://github.com/litlifesoftware/leitmotif-flutter (flutter-based web framework)

## Haskell

* [ghc](https://aosabook.org/en/v2/ghc.html)
* [lens - structured getter and setter](https://hackage.haskell.org/package/lens)
  + https://hackage.haskell.org/package/lens-tutorial-1.0.4/docs/Control-Lens-Tutorial.html
* [arrows](https://www.haskell.org/arrows/)
  + https://hackage.haskell.org/package/base-4.17.0.0/docs/Control-Arrow.html
  + https://en.m.wikibooks.org/wiki/Haskell/Arrow_tutorial
* [applicative operators](https://stackoverflow.com/questions/3242361/what-is-called-and-what-does-it-do) (<*>)

### free learning

* [Hask](https://smunix.github.io/dev.stephendiehl.com/hask/index.html) What I Wish I Knew When Learning Haskell - featured!
* [real world haskell](https://book.realworldhaskell.org/) 2008
* [from first principles](https://haskellbook.com/) commercial
* [haskell tutorials](https://www.haskelltutorials.com/)

* [ghcup](https://www.haskell.org/ghcup/install/#manual-installation)
  + [stack](https://docs.haskellstack.org/en/stable/)
  + [ghcup user guide](https://www.haskell.org/ghcup/guide/)
* [intelliJ Haskell](https://rikvdkleij.github.io/intellij-haskell/)
  + https://github.com/rikvdkleij/intellij-haskell
  + https://getbetter.ro/tech/setting-up-a-haskell-environment-with-stack-ghcid-and-intellij/
* [leksah](https://github.com/leksah/leksah) dead or slow moving
 
### Haskell programming

* [500 lines or less](https://aosabook.org/en/500L/introduction.html)

### Haskell libs

* [conduit](https://github.com/snoyberg/conduit) stream processing
  + https://www.stackage.org/package/conduit
  + https://hackage.haskell.org/package/conduit
* [aeson](https://github.com/haskell/aeson) JSON processing
* [mlt](https://github.com/haskell/mtl) (monad) transformers for CPS, Except, Read-Write-State, Accum, Select, ...
  + [transformers](https://hackage.haskell.org/package/transformers)
  + https://smunix.github.io/dev.stephendiehl.com/hask/index.html#monad-transformers
* [containers](https://github.com/haskell/containers) sets, maps, sequences
  + https://haskell-containers.readthedocs.io/en/latest/
* [exceptions](https://hackage.haskell.org/package/exceptions) catch, pure (not limited to IO monad)
* [mono-traversable](https://github.com/snoyberg/mono-traversable)
  + mono-traversable providing a set of classes for dealing with monomorphic data structures (like ByteString and Text) in a similar way to how the standard libraries treat polymorphic structures like lists
    - mono-traversable-instances, containing orphans instances for mono-traversable classes
    chunked-data, providing typeclasses for dealing with various chunked data representations
  + mutable-containers, abstractions and concrete implementations of mutable containers
  + conduit-combinators, commonly used conduit functions, for both chunked and unchunked data
  + classy-prelude, a Prelude replacement based around the above packages (and many others)
    - classy-prelude-conduit, extends classy-prelude with conduit support
    - classy-prelude-yesod, extends classy-prelude-conduit with Yesod web framework support
  + minlen, provided a newtype wrapper with type-level annotation of minimum container length. This is a generalization of the Data.NonNull module in mono-traversable
* [graphql-spice](https://hackage.haskell.org/package/graphql-spice) Various extensions and convenience functions for the core graphql package
  + [graphql](https://hackage.haskell.org/package/graphql)
  + https://git.caraus.tech/OSS/graphql/wiki
* [attoparsec](https://hackage.haskell.org/package/attoparsec) Fast combinator parsing for bytestrings and text
* [openapi3](https://hackage.haskell.org/package/openapi3) OpenAPI 3.0 data model

### Haskell Web

* https://www.slant.co/topics/727/~best-haskell-web-frameworks-for-building-restful-web-services
* http://wiki.haskell.org/Web/Frameworks
  + https://haste-lang.org/ old
* [Haskell JS problem](https://wiki.haskell.org/The_JavaScript_Problem)

* https://github.com/dmjio/miso
* https://github.com/ghcjs/ghcjs
* https://levelup.gitconnected.com/from-go-to-haskell-svelte-1ad5ff4a0520
* https://www.yesodweb.com/
  + https://www.yesodweb.com/book/web-application-interface
  + [haskell-yesod](https://github.com/OpenAPITools/openapi-generator/blob/master/docs/generators/haskell-yesod.md) openapi-generator for yesod
* https://www.servant.dev/
  + [servant-openapi](https://hackage.haskell.org/package/servant-openapi3) Generate a Swagger/OpenAPI/OAS 3.0 specification for your servant API
* https://aosabook.org/en/posa/warp.html
* https://hasura.io/
  + https://hasura.io/products/instant-api rest and graphql
* https://morpheusgraphql.com/
  + https://vivshaw.github.io/blog/haskell-snacks-1-yesod-morpheus-graphql/
  + https://stackoverflow.com/questions/58366794/what-is-the-purpose-of-liftio
  + https://hoogle.haskell.org/?hoogle=liftIO

### Haskell serverless

* [serverless haskell](https://www.serverless.com/plugins/serverless-haskell) haskell on AWS lambda
  + [Avoid using the “Serverless Haskell” platform](https://www.haskelltutorials.com/haskell-aws-lambda/avoid-serverless-haskell.html)
* [AWS lambda haskell runtime](https://theam.github.io/aws-lambda-haskell-runtime/)
* [haskell on AWS lambda](https://www.haskelltutorials.com/haskell-aws-lambda/)

* https://dev.to/fabianveal/building-a-rest-api-with-haskell-2d54

### Haskell UI and reactive programming (and events)

* [reative banana](https://wiki.haskell.org/Reactive-banana) old, reactive wx ui
  + https://github.com/HeinrichApfelmus/reactive-banana
* [grapefruit](https://wiki.haskell.org/Grapefruit) reactive (gtk) ui
  + https://hub.darcs.net/jeltsch/grapefruit
* [threepenny web ui](https://heinrichapfelmus.github.io/threepenny-gui/) _not_ suited as web frontend!
  + https://github.com/HeinrichApfelmus/threepenny-gui/tree/master/samples#readme
  + https://github.com/HeinrichApfelmus/threepenny-gui

* [functional reactive programming](https://wiki.haskell.org/Functional_Reactive_Programming)
* [reactive](https://wiki.haskell.org/Reactive) hybrid demand/data-driven implementation
  + https://hackage.haskell.org/package/reactive
* [elerea](https://hackage.haskell.org/package/elerea)

### Effects in Haskell

* [polysemy](https://github.com/polysemy-research/polysemy) high-power, low-boilerplate domain specific languages (as monads), well suited for effects
  + https://hackage.haskell.org/package/polysemy
* [effectful](https://github.com/haskell-effectful/effectful) easy to use, fast extensible effects
  + https://hackage.haskell.org/package/effectful

### Haskell Concurrency

* https://wiki.haskell.org/Applications_and_libraries/Concurrency_and_parallelism
  + https://wiki.haskell.org/Parallel
  + https://wiki.haskell.org/Concurrency
  + https://en.m.wikibooks.org/wiki/Haskell/Concurrency
  + https://en.m.wikibooks.org/wiki/Haskell/Continuation_passing_style
* [parallel](https://hackage.haskell.org/package/parallel-3.2.2.0/docs/Control-Parallel-Strategies.html)
* [monad-par](https://hackage.haskell.org/package/monad-par)
* [monad-coroutine](https://hackage.haskell.org/package/monad-coroutine)

## Ocaml

* https://github.com/ocaml/ocaml
* https://github.com/ocaml-community/awesome-ocaml

### Ocaml ffi and transpiler

* https://github.com/Lupus/ocaml2go
* https://dune.readthedocs.io/en/stable/foreign-code.html?highlight=foreign
* https://github.com/yallop/ocaml-ctypes

### Ocaml meta programming (also very important for reason)

* https://github.com/ocaml-ppx/ppx
  + https://discuss.ocaml.org/t/the-future-of-ppx/3766
  + https://github.com/ocaml-ppx/ppxlib

### Ocaml Web / Reason / ReScript family

* https://github.com/OvermindDL1/bucklescript-tea elm style

#### Reason (old ocaml to js but ocaml compatible)

* https://en.wikipedia.org/wiki/Reason_(programming_language)
* https://reasonml.github.io/
* https://github.com/reasonml/reason
* https://reasonml.github.io/docs/en/external ffi
* https://github.com/ocsigen/js_of_ocaml reason *and* ocaml to js
  + http://ocsigen.org/js_of_ocaml/latest/manual/lwt coroutine for reason/ocaml js
* https://en.wikipedia.org/wiki/Reason_(programming_language)

#### ReScript (new ocaml to js but no ocaml backend)

* https://rescript-lang.org/blog/bucklescript-is-rebranding

* https://rescript-lang.org/
* https://rescript-lang.org/docs/manual/v8.0.0/introduction old syntax
* https://rescript-lang.org/docs/manual/latest/introduction new syntax
* https://rescript-lang.org/docs/manual/latest/null-undefined-option

### Ocaml5

* https://www.infoq.com/news/2021/10/ocaml-5-multicore/
* https://tarides.com/blog/2022-06-15-ocaml-5-alpha-release/

* https://github.com/kayceesrk/ocaml5-tutorial

* https://github.com/ocaml-multicore
* https://github.com/ocaml-multicore/domainslib

* https://github.com/ocaml-community/awesome-ocaml
* https://aantron.github.io/dream/ ocaml web framework

#### Ocaml5 effects and parallelism

* https://kcsrk.info/webman/manual/effects.html
* https://ocamlverse.net/content/parallelism.html
  + https://github.com/ocsigen/lwt
* https://github.com/ocaml-multicore/ocaml5-tutorial

### Go lang

* https://github.com/softchris/golang-book

### Go lists

* [uhub's awesome go](https://github.com/uhub/awesome-go)
* [avelino's awesome go](https://github.com/avelino/awesome-go)

### Go lang meta programming

* https://github.com/jmattheis/goverter tool for creating type-safe converters. All you have to do is create an interface and execute goverter
* [go+](https://github.com/goplus/gop)


### Go lang learn

* https://go.dev/talks/2012/goforc.slide featured!
* https://yourbasic.org/golang/go-java-tutorial/
* https://gobyexample.com/ simple
* https://go.dev/tour/welcome/1 simple
* https://golangdocs.com/ blog
* https://gosamples.dev/copy-map/ blog simple
* https://go.dev/blog/slices
* https://go.dev/blog/strings
  + https://henvic.dev/posts/go-utf8/
  + https://pkg.go.dev/unicode
  + https://coderwall.com/p/k7zvyg/dealing-with-unicode-in-go
  + https://zetcode.com/golang/rune/
* https://www.geeksforgeeks.org/how-to-copy-one-slice-into-another-slice-in-golang/
* https://medium.com/@jon_43067 blog

* https://go.dev/doc/faq
* https://go.dev/blog/why-generics
* https://vimeo.com/49718712 Rob Pike - Concurrency Is Not Parallelism
* https://entwickler.de/go/gopher-sind-von-natur-aus-lazy 5 go gotchas
* https://medium.com/@gauravsingharoy/asynchronous-programming-with-go-546b96cd50c1
* [sync await](https://hackernoon.com/asyncawait-in-golang-an-introductory-guide-ol1e34sg)
  + https://github.com/Joker666/AsyncGoDemo

### Go std lib

* https://pkg.go.dev/context
  + https://www.digitalocean.com/community/tutorials/how-to-use-contexts-in-go
* https://blog.xendit.engineer/streaming-an-avalanche-of-data-with-gos-io-package-d319226f645b
* https://medium.com/learning-the-go-programming-language/streaming-io-in-go-d93507931185
* https://zetcode.com/golang/string-format/

### Go build

* https://stackoverflow.com/questions/1757090/shared-library-in-go
* [dynamic libraries](https://stackoverflow.com/questions/19431296/building-and-linking-dynamically-from-a-go-binary)

### Go libs

* https://pkg.go.dev/go.octolab.org incl. a pointer implementation
* https://github.com/siderolabs/go-pointer
* https://pkg.go.dev/github.com/prysmaticlabs/go-bitfield
* https://github.com/ReactiveX/RxGo
* https://github.com/shettyh/threadpool
* https://github.com/ahmetask/worker
  + https://medium.com/@ahmet9417/golang-thread-pool-and-scheduler-434dd094715a
* https://github.com/jucardi/go-streams inspired in Java 8 Streams and .NET Linq
* https://github.com/wesovilabs/koazee StreamLike, Immutable, Lazy Loading

#### Go libs for enterprise stuff

* [prometheus client](https://github.com/prometheus/client_golang) report metrics, read metrics
  + https://gabrieltanner.org/blog/collecting-prometheus-metrics-in-golang/
  + https://prometheus.io/docs/guides/go-application/

* https://cloud.ibm.com/docs/go?topic=go-go-healthcheck
* https://blog.gopheracademy.com/advent-2017/kubernetes-ready-service/
* https://github.com/vmware-archive/healthcheck (deprecated)
* https://go.dev/doc/diagnostics pprof, perf, callgrind
  + https://go.dev/blog/pprof

mapper
* https://github.com/devfeel/mapper
* https://github.com/anexia-it/go-structmapper
* https://github.com/mashingan/smapping
* https://github.com/mitchellh/mapstructure

### Go functional programming

* https://blog.fsouza.dev/functional-streams-in-go/
  + https://github.com/golang/go/issues/49085 no type paramenters in methods (so far)

### Go and AI

* [langchaingo](https://github.com/tmc/langchaingo)
  LLMs through composability, with Go
* [fun](https://gitlab.com/tozd/go/fun)
  functions with code, data, or natural language description

### Go plugins

* https://entwickler.de/go/plug-ins-mit-go-001
* https://eli.thegreenplace.net/2021/plugins-in-go/

* https://github.com/hashicorp/go-plugin

#### Go lang and C

* https://pkg.go.dev/cmd/cgo
  + https://github.com/golang/go/wiki/cgo#turning-c-arrays-into-go-slices
  + https://stackoverflow.com/questions/65934945/how-to-manipulate-a-c-character-array-inside-a-cgo-function
  + https://blog.marlin.org/cgo-referencing-c-library-in-go
  + https://karthikkaranth.me/blog/calling-c-code-from-go/
  + https://www.thegoldfish.org/2019/04/using-c-libraries-from-go/
  + https://karthikkaranth.me/blog/calling-c-code-from-go/
  + https://eli.thegreenplace.net/2019/passing-callbacks-and-pointers-to-cgo/
  + https://14rcole.github.io/post/cgo-part1-structs/
  + https://medium.com/@liamkelly17/working-with-packed-c-structs-in-cgo-224a0a3b708b
* https://stackoverflow.com/questions/1713214/how-to-use-c-in-go
* https://github.com/xlab/c-for-go
* https://github.com/h12w/cwrap
  + https://golangexample.com/cwrap-a-go-wrapper-generator-for-c-libraries/
* https://www.swig.org/Doc3.0/Go.html uses cgo
* https://xuri.me/2022/04/15/go-shared-libraries.html
  + https://stackoverflow.com/questions/1757090/shared-library-in-go
* https://dev.to/mattn/call-go-function-from-c-function-1n3 go-pointer

* https://ugorji.net/blog/go-codecgen
  + https://github.com/ugorji/go

* https://medium.com/learning-the-go-programming-language/encoding-data-with-the-go-binary-package-42c7c0eb3e73
* https://stackoverflow.com/questions/55681650/golang-pack-a-struct
* https://stackoverflow.com/questions/37618399/efficient-go-serialization-of-struct-to-disk
* https://stackoverflow.com/questions/28020070/golang-serialize-and-deserialize-back
* https://kpbird.medium.com/golang-serialize-struct-using-gob-part-1-e927a6547c00
* https://stackoverflow.com/questions/50660200/how-can-i-convert-a-json-string-to-a-byte-array

## C lang converters

* http://jarble.github.io/transpiler/
* https://en.wikipedia.org/wiki/Source-to-source_compiler

### To Java

* https://www.mtsystems.com/

### To go lang

* [awesome transpiler list](https://github.com/transpiler/awesome-transpiler)

* https://github.com/goplus/c2go
  + https://github.com/goplus/gop
* https://github.com/gotranspile/cxgo
* https://github.com/elliotchance/c2go featured!
  + https://elliotchance.medium.com/converting-c-to-go-584504d2d0c5

### To rust lang

* https://github.com/immunant/c2rust
  + https://c2rust.com/
  + https://locka99.gitbooks.io/a-guide-to-porting-c-to-rust/content/porting-code.html
  + https://immunant.com/blog/2019/11/rust2020/

### To kotlin

* https://github.com/korlibs/ktcc


## LLVM

### Clang

* https://eli.thegreenplace.net/2011/07/03/parsing-c-in-python-with-clang
