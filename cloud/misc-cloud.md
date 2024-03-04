# Misc cloud

## Blogs

* https://www.augmentedmind.de/

## Learn Cloud

* https://kodekloud.com/ commercial

## CNCF

* https://www.cncf.io/
* https://landscape.cncf.io/ overview
* https://raw.githubusercontent.com/cncf/trailmap/master/CNCF_TrailMap_latest.png categories

## Orchestration

* https://www.dev-insider.de/container-orchestration-tools-im-vergleich-a-888150/
* https://opensource.com/article/19/8/cloud-native-projects
* https://www.nomadproject.io/

## Monitoring

* https://techbeacon.com/enterprise-it/9-top-open-source-tools-monitoring-kubernetes

### Web Services (commercial)

* https://sentry.io/welcome/
* https://www.intercom.com/
* https://www.graylog.org/products/open-source (partly open source)

## Cool Operators/Applications

* https://github.com/jupyterhub/jupyterhub
  + https://zero-to-jupyterhub.readthedocs.io/en/latest/

## Container developement

* https://www.eclipse.org/codewind/

## Testing

### Web Services (commercial)

* https://www.cypress.io/

## Cloud building blocks


### Neflix OSS (non-java parts)

* [titus](https://netflix.github.io/titus/) container management, AWS, docker
  + https://queue.acm.org/detail.cfm?id=3158370
  + [titus-executor](https://github.com/Netflix/titus-executor) titus container on docker
* [spinnaker](https://spinnaker.io/) CI for cloud
  + [supported cloud providers](https://spinnaker.io/docs/setup/install/providers/)
  + https://spinnaker.io/docs/setup/install/halyard
* [dispatch](https://hawkins.gitbook.io/dispatch/) developer tools/Infrastructure automation
* [Mantis](https://netflix.github.io/mantis/) stream-processing jobs with query language
  + https://github.com/Netflix/mantis

### Big Data

* [metaflow](https://github.com/Netflix/metaflow) netflix stack
  + https://docs.metaflow.org/introduction/why-metaflow
* [atlas](https://github.com/Netflix/atlas) netflix stack: Backend for managing dimensional time series data
  + https://github.com/Netflix/atlas/wiki
  
### App Gateway

* [zuul](https://github.com/Netflix/zuul) netflix stack

### Fault tolerance

* [Hystrix](https://github.com/Netflix/Hystrix) netflix stack, old
* [resilience4j](https://github.com/resilience4j/resilience4j) replacement for Hystrix, netflix stack

### Container registries

* [Eureka](https://github.com/Netflix/eureka) netflix stack

### Dynamic Configuration

* [archaius](https://github.com/Netflix/archaius)
 
## Service Mesh and API Gateways

* https://platform9.com/blog/kubernetes-service-mesh-a-comparison-of-istio-linkerd-and-consul/
* https://techbeacon.com/app-dev-testing/9-open-source-service-meshes-compared
* https://stackshare.io/istio/alternatives
* https://www.solo.io/open-source/#

### Implementations

* https://www.consul.io/docs/architecture
* https://traefik.io/
* [envoy](https://www.envoyproxy.io/)
  + https://www.envoyproxy.io/docs/envoy/latest/intro/arch_overview/arch_overview
  + https://github.com/envoyproxy/envoy
  + [envoy webassembly hub - centralized place for envoy extensions](https://docs.solo.io/web-assembly-hub/latest)
    - https://github.com/solo-io/wasm
* [gloo edge - envoy control pane](https://docs.solo.io/gloo-edge/latest/)
  + https://github.com/solo-io/gloo
* [contour - envoy for kubernetes](https://projectcontour.io/)
* https://istio.io/
* https://github.com/Kong/kong
  + https://github.com/Kong/kubernetes-ingress-controller kong for kubernetes
  + https://github.com/Kong/deck configuration for kong
* [cilium as service mesh](https://cilium.io/use-cases/service-mesh/)
  + https://www.rokt.de/ company that rules e-commerce based on cilium and kubernetes


## Linux base technology

* https://ebpf.io/
  + https://ebpf.io/projects
  + https://engineering.fb.com/2018/05/22/open-source/open-sourcing-katran-a-scalable-network-load-balancer/
  + https://cilium.io/ Networking, Observability, and Security (for kubernetes)
    - https://github.com/cilium/cilium
