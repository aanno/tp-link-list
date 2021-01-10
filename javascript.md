# JavaScript

## General and Language

### Functional Programming

* https://github.com/stoeffel/awesome-fp-js (Link List)
* https://github.com/MostlyAdequate/mostly-adequate-guide (Book)

### RX

* https://xgrommx.github.io/rx-book/content/how_do_i/index.html (Book)


### Mixins

* http://justinfagnani.com/2015/12/21/real-mixins-with-javascript-classes/
  + https://github.com/justinfagnani/mixwith.js

### ES6

* http://es6-features.org/#Constants

* https://hacks.mozilla.org/2015/07/es6-in-depth-proxies-and-reflect/
* https://ponyfoo.com/articles/more-es6-proxy-traps-in-depth

### DOM

* https://stackoverflow.com/questions/526347/how-do-you-get-the-rendered-height-of-an-element

## Frontend

* [use node API in frontend](https://nwjs.io/)
* [independent component development](https://storybook.js.org/)

### Frontend Frameworks

#### Polymer

* https://www.heise.de/developer/meldung/Polymer-2-0-Googles-JavaScript-Bibliothek-macht-den-naechsten-Schritt-3718020.html

#### React

##### React themes

* https://startreact.com/themes/
* https://market.nativebase.io/

##### React tools

##### React Builder UIs...

* https://github.com/ipselon/structor

#### Redux

* Redux Best Practice https://medium.com/@kylpo/redux-best-practices-eef55a20cc72
  + https://github.com/reactjs/reselect (createSelector(Creator), createStructedSelector, defaultMemoize)
  + https://github.com/acdlite/redux-actions (createAction(s), handleAction(s) (statt switch), combineActions)
  + https://github.com/erikras/ducks-modular-redux (http://redux.js.org/docs/api/bindActionCreators.html) 

### Angular

* https://stackoverflow.com/questions/35368633/angular-2-download-pdf-from-api-and-display-it-in-view (pdf in view)
* https://github.com/sean-olson-e/Rapid-Application-Development-using-Angular-CLI

* https://github.com/angular/angular-cli

#### Angular Basics

* [components interaction](https://angular.io/guide/component-interaction)
  + [child and parent](https://www.centric.eu/NL/Default/Craft/Blogs/2018/01/25/Angular-components-How-to-talk-to-your-children-and-listen-to-what-they-have-to-say)
  + [ref, parent, service](https://medium.com/dailyjs/3-ways-to-communicate-between-angular-components-a1e3f3304ecb)
* directives
  + [attribute directives](https://angular.io/guide/attribute-directives)
  + [structural directives](https://angular.io/guide/structural-directives)
  + [ImgPopOverComponent](https://stackoverflow.com/questions/43981841/apply-attribute-directive-on-component-in-angular-4)
  + [toggle](https://blog.angularindepth.com/enhance-components-with-directives-58f16c4ca1f)
* [error handling](https://angular.io/api/core/ErrorHandler)
  + https://medium.com/@amcdnl/global-error-handling-with-angular2-6b992bdfb59c
  + [http errors](https://hackernoon.com/global-http-error-catching-in-angular-4-3-9e15cc1e0a6b)
  + [recovery](https://itnext.io/how-to-handle-your-run-time-errors-in-your-angular-application-8d72fefbf8a4)
  + https://medium.com/@aleixsuau/error-handling-angular-859d529fa53a
* services
  + [singleton](https://angular.io/guide/singleton-services)
  + [provider](https://angular.io/guide/providers)
* modules
  + https://medium.com/@cyrilletuzi/understanding-angular-modules-ngmodule-and-their-scopes-81e4ed6f7407
  + https://angular.io/guide/sharing-ngmodules

#### Angular app architecture

* https://blog.angular-university.io/angular-2-redux-ngrx-rxjs/
* https://blog.angular-university.io/angular-ngrx-store-and-effects-crash-course/

#### Angular Redux/Store

* https://github.com/ngrx/platform
* https://github.com/HarmoWatch/ngx-redux-core

#### Angular 6 feature

* [CDK](https://blog.angular.io/a-component-dev-kit-for-angular-9f06e3b4b3b4)
  + https://material.angular.io/cdk/categories
* [elements](https://angular.io/guide/elements)
* [material](https://material.angular.io/)
  + [material icons](https://material.io/tools/icons/?style=baseline)
* [bootstrap](https://ng-bootstrap.github.io/#/home)
  + https://github.com/ng-bootstrap/ng-bootstrap

#### Angular themes

* https://github.com/vmware/clarity

#### Angular Tools

* https://blog.mgechev.com/2017/04/23/angular-tooling-codelyzer-angular-cli-ngrev/

#### Angular dynamic components

* https://angular.io/guide/dynamic-component-loader
* https://angular.io/guide/dynamic-form

#### Angular Builder UIs ...

* https://storybook.js.org/

####  ... for forms

* http://angular-formly.com/#!/
  + http://docs.angular-formly.com/v6.16.0/docs/gui-form-builders
* https://github.com/gms1/angular-dynaform
* https://github.com/toddmotto/angular-dynamic-forms

#### PrimeNG

* [component overview](https://www.primefaces.org/primeng/#/)
  + [icons](https://www.primefaces.org/primeng/#/icons)
  + [primeicons](https://github.com/primefaces/primeicons)
  + [fontawesome icons](https://www.primefaces.org/showcase/ui/misc/fa.xhtml)
* [ultima theme](https://www.primefaces.org/ultima/dashboard.xhtml)

### Immutable

* [list of libs](https://gist.github.com/jlongster/bce43d9be633da55053f)
* https://github.com/engineforce/ImmutableAssign

#### ImmutableJS

* http://thomastuts.com/blog/immutable-js-101-maps-lists.html
* http://untangled.io/immutable-js-every-way-to-create-an-immutable-map/

* https://github.com/facebook/immutable-js/issues/21
* https://github.com/ramda/ramda/issues/1367

### i18n

* https://formatjs.io/
* https://formatjs.io/guides/
* https://formatjs.io/guides/basic-i18n/
* https://formatjs.io/guides/runtime-environments/
* https://formatjs.io/integrations/
* https://formatjs.io/github/
* https://developer.mozilla.org/de/docs/Web/JavaScript/Reference/Global_Objects/NumberFormat

* http://blog.endpoint.com/2015/10/intl-javascript-numbers-and-dates.html
* https://stackoverflow.com/questions/5314237/is-there-a-functionality-in-javascript-to-convert-values-into-specific-locale-fo

#### Libs and Polyfills for i18n

* https://www.npmjs.com/package/intl
* https://github.com/andyearnshaw/Intl.js
* https://github.com/yahoo/intl-messageformat-parser
* https://github.com/globalizejs/globalize#number-module

* http://numeraljs.com/#locales
* https://www.npmjs.com/package/parse-decimal-number

* https://hacks.mozilla.org/2017/06/introducing-humblenet-a-cross-platform-networking-library-that-works-in-the-browser/

### Misc libs

* [stacktrace](https://www.stacktracejs.com/#!/docs/stacktrace-js)

### Forms and JS

* https://stackoverflow.com/questions/764427/how-to-capture-enter-key-being-pressed-on-pages-containing-multiple-forms

## Build

### Monorep

* https://github.com/reggi/lerna-tutorial

### Webpack

* https://github.com/webpack-contrib/extract-text-webpack-plugin/issues/216

### Minify

#### Uglify

* https://github.com/mishoo/UglifyJS2

## TypeScript

### Decorators

* https://github.com/Microsoft/TypeScript/issues/7342
* http://jonnyreeves.co.uk/2015/injecting-into-constructors-with-typescript-decorators/

### keyof

* https://blog.mariusschulz.com/2017/01/06/typescript-2-1-keyof-and-lookup-types
* http://www.chriskrycho.com/2016/keyof-and-mapped-types-in-typescript-21.html

## JS alternative languages

### Java on JS

* https://github.com/konsoletyper/teavm-flavour
* https://github.com/konsoletyper/teavm
* https://github.com/konsoletyper/teavm-flavour-examples-todomvc

## Javascript and 3d

* https://threejs.org/
