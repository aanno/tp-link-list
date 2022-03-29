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

### Svelte universe

* [svelte](https://svelte.dev/)
* [sapper (deprecated - now sveltekit)](https://sapper.svelte.dev/docs/#Comparison_with_Next_js) next for svelte
* [sveltekit](https://kit.svelte.dev/)
  + https://svelte.dev/blog/whats-the-deal-with-sveltekit

## SSR, 0kb JS, static HTML from JS

* https://jamstack.org/ (static first)
  + https://strapi.io/blog/jamstack
* https://dev.to/this-is-learning/is-0kb-of-javascript-in-your-future-48og
  
* https://preactjs.com/ (like react but ssr)
* https://short.is/writing/next.js-with-web-components-and-a-0kb-bundle
* [stencil - wc compiler](https://stenciljs.com/)

## Web components

* https://en.m.wikipedia.org/wiki/Web_Components
* https://www.ionos.de/digitalguide/websites/web-entwicklung/web-components/ featured
* https://developer.mozilla.org/de/docs/Web/Web_Components
* https://project-awesome.org/mateusortiz/webcomponents-the-right-way (list of lists)
* https://www.webcomponents.org/introduction
* https://blog.viadee.de/web-components-teil-2
* https://www.thinktecture.com/de/web-components/native-web-components-without-framework/
* https://medium.com/tuitech/implement-a-ui-library-with-web-components-de0bffcf39ff
* https://www.techtarget.com/searchsoftwarequality/tip/How-to-use-Web-Components-with-UI-design-tools
* https://blog.bitsrc.io/web-component-why-you-should-stick-to-react-c56d879a30e1
* https://kinsta.com/de/blog/web-komponenten/#web-component-kritikpunkte-und-probleme

* https://www.webcomponents.org/libraries
* [JS frameworks and there compatibility with wc](https://custom-elements-everywhere.com/)
* https://lit.dev/
  + https://github.com/web-padawan/awesome-lit featured
  + https://rodydavis.com/posts/flutter-and-lit/
  + [building tools for lit](https://lit.dev/docs/tools/production/)
  + https://github.com/lit/lit
  + [lit and RxJS 1](https://adrianfaciu.dev/posts/observables-litelement/)
  + [lit and RxJS 2](https://netbasal.com/lit-rxjs-made-for-each-other-ace3d13f3c24)
* https://slimjs.com/#/welcome

### Web Components Widgets

* https://blog.bitsrc.io/9-web-component-ui-libraries-you-should-know-in-2019-9d4476c3f103
* https://open-wc.org/guides/community/component-libraries/
* https://soshace.com/top-9-web-components-ui-libraries/
* [AXA Design System](https://patterns.axa.ch/?path=/story/guides-getting-started--getting-started)
  + [AXA pattern library](https://github.com/axa-ch-webhub-cloud/pattern-library)
* [Brightspace UI](https://github.com/BrightspaceUI)
  + [Brightspace UI core](https://github.com/BrightspaceUI/core) includes tables, lists, cards, and more
* [Ing Bank Lion](https://github.com/ing-bank/lion)
  + https://lion-web.netlify.app/components/content/accordion/overview/ (no tables)
* [Lightning](https://lwc.dev/) (aura based)
  + https://github.com/trailheadapps/ebikes-lwc
  + https://developer.salesforce.com/code-samples-and-sdks
  + https://developer.salesforce.com/blogs/2018/12/introducing-lightning-web-components

### Frontend architecture

#### Backends For Frontends (BFF)

* https://samnewman.io/patterns/architectural/bff/
* https://blog.bitsrc.io/bff-pattern-backend-for-frontend-an-introduction-e4fa965128bf

#### Backend APIs (i.e. no own backend)

* https://www.programmableweb.com/news/10-popular-backend-apis/brief/2020/10/11

### Frontend Frameworks

* https://totalcross.com/ (embedded devices)

#### Polymer

* https://www.heise.de/developer/meldung/Polymer-2-0-Googles-JavaScript-Bibliothek-macht-den-naechsten-Schritt-3718020.html

#### React

* https://reactjsexample.com/

##### React themes

* https://startreact.com/themes/
* https://market.nativebase.io/

##### React Widgets

* https://chakra-ui.com/

##### React tools

* https://nextjs.org/ server-side react framework (server-side rendering, serverless deployment)
  + https://en.wikipedia.org/wiki/Next.js
  + https://jamstack.org/what-is-jamstack/
  + https://jamstack.org/generators/
  + https://www.netlify.com/
  + https://en.wikipedia.org/wiki/Netlify
* [react documentation](https://dev.to/sankalpswami1122/5-tools-that-have-made-react-documentation-a-piece-of-cake-2750)
  + [docz](https://www.docz.site/) based on MDX and gatsby
  + [react-docgen](https://github.com/reactjs/react-docgen)

##### React Builder UIs...

* https://github.com/ipselon/structor

#### Redux

* Redux Best Practice https://medium.com/@kylpo/redux-best-practices-eef55a20cc72
  + https://github.com/reactjs/reselect (createSelector(Creator), createStructedSelector, defaultMemoize)
  + https://github.com/acdlite/redux-actions (createAction(s), handleAction(s) (statt switch), combineActions)
  + https://github.com/erikras/ducks-modular-redux (http://redux.js.org/docs/api/bindActionCreators.html) 
* https://blog.openreplay.com/redux-alternatives-in-2021/
  + https://swr.vercel.app/
  + https://redux-toolkit.js.org/
  + https://recoiljs.org/

#### Angular

* https://stackoverflow.com/questions/35368633/angular-2-download-pdf-from-api-and-display-it-in-view (pdf in view)
* https://github.com/sean-olson-e/Rapid-Application-Development-using-Angular-CLI

* https://github.com/angular/angular-cli

##### Angular Basics

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

##### Angular app architecture

* https://blog.angular-university.io/angular-2-redux-ngrx-rxjs/
* https://blog.angular-university.io/angular-ngrx-store-and-effects-crash-course/

##### Angular Redux/Store

* https://github.com/ngrx/platform
* https://github.com/HarmoWatch/ngx-redux-core

##### Angular 6 feature

* [CDK](https://blog.angular.io/a-component-dev-kit-for-angular-9f06e3b4b3b4)
  + https://material.angular.io/cdk/categories
* [elements](https://angular.io/guide/elements)
* [material](https://material.angular.io/)
  + [material icons](https://material.io/tools/icons/?style=baseline)
* [bootstrap](https://ng-bootstrap.github.io/#/home)
  + https://github.com/ng-bootstrap/ng-bootstrap

##### Angular themes

* https://github.com/vmware/clarity

##### Angular Tools

* https://blog.mgechev.com/2017/04/23/angular-tooling-codelyzer-angular-cli-ngrev/

##### Angular dynamic components

* https://angular.io/guide/dynamic-component-loader
* https://angular.io/guide/dynamic-form

##### Angular Builder UIs ...

* https://storybook.js.org/

#####  ... for forms

* http://angular-formly.com/#!/
  + http://docs.angular-formly.com/v6.16.0/docs/gui-form-builders
* https://github.com/gms1/angular-dynaform
* https://github.com/toddmotto/angular-dynamic-forms

##### PrimeNG

* [component overview](https://www.primefaces.org/primeng/#/)
  + [icons](https://www.primefaces.org/primeng/#/icons)
  + [primeicons](https://github.com/primefaces/primeicons)
  + [fontawesome icons](https://www.primefaces.org/showcase/ui/misc/fa.xhtml)
* [ultima theme](https://www.primefaces.org/ultima/dashboard.xhtml)

#### Vue (Vuejs)

* https://vuejs.org/
* [vue server site rendering (ssr)](https://ssr.vuejs.org/guide/hydration.html)
* [nuxt - vue framework](https://nuxtjs.org/)
  + [nuxt - static site generation](https://nuxtjs.org/docs/concepts/static-site-generation/)
  + https://www.heise.de/news/JavaScript-Nuxt-js-3-unterstuetzt-TypeScript-und-integriert-Vite-js-6214270.html

#### Other UI Frameworks

* https://www.solidjs.com/ (no Shadow-DOM, react influenced)
  + https://github.com/solidjs/solid
* https://svelte.dev/
* https://lit.dev/
* https://preactjs.com/ (react-replacement)
* https://www.solidjs.com/ (react-like)

### Components development

* https://bit.dev/docs/quick-start
  + https://bit.cloud/
  + https://blog.bitsrc.io/how-is-bit-dev-different-from-storybook-892b373733bd
  + https://brandres.medium.com/introduction-to-bit-dev-bit-harmony-for-managing-our-react-native-components-d623517db0e0
* https://www.outsystems.com/

### UI Widget development

* https://storybook.js.org/
* https://react-styleguidist.js.org/

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

* https://www.snowpack.dev/
  + https://www.snowpack.dev/plugins
* https://vitejs.dev/guide/ (js, vue, react, preact, lit, svelte)
  + vite is rollup compatible: https://vitejs.dev/guide/api-plugin.html#path-normalization
* https://rollupjs.org/guide/en/
* https://deno.land/ (whole JS runtime, speaks TS)

### Monorep

* https://github.com/reggi/lerna-tutorial

### Webpack

* https://github.com/webpack-contrib/extract-text-webpack-plugin/issues/216
* https://www.heise.de/news/Vite-js-2-0-erschienen-JavaScript-Werkzeug-ist-reif-fuer-den-Produktivbetrieb-5062097.html

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

## Content Delivery Networks

* https://jspm.org/
