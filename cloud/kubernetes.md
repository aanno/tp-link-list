# Kubernetes family

* https://teuto.net/wp-content/uploads/2019/10/openshift4AF.pdf with kubernetes distro overview
* https://fedoramagazine.org/introduction-kubernetes-fedora/
* https://k8s.af/ Kubernetes failure stories

## Learn kubernetes

* https://learnk8s.io/blog
* https://learnk8s.io/training

## control group v2 state

* https://medium.com/nttlabs/cgroup-v2-596d035be4d7
* https://www.redhat.com/sysadmin/fedora-31-control-group-v2

## Kubernetes cloud provider

* https://www.chdev.de/2019/07/02/kubernetes-mit-kubeadm-auf-netcup-root-servern/
* https://www.replex.io/blog/the-ultimate-kubernetes-cost-guide-aws-vs-gce-vs-azure-vs-digital-ocean
* https://www.replex.io/blog/the-ultimate-guide-to-deploying-kubernetes-cluster-on-aws-ec2-spot-instances-using-kops-and-eks
* https://cloudacademy.com/blog/kubernetes-services-aws-vs-azure-vs-google-cloud/

## Ports

* 6443
* 10250
* 2379
* 2380

## Plain Kubernetes

* https://microk8s.io/
* https://operatorhub.io/ Operators for kubernetes
* https://kontena.io/
  + https://docs.k8spharos.dev/getting-started distribution
    - cool idea, written in ruby - _BUT_ only supports some (other) distros: https://docs.k8spharos.dev/requirements.html
    - based on docker-ce (and cfssl)
  + https://k8slens.dev/ devop ui
* https://rancher.com/products
  + [rke](https://rancher.com/docs/rke/latest/en/installation/)
    - cool idea but also docker-ce based
* https://github.com/boot2podman/boot2podman has kubernetes support!
* https://minikube.sigs.k8s.io/docs/
* https://k3s.io/ kubernetes mini distribution
  + https://github.com/rancher/k3d k3s in docker (really!)
* https://typhoon.psdn.io/
* https://kubic.opensuse.org/ susu alternative to Fedora CoreOS
  + https://en.opensuse.org/Portal:Kubic MicroOS
  + https://en.opensuse.org/Kubic:kubeadm install kubernetes on MicroOS
* https://kind.sigs.k8s.io/
* https://github.com/kubesphere/kubesphere
* https://kublr.com/pricing/ commercial, but free for development!
  + https://docs.kublr.com/quickstart/
* https://github.com/scality/metalk8s
* https://github.com/poseidon/matchbox
* https://github.com/kubicorn/kubicorn (old)
  
* https://kops.sigs.k8s.io/ kubernetes deploy on AWS
* https://kubespray.io/ ansible scripts for kubernetes setup (featured!)
  + https://github.com/kubernetes-sigs/kubespray/blob/master/docs/cri-o.md cri-o support!
* https://github.com/valentin2105/Kubernetes-Saltstack saltstack script for kubernetes setup
* https://github.com/ramitsurana/awesome-kubernetes includes many kubernetes installers

### Plain Kubernetes setup

* https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/
* https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/
* https://kubernetes.io/docs/setup/production-environment/container-runtimes/
* https://github.com/kubernetes/kubernetes/releases releases/versions

### Plain Kubernetes UIs

* https://srcco.de/posts/kubernetes-web-uis-in-2019.html
* https://codeberg.org/hjacobs/kube-web-view/
* https://k8slens.dev/ devops ui

### Plain Kubernetes plugins/options

#### Container

* https://kubernetes.io/docs/setup/production-environment/container-runtimes/
* https://cri-o.io/ container runtime
  + https://github.com/cri-o/cri-o cri-o version _must_ match kubernetes version
  + https://minikube.sigs.k8s.io/docs/handbook/config/ cri-o on minikube
  + https://github.com/cri-o/cri-o/blob/master/tutorials/kubernetes.md
  + https://github.com/cri-o/cri-o/blob/master/tutorials/kubeadm.md

#### Networking

## OpenShift family

### OKD

* https://github.com/openshift/okd
* https://cloudowski.com/articles/10-differences-between-openshift-and-kubernetes/ openshift vs kubernetes vs okd (featured!)
* https://www.openshift.com/learn/courses/playground/ 1h free playing

#### OKD setup

* https://developer.fedoraproject.org/deployment/openshift/about.html
* https://www.openshift.com/blog/guide-to-installing-an-okd-4-4-cluster-on-your-home-lab
* https://docs.openshift.com/container-platform/4.1/installing/installing_bare_metal/installing-bare-metal.html
* https://www.eclipse.org/che/docs/che-7/running-che-locally
* [CodeReady Containers](https://access.redhat.com/documentation/en-us/red_hat_codeready_containers/1.0/html/getting_started_guide/getting-started-with-codeready-containers_gsg?extIdCarryOver=true&sc_cid=701f2000001OH6pAAG#installing-codeready-containers_gsg) single node openshift
  + https://haralduebele.blog/2019/09/13/red-hat-openshift-4-on-your-laptop/amp/

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
* https://github.com/boot2podman/boot2podman
  + https://podman.io/blogs/2019/01/14/podman-machine-and-boot2podman.html

### podman (pods interface)

* https://www.techrepublic.com/article/how-to-deploy-a-pod-with-podman/
* https://developers.redhat.com/blog/2019/01/15/podman-managing-containers-pods/

### podman (pods kube interface)

* https://github.com/containers/libpod/blob/master/docs/source/markdown/podman-play-kube.1.md
* https://github.com/containers/libpod/blob/master/docs/source/markdown/podman-generate-kube.1.md
* https://developers.redhat.com/blog/2019/01/29/podman-kubernetes-yaml/

### other podman interfaces

* https://github.com/containers/podman-compose
