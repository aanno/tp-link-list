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


## General lang problems

* https://en.m.wikipedia.org/wiki/Funarg_problem

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

## Dart

* https://dart.dev/
* https://de.wikipedia.org/wiki/Dart_(Programmiersprache)

### Flutter

* https://flutter.dev/
* https://de.wikipedia.org/wiki/Flutter_(Software)
* https://github.com/litlifesoftware/leitmotif-flutter (flutter-based web framework)

## Haskell

* [lens - structured getter and setter](https://hackage.haskell.org/package/lens)
  + https://hackage.haskell.org/package/lens-tutorial-1.0.4/docs/Control-Lens-Tutorial.html
* [arrows](https://www.haskell.org/arrows/)
  + https://hackage.haskell.org/package/base-4.17.0.0/docs/Control-Arrow.html

### Haskell Web

* https://github.com/dmjio/miso
* https://github.com/ghcjs/ghcjs
* https://levelup.gitconnected.com/from-go-to-haskell-svelte-1ad5ff4a0520

## Ocaml

* https://github.com/ocaml/ocaml

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

#### Ocaml5 effects

* https://kcsrk.info/webman/manual/effects.html

### Go lang

* https://github.com/softchris/golang-book

### Go lang meta programming

* https://github.com/jmattheis/goverter tool for creating type-safe converters. All you have to do is create an interface and execute goverter


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

* https://github.com/gotranspile/cxgo
* https://github.com/elliotchance/c2go
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
