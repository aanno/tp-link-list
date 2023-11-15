# openshift service mesh

## install operator

## create ServiceMeshControlPlane

```yaml
apiVersion: maistra.io/v2
kind: ServiceMeshControlPlane
metadata:
  name: basic
  namespace: aanno-sm
spec:
  tracing:
    type: Jaeger
    sampling: 10000
  gateways:
    ingress:
      enabled: true
      ingress: true
    openshiftRoute:
      enabled: true
    enabled: true
  policy:
    type: Istiod
  addons:
    grafana:
      enabled: true
    jaeger:
      install:
        storage:
          type: Memory
    kiali:
      enabled: true
    prometheus:
      enabled: true
  telemetry:
    type: Istiod
  version: v2.4
  mode: ClusterWide
```

Problem:
ERROR: failed calling webhook smcp.mutation.maistra.io
Solution:
https://access.redhat.com/solutions/5313251



## kind

Try to pull to ensure proxy settings are all right:

```bash
podman pull docker.io/istio/pilot:1.19.4
```

Download istio distribution and set ISTIO_HOME.

```bash
$ env | grep -i istio
ISTIO_HOME=/c/dev/istio-1.19.4
```

Prepare:
```bash
$ kind create cluster --name istio-testing
$ kind get clusters
istio-testing
$ kubectl config get-contexts
CURRENT   NAME                 CLUSTER              AUTHINFO             NAMESPACE
*         kind-istio-testing   kind-istio-testing   kind-istio-testing
          minikube             minikube             minikube
$ kubectl config use-context kind-istio-testing
Switched to context "kind-istio-testing".
```

Install:
```bash
$ istioctl install --set profile=demo -y
$ kubectl apply -f ${ISTIO_HOME}/samples/addons/
$ # kiali ui
$ kubectl port-forward svc/kiali 20001:20001 -n istio-system
$ # jaeger ui
$ kubectl port-forward svc/tracing 31000:80  -n istio-system
```

Sample application:

```bash
$ kubectl apply -f samples/bookinfo/platform/kube/bookinfo.yaml
service/details created
serviceaccount/bookinfo-details created
deployment.apps/details-v1 created
service/ratings created
serviceaccount/bookinfo-ratings created
deployment.apps/ratings-v1 created
service/reviews created
serviceaccount/bookinfo-reviews created
deployment.apps/reviews-v1 created
deployment.apps/reviews-v2 created
deployment.apps/reviews-v3 created
service/productpage created
serviceaccount/bookinfo-productpage created
deployment.apps/productpage-v1 created

```

Kubernetes Dashboard:
```bash
$ kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/recommended.yaml
$ kubectl get pod -n kubernetes-dashboard
NAME                                         READY   STATUS    RESTARTS   AGE
dashboard-metrics-scraper-76585494d8-zdb66   1/1     Running   0          39s
kubernetes-dashboard-b7ffbc8cb-zl8zg         1/1     Running   0          39s
$ kubectl create serviceaccount -n kubernetes-dashboard admin-user
$ kubectl create clusterrolebinding -n kubernetes-dashboard admin-user --clusterrole cluster-admin --serviceaccount=kubernetes-dashboard:admin-user
$ export token=$(kubectl -n kubernetes-dashboard create token admin-user)
$ echo $token
$ kubectl proxy
Starting to serve on 127.0.0.1:8001
```

When done:
```bash
$ kind delete cluster --name istio-testing
Deleting cluster "istio-testing" ...
```

References:
* https://istio.io/latest/docs/setup/getting-started/
* https://istio.io/latest/docs/setup/platform-setup/kind/
* https://kiali.io/docs/installation/quick-start/
* [loadbalancer on kind](https://kind.sigs.k8s.io/docs/user/loadbalancer/)


### istio-fleetman udemy course

```bash
cd istio-fleetman/_course_files/x86_amd64/1-Telemetry
...
kubectl.exe apply -f 5-application-no-istio.yaml
# webapp
kubectl poport-forward svc/fleetman-webapp 30080:30080

```
