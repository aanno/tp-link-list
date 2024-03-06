# Serverless, BaaS (Backend-as-Service), Functions

* [BaaS vs serverless](https://www.cloudflare.com/de-de/learning/serverless/glossary/backend-as-a-service-baas/)

## BaaS and Serverless

* https://www.heise.de/developer/artikel/Serverless-Computing-Teil-1-Theorie-und-Praxis-3756877.html
* https://www.future-processing.com/blog/serverless-with-java/
* https://opensource.com/article/18/11/open-source-serverless-platforms
* https://blog.codecentric.de/2020/12/serverless-java-aws-zwei-jahre-cloud-native/

## BaaS Cloud Services (mostly commercial)

* [AWS amplify](https://aws.amazon.com/de/amplify/)
* [back4app](https://www.back4app.com/) based on parse
  + consists of BaaS Server, cloud to deploy containers (like ECS), and AI for build

## BaaS Server (and infrastructure)

* [parse](https://parseplatform.org/) JS based
  + [github parse](https://github.com/parse-community/parse-server)
  + [docs](https://docs.parseplatform.org/parse-server/guide/)
* [kuzzle](https://kuzzle.io/) semi-commercial, IoT-faced
  + [kuzzle PaaS](https://kuzzle.io/kuzzle-iot-open-source-platform/kuzzle-paas/)
  + [github kuzzle server](https://github.com/kuzzleio/kuzzle) in Js/TS

## Serverless with Tech Stack X

* https://spring.io/serverless
* (serverless on kubernetes)[https://kyma-project.io/]
  + https://kyma-project.io/docs/kyma/latest/01-overview/main-areas/
  + [busola - web frontend for kyma](https://github.com/kyma-project/busola)
* [serverless haskell](https://github.com/seek-oss/serverless-haskell) haskell on AWS lambda with serverless.com

## Serverless platforms

* [cloudflare workers](https://workers.cloudflare.com/)
* [serverless.com](https://www.serverless.com/) semi-commercial
  + [docs](https://www.serverless.com/framework/docs)
  + [serverless plugins](https://www.serverless.com/plugins)
  + https://github.com/serverless/serverless
* [open source part of serverless.com](https://www.serverless.com/open-source/) (node-based)
  + https://www.serverless.com/blog/how-to-create-a-rest-api-in-java-using-dynamodb-and-serverless/
* [openwisk](https://github.com/apache/openwhisk) scala based, multilang, multicloud
  + [openwisk architecture](https://github.com/apache/openwhisk/blob/master/docs/about.md)
  + [openwisk programming model](https://openwhisk.apache.org/documentation.html)
  + https://openwhisk.apache.org/
* [OpenFunction](https://github.com/OpenFunction/OpenFunction) go-lang based, CNCF Sandbox
  + [docs](https://openfunction.dev/docs/introduction/)
  + https://openfunction.dev/
* [knative](https://www.baeldung.com/ops/knative-serverless)
  + https://knative.dev/docs/
  + https://docs.openshift.com/container-platform/4.13/cli_reference/kn-cli-tools.html
* [spring cloud function](https://www.baeldung.com/spring-cloud-function)
  + https://spring.io/serverless
* [spring on knative](https://piotrminkowski.com/2021/03/01/spring-boot-on-knative/)
* [knative](https://knative.dev/)
  + https://www.redhat.com/de/topics/microservices/what-is-knative
  + [kourier](https://github.com/knative-extensions/net-kourier) lightweight alternative for the Istio ingress for knative
* [openfaas](https://www.openfaas.com/) event-driven functions and microservices to Kubernetes in go-lang
  + [github openfaas](https://github.com/openfaas/faas)
  + [faas-netes](https://github.com/openfaas/faas-netes) openfaas on kubernetes provider
  + [faasd](https://github.com/openfaas/faasd) alternative single-node provider
* [fission](https://github.com/fission/fission) Serverless Functions for Kubernetes in go-lang
  + https://fission.io/
* [fn project](https://fnproject.io/) multilang (go-lang, JS, python, ruby, java, C#), cloud _agnostic_ in go-lang (old)
  + [docs](https://github.com/fnproject/docs)
  + [operation / production](https://github.com/fnproject/docs/blob/master/fn/operate/production.md)
  + [fn project UI dashboard](https://github.com/fnproject/ui)
