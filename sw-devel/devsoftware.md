# Software for developers

## Blogs

* https://habr.com/en/
* https://www.dev-insider.de
* https://opensource.com
* https://news.itsfoss.com/
* https://www.capitalone.com/tech/software-engineering/
* https://www.infoq.com/

## Papers

* [the journal of open source software](https://joss.theoj.org/)

## OS

* https://github.com/f9micro/f9-kernel (MCU, kernel for ARM M4) 

## Business Automation

* https://camunda.com/de/

### Activiti

* https://www.activiti.org/
* http://www.baeldung.com/activiti-kickstart-and-rest-apps
* https://github.com/Activiti/Activiti-AngularApp


## Container software

* https://linuxcontainers.org/
* [rootless mode in docker/moby](https://github.com/moby/buildkit/blob/master/docs/rootless.md)
* https://github.com/rootless-containers/rootlesskit
* https://en.wikipedia.org/wiki/Singularity_(software) HPC container, nvida and cuda friendly
  + https://github.com/sylabs/singularity
  + https://sylabs.io/2022/06/singularityce-is-singularity/
  + https://docs.sylabs.io/guides/3.11/user-guide/security.html

## Container build

* https://paketo.io/
  + https://paketo.io/docs/
* https://github.com/GoogleContainerTools/jib
*  https://buildah.io/
  + https://developers.redhat.com/blog/2019/08/14/best-practices-for-running-buildah-in-a-container/
  + https://www.projectatomic.io/blog/2018/03/building-buildah-container-image-for-kubernetes/
* https://github.com/genuinetools/img - standalone, daemon-less, unprivileged Dockerfile and OCI compatible container image builder
* BuiltKit
  + https://docs.docker.com/develop/develop-images/build_enhancements/
  + https://pythonspeed.com/articles/podman-buildkit/
  + https://pythonspeed.com/articles/docker-cache-pip-downloads/
  + https://github.com/moby/buildkit#daemonless
  + https://blog.erebe.dev/blog/speed-up-your-ci-with-buildkit/
* [kiwi iso/image builder](https://osinside.github.io/kiwi/image_types_and_results.html)

## Testing

* https://www.testcontainers.org/
* https://avocado-framework.github.io/
  + https://github.com/avocado-framework/avocado
  + https://github.com/avocado-framework/avocado-vt (test for virtualization)
* [sakuli](https://sakuli.io/#features) container-based e2e testing - partly commercial
* [plainbox - testing with hardware dependencies](https://launchpad.net/plainbox)

### Metrics

### Visualization on tests

* https://maibornwolff.github.io/codecharta/
  + https://www.maibornwolff.de/blog/code-charta-fuer-ethereum
  + https://github.com/MaibornWolff/codecharta
* https://github.com/MaibornWolff/TestVille
  + https://www.maibornwolff.de/blog/testautomatisierung-baumstruktur-wird-strasse

## Message queues

* https://www.cloudamqp.com/blog/when-to-use-rabbitmq-or-apache-kafka.html
* https://www.kai-waehner.de/blog/2021/04/20/comparison-open-source-apache-kafka-vs-confluent-cloudera-red-hat-amazon-msk-cloud/

### Message queue software

* https://www.g2.com/products/rabbitmq/competitors/alternatives
* https://nats.io/
  + https://docs.nats.io/compare-nats
  + https://docs.nats.io/jetstream/jetstream (exactly once)
  + https://github.com/nats-io/nats.java (java client)
  + https://docs.nats.io/compare-nats compare NATS to gRPC, kafka, pulsar, and rabbitMq
* https://www.rabbitmq.com/
* https://kafka.apache.org/
* https://pulsar.apache.org/

### Dyne/Decode/Zenroom

* https://decodeproject.eu/blog/cryptographic-data-integrity-multiplatform-environment
* https://zenroom.org/
* https://github.com/dyne/Zenroom
* https://www.dyne.org/

## Editor/IDE

* https://atom.io/packages/proton-mode
* https://orionhub.org/

## Coding helpers

* [github copilot](https://github.com/github/copilot-docs)

### VS Code

* https://github.com/Microsoft/vscode
* https://wiki.archlinux.org/title/Visual_Studio_Code
* https://vscodium.com/ (vscode without telemetry)
  + https://github.com/VSCodium/vscodium
* https://github.com/Microsoft/monaco-editor

* https://code.visualstudio.com/shortcuts/keyboard-shortcuts-linux.pdf

#### VS Code extensions

* [omnisharp](https://www.omnisharp.net/) .NET support vscode (and others)

#### VS Code Tips

* [dev Container support](https://code.visualstudio.com/docs/devcontainers/create-dev-container) devcontainer.json

#### based on VS Code

* https://github.com/eclipse/lsp4j

#### Theia

* http://theia-ide.org/
  + https://github.com/theia-ide/theia
  + https://github.com/eclipse-theia/theia
  + https://github.com/eclipse-theia/theia/blob/master/doc/Developing.md run theia from sources
  + https://typefox.io/theia-may-2018-update
  + https://projects.eclipse.org/proposals/eclipse-theia
  + https://typefox.io/
* https://eclipsesource.com/de?p=41921 launch and usage scenarios
* https://eclipsesource.com/de?p=40696 theia and che
* https://eclipsesource.com/de/blogs/2019/10/17/how-to-add-extensions-and-plugins-to-eclipse-theia/ use code extension in theia
* https://theia-ide.org/docs/
  + https://eclipsesource.com/de?p=42068 plugins vs. extensions
  + https://github.com/eclipse-theia/theia/wiki/Testing-VS-Code-extensions using vs code extension (vsix)
  + https://theia-ide.org/docs/authoring_extensions
  + https://theia-ide.org/docs/authoring_plugins
* https://www.eclipse.org/che/getting-started/cloud/ (saas service)
* https://www.gitpod.io/ (saas service)
* https://www.gitpod.io/docs/git/ git integration in theia
* cloud (docker)
  + https://www.eclipse.org/che/
  + https://github.com/eclipse/che
  + https://github.com/eclipse/che-theia theia docker image with che support
  + https://github.com/theia-ide/theia-apps theia docker images
  + https://github.com/TypeFox/theia-workshop learning theia
  
## Off-Heap DBs (and related)

* http://www.mapdb.org/
* https://github.com/RuedigerMoeller/fast-serialization/wiki/Off-Heap-Maps,-Persistent-Maps
* https://github.com/snazy/ohc
* https://github.com/airlift/slice
* https://hollow.how/

## DB/SQL

* https://www.capitalone.com/tech/software-engineering/active-active-shared-nothing-database-architecture/

### RDB

* https://kinsta.com/blog/mariadb-vs-postgresql/

### General SQL Admin Tools

* https://wiki.postgresql.org/wiki/PostgreSQL_Clients (mostly general tools)
* https://www.adminer.org/de/
* https://github.com/hangum/TadpoleForDBTools

* https://dbeaver.io/
* http://squirrel-sql.sourceforge.net/

### Airtable like (using DB as excelsheet directly on the web)

* [NocoDB - open source Airtable](https://github.com/nocodb/nocodb)
  + https://docs.nocodb.com/

### Postgresql tools

* https://www.pgadmin.org/
* https://pgdash.io/

### MariaDB tools

* https://www.plothost.com/kb/top-five-software-access-mysql-mariadb-servers/
* https://mariadb.com/kb/en/mariadb/database-workbench/
* https://dev.mysql.com/downloads/workbench/
* https://sqlectron.github.io/
* http://www.databasejournal.com/features/mysql/slideshows/top-10-mysql-gui-tools.html
* https://www.devart.com/dbforge/mysql/studio/mariadb-gui-client.html
* https://teamsql.io
* http://www.oracle.com/technetwork/developer-tools/sql-developer/overview/index.html
* [vitess](https://vitess.io/) horizontal scaling for mySQL
  + https://github.com/vitessio/vitess

## CMS (and related)

* https://github.com/postlight/awesome-cms

* https://docs.ponzu-cms.org/
  + https://headlesscms.org/projects/ponzu/
* https://www.sourcefabric.org/
* https://enonic.com/
  + https://www.cmscritic.com/enonic-review/
  + http://xp.readthedocs.io/en/stable/developer/ssjs/index.html
  + https://purplejs.io/
    - https://github.com/purplejs/purplejs-examples
* https://www.jahia.com/de/home
* https://www.nuxeo.com/de/
* https://github.com/relax/relax
* https://plone.org/
  + https://docs.plone.org/
  + https://docs.plone.org/4/en/old-reference-manuals/archgenxml/ (generator for plone)
* https://www.concretecms.com/about/features open source, php
  + https://github.com/concretecms/concretecms
  + https://www.concrete5.de/

### Wordpress wp

* https://www.wordpressdocker.com/
* https://www.devoply.com/ A hosting control panel that installs, configures, and manages multiple WordPress
* https://wpbuffs.com/how-to-update-wordpress-website/ update wordpress
* https://stackoverflow.com/questions/50119409/how-to-update-wordpress-on-docker
* https://www.ionos.de/digitalguide/server/knowhow/wordpress-in-docker-containern/
* https://www.wpbeginner.com/beginners-guide/beginners-guide-to-wordpress-file-and-directory-structure/

### CMS cloud services

* [prismic - make your website editable](https://prismic.io/) supports next.js, nuxt.js, gatsby

### Git based CMS

* https://www.netlifycms.org/ (jamstack-based)
  + https://github.com/netlify/netlify-cms
* https://github.com/misterfresh/react-drive-cms (google-drive-based)
* https://getgrav.org/ (flat-file based)
* https://tina.io (headless, git based)

### Headless CMS and API server

* [What is a headless CMS](https://www.coredna.com/blogs/headless-vs-decoupled-cms)
* https://cmsstash.de/empfehlungen/headless-cms
* https://headlesscms.org
* https://jamstack.org/headless-cms/ (includes api-based and git-based software)
* https://www.altkomsoftware.com/blog/headless-cms-microservice/ (based on hippo)

* https://sylvainleroy.com/2017/10/15/Headless-CMS-What-to-choose/
* https://dev.acquia.com/blog/nodejs-and-headless-cms-the-backend-building-blocks/01/03/2018/19201

* [payload](https://github.com/payloadcms/payload) typescript, Express, MongoDB and React
  + https://payloadcms.com/use-cases
  + https://demo.payloadcms.com/admin/login
* https://github.com/apostrophecms/apostrophe-headless
  + https://apostrophecms.org/docs/technical-overviews/technical-overview.html
  + https://apostrophecms.org/features
* https://getmesh.io/Download (java)
  + https://getmesh.io/docs/beta/
* https://github.com/beachio/chisel
  + based on parse platform
  + https://github.com/parse-community/parse-server-example
  + http://parseplatform.org
  + server
    - https://github.com/parse-community/parse-server
    - http://docs.parseplatform.org/parse-server/guide/
  + dashboard (admin)
    - https://github.com/parse-community/parse-dashboard
  + rest
    - http://docs.parseplatform.org/rest/guide/
  + js
    - https://github.com/parse-community/Parse-SDK-JS
    - http://docs.parseplatform.org/js/guide/
    - http://parseplatform.org/Parse-SDK-JS/api/v1.11.1/
* https://github.com/typicode/json-server
* http://crudl.io/
* https://jackrabbit.apache.org/oak/ (content repository)
  + https://github.com/apache/jackrabbit-oak

#### Featured headless

* https://www.slant.co/options/20706/alternatives/~netlify-cms-alternatives
* https://strapi.io/ (small companies)
  + https://github.com/strapi/strapi
  + https://blog.strapi.io/building-a-static-website-using-gatsby-and-strapi/
* http://keystonejs.com/ (node-based, GraphQL, Admin UI)
  + https://www.keystonejs.com/blog/prisma-adapter/
  + https://www.prisma.io/
* https://www.netlifycms.org/ (with react widgets)
  + https://www.netlifycms.org/docs/widgets/
* https://flextype.org/ (hybrid)
* https://directus.io/ (RDBM, SQL)
* https://getcockpit.com/ (Api first, GraphQL)
* https://github.com/birkir/prime (small, GraphQL)
* https://github.com/squidex/squidex
  + https://squidex.io/
  + https://medium.com/squidex/squidex-7-1-released-graphql-subscriptions-and-translation-status-e52386440a1a

#### Strapi universe

* [strapi plugins](https://market.strapi.io/)
* [stapi docs](https://docs.strapi.io/developer-docs/latest/getting-started/introduction.html)
* [strapi CLI(https://docs.strapi.io/developer-docs/latest/setup-deployment-guides/installation/cli.html)
* [strapi and svelte](https://strapi.io/integrations/svelte-cms)
* [stapi, gatsby](https://strapi.io/integrations/gatsby-cms)
* [Convert the Strapi models to TypeScript interfaces](https://github.com/erikvullings/strapi-to-typescript)
  + https://alexdevmotion.medium.com/typescript-for-strapi-lifes-too-short-to-es5-1cc852fbf504
* [use quill html editor in strapi](https://strapi.io/blog/how-to-change-the-default-wysiwy-to-quill-editor)

#### Blogs examples based on headless CMS (mostly static site creation)

* https://medium.com/hackernoon/react-js-cms-blog-tutorial-e090c699845b (next, react, buttercms)
* https://carlosvin.github.io/langs/en/posts/this-is-sapper/ 
  (sapper (now sveltekit), asciidoctor, code highlighting, rollup)
* https://strapi.io/blog/build-a-static-blog-with-gatsby-and-strapi (gatsby 4, strapi 4)
* https://strapi.io/blog/build-a-blog-with-next-react-js-strapi (strapi 3, next, react)
* https://strapi.io/blog/build-a-blog-with-react-strapi-and-apollo (strapi 3, apollo, react)
* https://strapi.io/blog/build-a-blog-with-vue-strapi-and-apollo (strapi 3, vue, apollo)
* https://strapi.io/blog/how-to-create-a-blog-with-svelte-kit-strapi (strapi 4, sveltekit)
* https://strapi.io/blog/how-to-build-a-blog-with-astro-strapi-and-tailwind-css (strapi 4, astro, tailwind)
* https://strapi.io/blog/strapi-starter-react-blog (strapi 3, react)
* https://strapi.io/blog/rendering-react-ssr-with-deno-and-deno-deploy (strapi 4, react, deno)

### Head-only frameworks (js to ssr, modern static generators)

* https://www.gatsbyjs.com/ (asciidoctor, katex, ...)
* https://astro.build/
  + https://github.com/withastro/astro/tree/main/packages/renderers/renderer-lit
    - https://web.dev/declarative-shadow-dom/
* https://markojs.com/

### Static Site Generators

* https://www.staticgen.com/
* https://staticsitegenerators.net/
* https://snipcart.com/blog/choose-best-static-site-generator
* https://www.cmswire.com/digital-experience/15-static-site-generators-to-complement-your-headless-cms/

* https://gohugo.io/
* https://jekyllrb.com/
  + http://jekyllbootstrap.com/
  + https://github.com/asciidoctor/jekyll-asciidoc
    - https://yermilov.github.io/blog/2017/02/20/using-jekyll-asciidoctor-and-github-pages-for-static-site-creation/
    - http://eshepelyuk.github.io/2014/11/06/advanced-jekyll-and-asciidoctor.html
    - https://github.com/asciidoctor/jekyll-asciidoc/issues/171 (book generation)
* https://jbake.org/
* https://www.gatsbyjs.org/ (react-based)
  + https://github.com/gatsbyjs/gatsby
  + https://github.com/gatsbyjs/gatsby/issues/1199
* https://hexo.io/
  + https://hexo.io/plugins/
* https://nanoc.ws/
* https://getnikola.com/
  + https://getnikola.com/blog/a-cms-or-two-for-nikola-dato-cms-and-netlify-cms-integration.html
* http://awestruct.org/
* https://www.mkdocs.org/ (heads towards documentation)
  + https://github.com/mkdocs/mkdocs/
* [Eleventy](https://www.11ty.dev/docs/) template-agnostic, just-in-time (serverless)
* [pelican](https://blog.getpelican.com/category/news.html)
  + https://docs.getpelican.com/en/latest/ (python, markdown)

* [publii](https://getpublii.com/) static side cms
  + https://linuxnews.de/backend-gefluester-wechsel-des-cms-serverless/
* [bludit](https://www.bludit.com/) flat-file cms
* [middleman](https://middlemanapp.com/) ruby-based
  + https://github.com/middleman/middleman

#### Site generators based on OPA

* [vue 1](https://blog.bitsrc.io/best-static-site-generators-for-vue-js-e273d52ea208?gi=dfba03caa602)
* [vue 2](https://vue-community.org/guide/ecosystem/static-site-generators.html)
* [Rendering of MathJax in Vue](https://blog.karatos.in/a?ID=01800-ae296da6-7846-488d-8978-9c8c0a9ffc2f)
* [react](https://blog.bitsrc.io/7-top-react-static-site-generators-in-2020-5850ae275821?gi=e018431eaa17)
* [react: write your own](https://indepth.dev/posts/1454/)building-a-react-static-site-generator-in-20-lines-of-code-4-dependencies-and-no-transpilers)

#### Generators and CMS

* https://graphcms.com/blog/static-site-generation-using-graphcms-spike-and-netlify/
* https://blog.strapi.io/building-a-static-website-using-gatsby-and-strapi/
* https://getnikola.com/blog/a-cms-or-two-for-nikola-dato-cms-and-netlify-cms-integration.html
* https://www.cmswire.com/digital-experience/15-static-site-generators-to-complement-your-headless-cms/

### Dev-centric (blogs, markdown, asciidoctor)

* https://www.webpagefx.com/blog/web-design/open-source-blogging-platforms-for-developers/
* https://opensource.com/article/17/8/asciidoc-web-development
  + https://github.com/opensourceway/asciidoc-blog
* https://github.com/HubPress/hubpress.io
* https://www.netlifycms.org/ (git and generator based)
* http://openlivewriter.org/

## SSO and related

* https://en.wikipedia.org/wiki/List_of_single_sign-on_implementations
* https://nextcloud.com/blog/security-in-nextcloud-12-new-authentication-mechanisms/
  (useful overview for SSO solutions)

* https://www.privacyidea.org/ (2factor enhancer)
  + https://www.privacyidea.org/about/features/
* https://ipsilon-project.org/
* http://manageiq.org/docs/reference/euwe/auth/ipa_2fa
* https://www.openpolicyagent.org/ (policy enforcement for devops: terraform, kubernetes, ...)

### Articles

* https://rhelblog.redhat.com/2016/03/22/red-hat-federation-story-ipsilon-keycloak-a-clash-of-the-titans/
* https://adam.younglogic.com/2016/08/ooo-ha-fed-poc/#more-4487

## Identity Access Management (IAM) - Single sign on (SSO)

* [casdoor](https://casdoor.org/) multi lang OAuth 2.0, OIDC, SAML and CAS, integrated with flexible RBAC and ABAC permission management
  + https://github.com/casdoor/casdoor
  + [casbin](https://casbin.org/) multi lang authorization library that supports access control models
    - [adapters](https://casbin.org/docs/adapters/) policy storage implementations are called adapters
    - [role manager](https://casbin.org/docs/role-managers/) manage the RBAC role hierarchy (user-role mapping)
  + [jcasbin](https://github.com/casbin/jcasbin) java implementation of casbin

### IAM as SaaS

* [okta](https://www.okta.com/de/)
* [stytch](https://stytch.com/docs)

### freeIPA

* https://www.digitalocean.com/community/tutorials/how-to-set-up-centralized-linux-authentication-with-freeipa-on-centos-7
  (featured)
* https://wiki.archlinux.org/index.php/FreeIPA

* https://en.m.wikipedia.org/wiki/FreeIPA
* https://www.freeipa.org/page/Documentation
* https://www.freeipa.org/page/HowTos
* https://www.freeipa.org/page/Deployment_Recommendations
* https://www.freeipa.org/page/IPAv3_Architecture
* https://www.freeipa.org/page/V4/OTP
* https://community.hortonworks.com/articles/59645/ambari-24-kerberos-with-freeipa.html
* https://www.freeipa.org/page/ARM

#### freeIPA and Windows

* https://www.freeipa.org/page/Windows_authentication_against_FreeIPA
  + http://pgina.org/

#### freeIPA and Docker/Container

* http://daf-docs.readthedocs.io/en/latest/installation/docker/freeipa.html
* https://www.freeipa.org/page/Docker
* https://www.projectatomic.io/blog/2014/10/containerized-directory-services-with-docker-and-freeipa/
* https://github.com/freeipa/freeipa-container

#### freeIPA components

* https://www.freeipa.org/page/Directory_Server
  + https://www.freeipa.org/page/HowTo/LDAP
* http://www.dogtagpki.org/wiki/PKI_Main_Page
  + http://www.dogtagpki.org/wiki/IPA_Container
* https://www.freeipa.org/page/Kerberos
* sssd
  + https://github.com/herlo/freeipa/blob/master/client/sssd.conf
* https://www.freeipa.org/page/Client
  
### CAS

* https://apereo.github.io/cas/
  + https://github.com/apereo/cas
  + https://github.com/apereo/cas-webapp-docker
* https://apereo.github.io/cas/5.2.x/planning/Architecture.html
* http://www.securityandit.com/security/cas-and-kerberos-protocol/
  
### CAS Installation

* https://apereo.github.io/2018/06/09/cas53-gettingstarted-overlay/
* https://apereo.github.io/cas/5.2.x/installation/Maven-Overlay-Installation.html
* https://apereo.github.io/cas/5.2.x/installation/Configuring-Ticketing-Components.html
* https://apereo.github.io/cas/5.2.x/installation/Troubleshooting-Guide.html
* https://hub.docker.com/r/apereo/cas/
  
### CAS Authorization

* https://apereo.github.io/2018/02/20/cas-service-rbac-attributeresolution/
* https://apereo.github.io/cas/4.2.x/installation/Configuring-Service-Access-Strategy.html
* https://github.com/apereo/person-directory
  + https://groups.google.com/a/apereo.org/forum/#!topic/cas-user/VVaONIp1Ts0
* https://apereo.github.io/cas/5.2.x/integration/Attribute-Resolution.html
  + https://apereo.github.io/cas/5.2.x/integration/Attribute-Release.html

### CAS Integration

* OAuth2/OpenID: https://apereo.github.io/cas/5.0.x/installation/OAuth-OpenId-Authentication.html

### keycloak

* https://www.keycloak.org/documentation.html

#### keycloak integration

* https://www.keycloak.org/docs/3.0/server_admin/topics/user-federation/sssd.html
* https://www.keycloak.org/docs/latest/server_admin/index.html#_sssd
* freeIPA
  + https://github.com/mposolda/keycloak-freeipa-docker
  + https://github.com/keycloak/keycloak-test-docker-images/blob/master/keycloak-sssd-integration-tests/docker-compose.yml
  + https://hub.docker.com/r/mposolda/keycloak-freeipa-server/
  
### Shibboleth

* https://www.shibboleth.net/
  + https://wiki.shibboleth.net/confluence/display/SHIB2/Home
  + https://wiki.shibboleth.net/confluence/display/CONCEPT
  
### Active Directory/Samba4/AD

#### Kerberos

* https://ssimo.org/blog/id_016.html
* https://www.techblog.moebius.space/posts/2018-05-25-kerberos-an-overview-of-principals-and-keytabs/
* 

##### Keytabs

* https://www.systranbox.com/how-to-create-krb5-keytab-file-in-linux/
* https://stackoverflow.com/questions/43153592/what-is-needed-to-generate-kerberos-keytab-file-on-windows
* https://techjogging.com/create-keytab-file-for-kerberos-authentication-in-windows.html
* https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/ktpass

#### Samba4 AD docker images

* https://github.com/Fmstrat/samba-domain
* https://github.com/ksonohara/docker
* https://github.com/bodsch/docker-samba4

## Backends

* https://www.boundaryproject.io/

### LDAP

* https://docs.fedoraproject.org/f28/system-administrators-guide/servers/Directory_Servers.html (good overview)
* https://www.howtoforge.com/linux_ldap_authentication (OpenLDAP and PAM client configuration)
* https://wiki.gentoo.org/wiki/Centralized_authentication_using_OpenLDAP
* https://de.wikipedia.org/wiki/Lightweight_Directory_Access_Protocol

## Middleware

## Language Middleware

* http://shiro.apache.org/index.html
  + https://github.com/bujiio/buji-pac4j
* https://github.com/pac4j/pac4j
* https://docs.spring.io/spring-security/site/docs/5.0.5.RELEASE/reference/htmlsingle/

## Client

### Apache httpd

* https://github.com/apereo/mod_auth_cas
* https://github.com/zmartzone/mod_auth_openidc

### SSSD

* https://fedoraproject.org/wiki/Features/SSSD
* https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/system-level_authentication_guide/sssd
* https://wiki.contribs.org/Client_Authentication:Fedora_via_sssd/ldap
* http://www.admin-magazin.de/Das-Heft/2012/03/Der-System-Security-Services-Daemon
* https://fedoraproject.org/wiki/How_to_debug_SSSD_problems
* https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/deployment_guide/sssd-introduction
* https://www.adelton.com/docs/containers/fedora-sssd-container
* https://docs-old.fedoraproject.org/en-US/Fedora/18/html/FreeIPA_Guide/setting-up-clients.html

### Emerging SSO

* https://www.authelia.com/
  + https://github.com/authelia/authelia
* https://identity.foundation/ id wallet spec
  + https://lissi.id/ id wallet implementation
  + https://github.com/Fluepke/ssi-poc PoC exploit (flawed spec)

#### OAuth2

* https://github.com/babelouest/glewlwyd
* https://github.com/ory/hydra
* https://openid.net/developers/certified/
* https://andifalk.gitbook.io/openid-connect-workshop/

#### JWT

* Example: https://support.zendesk.com/hc/de/articles/203663816-Einrichten-des-Single-Sign-On-mit-JWT-JSON-Web-Token-

## Proxy

### Socks5

#### Server

* https://github.com/z3APA3A/3proxy
* https://github.com/ZhangJiupeng/AgentX (netty-based)
* http://www.squid-cache.org/ (socks5 can be compiled in)
  + https://wiki.squid-cache.org/Features/Socks

#### Misc

* https://github.com/securesocketfunneling/ssf
* https://catonmat.net/linux-socks5-proxy (ssh and socks5)
* https://shadowsocks.org/en/index.html
  + https://en.wikipedia.org/wiki/Shadowsocks

#### Client and Libs

* https://github.com/JoshGlazebrook/socks
* https://github.com/sethmlarson/socksio

## Continuous Integration (CI/CD)

* https://github.com/ligurio/awesome-ci
* https://www.ionos.de/digitalguide/websites/web-entwicklung/continuous-integration-tools/
* https://anchore.com/blog/5-cicd-platforms-container-technology/
* https://cloud.redhat.com/blog/top-open-source-ci/cd-tools-for-kubernetes-to-know
* https://earthly.dev/ container-based solution to CI/CD featured!
  + https://github.com/earthly/earthly
* https://github.com/orbitalci/orbital
* https://concourse-ci.org/
  + https://github.com/concourse/concourse
* https://www.infrabox.net
* https://cctray.org/servers/ tray client app for CI/CD (but also a list of CI/CD servers)

### Web Services (commercial)

* https://www.cloudbees.com/products/codeship

### Open Source Projects

* https://www.waypointproject.io/ (ci for cloud)

### Web Services (commercial)


## DevOps

* https://gruntwork.io/how-it-works/
  + https://gruntwork.io/infrastructure-as-code-library/#open-source

### Site Reliability Engineering (SRE)

* https://sre.google/books/ free books!

## Ticket systems (like jira)

* https://github.com/znuny/Znuny
  + https://www.znuny.org/de
  + https://www.heise.de/news/Ticketsystem-Znuny-7-als-Open-Source-Alternative-zu-OTRS-8969167.html
