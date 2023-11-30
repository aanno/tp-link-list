# proxy-wasm

* [overview and motivation](https://github.com/proxy-wasm/spec/blob/master/docs/WebAssembly-in-Envoy.md) featured!

## spec

* [WebAssembly for Proxies](https://github.com/proxy-wasm/spec) links to implementations and server featured!
* [go implementation](https://github.com/tetratelabs/proxy-wasm-go-sdk)
  + [technical overview](https://github.com/tetratelabs/proxy-wasm-go-sdk/blob/main/doc/OVERVIEW.md) featured!
  + based on [tinygo](https://tinygo.org/)
  + gc problems, better with [nottinygc](https://github.com/wasilibs/nottinygc)
* [emscripten](https://emscripten.org/docs/introducing_emscripten/about_emscripten.html) toolchain for C/C++

## use

* [usage in getenroute](https://www.getenroute.io/blog/developer-program-ingress-wasm-validate-verify-transform) with examples
* [usage in kong](https://docs.konghq.com/gateway/latest/plugin-development/wasm/filter-configuration/)

### json validation

* [JSON schema validators implementations](https://json-schema.org/implementations)
* [wasm example](https://github.com/chiefbiiko/json-schm-wasm) typescript, rust
* [tinyjson](https://github.com/CosmWasm/tinyjson) golang, developed for CosmWasm
* [example from go sdk](https://github.com/tetratelabs/proxy-wasm-go-sdk/tree/main/examples/json_validation)

### openapi validation

* [kin-openapi](https://github.com/getkin/kin-openapi) validation http request to openapi (not WASM, however)

# IBM integration products

* https://www.redhat.com/de/topics/integration/why-choose-red-hat-integration

## RH integration

* https://www.redhat.com/de/products/integration

consists of:

* [3scale](https://www.redhat.com/de/technologies/jboss-middleware/3scale)
* [amq](https://www.redhat.com/de/technologies/jboss-middleware/amq)
* [runtimes](https://www.redhat.com/de/products/runtimes)
* [fuse](https://www.redhat.com/de/technologies/jboss-middleware/fuse) based on
  + [camel](https://camel.apache.org/)
  + [apache activemq artemis](https://activemq.apache.org/components/artemis/)
  + not sure, if fuse is still included in RH integration (in Nov 2023)
  + [AMQ to REST tutorial](https://access.redhat.com/documentation/en-us/red_hat_fuse/7.12/html/fuse_online_sample_integration_tutorials/amq-to-rest-api_tutorials)
* [fuse documentation](https://access.redhat.com/documentation/en-us/red_hat_fuse/7.12)
  + [fuse on openshift](https://access.redhat.com/documentation/en-us/red_hat_fuse/7.12/html/fuse_on_openshift_guide/index)
  + [use fuse to create 3scale custom policies](https://access.redhat.com/documentation/en-us/red_hat_3scale_api_management/2.11/html/administering_the_api_gateway/transform-with-policy-extension_3scale) e.g. XML to JSON

### 3scale

* https://github.com/3scale

consists of:

* **APIcast** is a solution based on Nginx that performs the API gateway function, so this is the component responsible for performing the request’s routing and security policies enforcement at runtime
  + [openresty](https://openresty.org/en/) nginx-based
  + [openshift apicast operator](https://github.com/3scale/apicast-operator)
  + [apisonator](https://github.com/3scale/apisonator)
  + [Standard Policies](https://access.redhat.com/documentation/en-us/red_hat_3scale_api_management/2.13/html/administering_the_api_gateway/apicast-policies)
  + [Custom Policies](https://access.redhat.com/documentation/en-us/red_hat_3scale_api_management/2.13/html/administering_the_api_gateway/apicast-policies#creating-3scale-policy-chains-in-json-configuration-files_policy-chains)
  + [Authentication](https://access.redhat.com/documentation/en-us/red_hat_3scale_api_management/2.13/html/administering_the_api_gateway/authentication-patterns)
  + [URL Versioning](https://access.redhat.com/documentation/en-us/red_hat_3scale_api_management/2.13/html/administering_the_api_gateway/versioning-3scale)
  + [use camel](https://github.com/3scale/APIcast/tree/master/gateway/src/apicast/policy/camel)
* **3Scale API Manager Portal** is the administrative console where you can perform all user access control, configure Developer Portal features, and manage the API lifecycle.
  + [porta](https://github.com/3scale/porta)
  + [Account configuration](https://access.redhat.com/documentation/en-us/red_hat_3scale_api_management/2.13/html/admin_portal_guide/account-configuration)
  + [Managing developer accounts](https://access.redhat.com/documentation/en-us/red_hat_3scale_api_management/2.13/html/admin_portal_guide/add-developers)
  + [Access control](https://access.redhat.com/documentation/en-us/red_hat_3scale_api_management/2.13/html/admin_portal_guide/designating-methods-and-adding-metrics-for-capturing-usage-details_methods-and-metrics-for-products-and-backends)
  + [Billing](https://access.redhat.com/documentation/en-us/red_hat_3scale_api_management/2.13/html/admin_portal_guide/configure-billing)
  + [API Lifecycle](https://access.redhat.com/documentation/en-us/red_hat_3scale_api_management/2.13/html/operating_3scale/api-lifecyle-toolbox-3scale)
  + [3scale toolbox](https://access.redhat.com/documentation/en-us/red_hat_3scale_api_management/2.13/html/operating_3scale/the-threescale-toolbox)
    - [zync](https://github.com/3scale/zync) notify about changes in scale instance
  + [Openshift 3scale operator](https://access.redhat.com/documentation/en-us/red_hat_3scale_api_management/2.13/html/operating_3scale/provision-threescale-services-via-operator) (preview)
  + [3scale WebAssembly module](https://access.redhat.com/documentation/en-us/red_hat_3scale_api_management/2.13/html/operating_3scale/threescale-webassembly-module)
* **Developer Portal** is the communication and documentation channel for API consumers. It offers all the functionalities for users to manage their organization, users, and applications
  + [Developer Portal (UI) creation](https://access.redhat.com/documentation/en-us/red_hat_3scale_api_management/2.13/html/creating_the_developer_portal/overview-of-creating-your-developer-portal-for-threescale-managed-apis_creating-dev-portal)
  + [ActiveDocs](https://access.redhat.com/documentation/en-us/red_hat_3scale_api_management/2.13/html/providing_apis_in_the_developer_portal/adding-activedocs-to-threescale_creating-a-new-service-based-on-oas) swagger-ui-based
  + [Developer Portal Single Sign On (SSO)](https://access.redhat.com/documentation/en-us/red_hat_3scale_api_management/2.13/html/creating_the_developer_portal/sso)

### 3scale webassembly module

* [3scale WebAssembly module](https://access.redhat.com/documentation/en-us/red_hat_3scale_api_management/2.13/html/operating_3scale/threescale-webassembly-module)
* [3scale WebAssembly module in openshift](https://docs.openshift.com/container-platform/4.14/service_mesh/v2x/ossm-threescale-webassembly-module.html)
* [threescale-wasm-auth](https://github.com/3scale/threescale-wasm-auth/blob/main/docs/reference.md)
  + must be used with service mesh (istio), version >=2.1.0
  + runs in 3scale backend (proxy) (that is based on istio proxy (that is based on envoy proxy))

### 3scale webassembly development

* [3scale proxy-wasm rust sdk](https://github.com/3scale/proxy-wasm-rust-sdk)

## IBM API Connect

* https://www.ibm.com/products/api-connect
  + https://www.ibm.com/de-de/products/api-connect

## Google Apigee

* https://cloud.google.com/apigee

