# Kubernetes family

* https://teuto.net/wp-content/uploads/2019/10/openshift4AF.pdf with kubernetes distro overview

## Plain Kubernetes

* https://microk8s.io/
* https://operatorhub.io/ Operators for kubernetes
* https://kontena.io/
  + https://docs.k8spharos.dev/getting-started distribution
  + https://k8slens.dev/ devop ui

## OpenShift family

### OKD

* https://github.com/openshift/okd
* https://cloudowski.com/articles/10-differences-between-openshift-and-kubernetes/ openshift vs kubernetes vs okd (featured!)

#### OKD setup

* https://developer.fedoraproject.org/deployment/openshift/about.html
* https://www.openshift.com/blog/guide-to-installing-an-okd-4-4-cluster-on-your-home-lab
* https://docs.openshift.com/container-platform/4.1/installing/installing_bare_metal/installing-bare-metal.html
* https://www.eclipse.org/che/docs/che-7/running-che-locally
* [CodeReady Containers](https://access.redhat.com/documentation/en-us/red_hat_codeready_containers/1.0/html/getting_started_guide/getting-started-with-codeready-containers_gsg?extIdCarryOver=true&sc_cid=701f2000001OH6pAAG#installing-codeready-containers_gsg) single node openshift

#### Related projects

* https://github.com/containerbuildsystem
  + https://osbs.readthedocs.io/en/latest/ OpenShift build service
* https://ovirt.org/
  + https://ovirt.org/download/beta.html
  + https://ovirt.org/documentation/installing_ovirt_as_a_self-hosted_engine_using_the_cockpit_web_interface/
  + https://resources.ovirt.org/pub/ovirt-4.4-pre/rpm/
  + https://ovirt.github.io/ovirt-engine-api-model/

## podman (general)

* https://podman.io/whatis.html
  + https://github.com/containers/libpod
  + https://github.com/containers/conmon
  + https://github.com/containers/skopeo/
  + https://github.com/cri-o/cri-o
  + https://github.com/containers/storage
  + https://buildah.io/
* https://www.projectatomic.io/blog/2018/02/reintroduction-podman/
* https://developers.redhat.com/blog/2019/02/21/podman-and-buildah-for-docker-users/
* https://mkdev.me/en/posts/dockerless-part-3-moving-development-environment-to-containers-with-podman
* https://m.heise.de/developer/artikel/Podman-Linux-Container-einfach-gemacht-Teil-3-4476343.html
* https://www.admin-magazin.de/Das-Heft/2019/08/Container-Management-mit-Podman

### podman (pods interface)

* https://www.techrepublic.com/article/how-to-deploy-a-pod-with-podman/
* https://developers.redhat.com/blog/2019/01/15/podman-managing-containers-pods/

### podman (pods kube interface)

* https://github.com/containers/libpod/blob/master/docs/source/markdown/podman-play-kube.1.md
* https://github.com/containers/libpod/blob/master/docs/source/markdown/podman-generate-kube.1.md

### other podman interfaces

* https://github.com/containers/podman-compose
