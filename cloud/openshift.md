# Openshift

* [Openshift Lifecycle](https://access.redhat.com/support/policy/updates/openshift_operators)
* [Openshift docs overview](https://access.redhat.com/documentation/en-us/openshift_container_platform/4.14)
* [Densify Openshift Architecture Tutorial](https://www.densify.com/openshift-tutorial/)
* [IBM Cloud Solution Tutorials](https://cloud.ibm.com/docs/solution-tutorials)
  + [Search IBM Cloud Docs](https://cloud.ibm.com/docs) featured!
  + https://github.com/ibm-cloud-docs/solution-tutorials

## Openshift Concepts

* [Extending the Kubernetes API with custom resource definitions (CRD)](https://docs.openshift.com/container-platform/4.14/operators/understanding/crds/crd-extending-api-with-crds.html)

## Openshift for Developers

* [Building applications docs](https://access.redhat.com/documentation/en-us/openshift_container_platform/4.14/html/building_applications/index)
* [rhthsa Openshift demo](https://github.com/rhthsa/openshift-demo/tree/main) featured!
* [Red Hat cloud native tutorials](https://redhat-scholars.github.io/cloudnative-tutorials/index.html) part of devnation

### Old/obsolete

* [IBM BlueCompute Microservice Example](https://www.ibm.com/cloud/architecture/articles/hadr-containers/hadr-containers-1-bluecompute/)
  + [light BlueCompute](https://github.com/ibm-cloud-architecture/light-bluecompute)
* [IBM what are microservices](https://www.ibm.com/topics/microservices)
  + [IBM Cloud Native Microservice Example](https://github.com/ibm-cloud-architecture/refarch-cloudnative-kubernetes)

## Openshift Operators

* [Red Hat Openshift Operators List](https://access.redhat.com/support/policy/updates/openshift_operators)
* [Red Hat Openshift Operators Lifecycle](https://access.redhat.com/support/policy/updates/openshift_operators)

### Openshift Service Mesh 2.x (based on Istio)

* [what is ossm](https://www.redhat.com/en/technologies/cloud-computing/openshift/what-is-openshift-service-mesh)
* [differences between ossm and istio](https://docs.openshift.com/container-platform/4.14/service_mesh/v2x/ossm-vs-community.html)
* [3scale Webassembly Module](https://docs.openshift.com/container-platform/4.14/service_mesh/v2x/ossm-threescale-webassembly-module.html)
  + [Proxy Wasm Spec](https://github.com/proxy-wasm/spec)
* [Creating the ServiceMeshControlPlane ](https://docs.openshift.com/container-platform/4.14/service_mesh/v2x/ossm-create-smcp.html) install in ns/project
* [telemetry](https://docs.openshift.com/container-platform/4.14/service_mesh/v2x/ossm-observability.html)
* [tutorial from rhthsa openshift demo](https://github.com/rhthsa/openshift-demo/blob/main/openshift-service-mesh.md)

#### Alternative Service Meshes

* [traefik mesh](https://github.com/traefik/mesh)

#### Old/obsolete

* [tutorial](https://cloud.ibm.com/docs/solution-tutorials?topic=solution-tutorials-openshift-service-mesh)
* [tutorial](https://github.com/tnscorcoran/openshift-servicemesh)
* [istio operator](https://github.com/maistra/istio-operator)

### Openshift GitOps (based on ArgoCD)

* [Openshift GitOps Docs](https://docs.openshift.com/gitops/1.10/understanding_openshift_gitops/about-redhat-openshift-gitops.html)
  + https://www.redhat.com/de/technologies/cloud-computing/openshift/gitops
  + https://www.redhat.com/de/topics/devops/what-is-gitops
  + https://github.com/redhat-developer/gitops-operator

### Openshift Helm (based on Helm)

* [building applications - working with helm charts](https://access.redhat.com/documentation/de-de/openshift_container_platform/4.14/html/building_applications/working-with-helm-charts)
* [helm charts differences between openshift and kubernetes](https://www.ibm.com/blog/deploying-helm-charts-on-openshift/)

### Openshift Dev Spaces (based on Eclipse Che)

* [Dev Spaces](https://developers.redhat.com/products/openshift-dev-spaces/overview)
  + [Dev Spaces Docs](https://access.redhat.com/documentation/en-us/red_hat_openshift_dev_spaces/3.9)
  + https://github.com/redhat-developer/devspaces-images/
  + https://github.com/devfile/devworkspace-operator

## Openshift Developer Sandbox

### Operators available on Openshift Developer Sandbox


## Openshift/k8s API gateways overview

* [k8s own API gateways](https://www.nginx.com/blog/5-reasons-to-try-the-kubernetes-gateway-api/) GatewayClass, Gateway, HTTPRoute - the alternatives to ingress
  + https://gateway-api.sigs.k8s.io/
* https://www.cyberlands.io/opensourceapigateways
* https://geekflare.com/api-gateway/
* https://www.tecmint.com/open-source-api-gateways-and-management-tools/
* https://nordicapis.com/6-open-source-api-gateways/
* [evolution of API gateways](https://wso2.com/library/blogs/the-future-of-api-gateways-on-kubernetes/)

### Openshift/k8s API gateways implementations

* [apisix](https://apisix.apache.org/) complete solution
* [fusio](https://www.fusio-project.org/) complete solution
* [kusk](https://kusk.io/) openapi-driven
* [emissary ingress](https://github.com/emissary-ingress/emissary) k8s, python, golang
  + https://www.getambassador.io/products/api-gateway
* [ocelot](https://github.com/ThreeMammals/Ocelot) in .net
* [express gateway](https://www.express-gateway.io/)
* [traefik](https://github.com/traefik/traefik)
* [kong](https://konghq.com/products/kong-gateway) semi commercial
* [gloo gateway](https://www.solo.io/products/gloo-gateway/) semi commercial
  + [gloo edge](https://docs.solo.io/gloo-edge/latest/)
* [gravitee](https://github.com/gravitee-io) semi commercial, java, native event driven
  + https://www.gravitee.io/api-management-buyers-guide-event-native
* [enroute](https://github.com/saarasio/enroute/) semi commercial
  + https://www.getenroute.io/features
  + [enroute Wasm support](https://www.getenroute.io/blog/developer-program-ingress-wasm-validate-verify-transform)
* [krakend](https://www.krakend.io/)
* [tyk](https://tyk.io/open-source-api-gateway/)
* [cast](https://cast.ai/lp/kubernetes-management-and-automation) commercial
