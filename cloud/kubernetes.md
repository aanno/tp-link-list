# Kubernetes family

* https://teuto.net/wp-content/uploads/2019/10/openshift4AF.pdf with kubernetes distro overview
* https://fedoramagazine.org/introduction-kubernetes-fedora/
* https://k8s.af/ Kubernetes failure stories

## Learn kubernetes

* https://learnk8s.io/blog
* https://learnk8s.io/training
* https://atix.de/training/kubernetes-training/
  + https://atix.de/karriere/karriere-angebote-fuer-berufserfahrene/kubernetes-architect/
* [interactive tutorial](https://kubernetes.io/docs/tutorials/kubernetes-basics/explore/explore-interactive/)
* https://kubernetesbootcamp.github.io/kubernetes-bootcamp/
* https://cloud.netapp.com/kubernetes-hub
* [kubernetes with ansible](https://www.tauceti.blog/post/kubernetes-the-not-so-hard-way-with-ansible-wireguard/)

## control group v2 state

* https://medium.com/nttlabs/cgroup-v2-596d035be4d7
* https://www.redhat.com/sysadmin/fedora-31-control-group-v2

* https://en.wikipedia.org/wiki/Cgroups
* https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/resource_management_guide/sec-obtaining_information_about_control_groups
* https://www.kernel.org/doc/html/latest/admin-guide/cgroup-v1/cgroups.html
* https://www.kernel.org/doc/html/latest/admin-guide/cgroup-v2.html

## Kubernetes cloud provider

* https://www.chdev.de/2019/07/02/kubernetes-mit-kubeadm-auf-netcup-root-servern/
* https://www.replex.io/blog/the-ultimate-kubernetes-cost-guide-aws-vs-gce-vs-azure-vs-digital-ocean
* https://www.replex.io/blog/the-ultimate-guide-to-deploying-kubernetes-cluster-on-aws-ec2-spot-instances-using-kops-and-eks
* https://cloudacademy.com/blog/kubernetes-services-aws-vs-azure-vs-google-cloud/
* [Creates K8s clusters on cloud providers](https://github.com/crosscloudci/cross-cloud)
  + https://github.com/crosscloudci/crosscloudci

## Managed Kubernetes

* [AWS EKS](https://aws.amazon.com/de/eks/
  + https://github.com/aws-samples/eks-workshop)

## Ports

* 6443
* 10250
* 2379
* 2380

## Plain Kubernetes

* https://microk8s.io/
* https://kontena.io/ (old, dicontinued)
  + https://docs.k8spharos.dev/getting-started distribution
    - cool idea, written in ruby - _BUT_ only supports some (other) distros: https://docs.k8spharos.dev/requirements.html
    - based on docker-ce (and cfssl)
  + https://k8slens.dev/ devop ui
* https://rancher.com/products
  + [rke](https://rancher.com/docs/rke/latest/en/installation/)
    - cool idea but also docker-ce based
* https://github.com/boot2podman/boot2podman has kubernetes support!
  + https://boot2podman.github.io/assets/ContainersWithoutDocker.pdf
* https://minikube.sigs.k8s.io/docs/
* https://k3s.io/ kubernetes mini distribution
  + https://github.com/rancher/k3d k3s in docker (really!)
  + https://k3d.io/v5.1.0/
* [Minimal and free Kubernetes distribution via Terraform](https://typhoon.psdn.io/)
  + [PXE boot and provision bare-metal clusters](https://github.com/poseidon/matchbox)
    - https://matchbox.psdn.io/
  + [Fedora CoreOS reboot coordinator for Kubernetes](https://github.com/poseidon/fleetlock)
* https://kubic.opensuse.org/ suse alternative to Fedora CoreOS
  + https://en.opensuse.org/Portal:Kubic MicroOS
  + https://en.opensuse.org/Kubic:kubeadm install kubernetes on MicroOS
* https://kinvolk.io/lokomotive-kubernetes/
* https://github.com/kubesphere/kubesphere
* https://kublr.com/pricing/ commercial, but free for development!
  + https://docs.kublr.com/quickstart/
* https://github.com/scality/metalk8s
* https://github.com/poseidon/matchbox
* [firecube](https://www.weave.works/blog/firekube-fast-and-secure-kubernetes-clusters-using-weave-ignite) 
  secure kube install
* https://github.com/kubicorn/kubicorn (old)
  
* https://kops.sigs.k8s.io/ kubernetes deploy on AWS
* https://kubespray.io/ ansible scripts for kubernetes setup (featured!)
  + https://github.com/kubernetes-sigs/kubespray/blob/master/docs/cri-o.md cri-o support!
  + https://mitogen.networkgenomics.com/ansible_detailed.html
  + https://mitogen.networkgenomics.com/
* https://github.com/valentin2105/Kubernetes-Saltstack saltstack script for kubernetes setup
* https://github.com/ramitsurana/awesome-kubernetes includes many kubernetes installers
* [ironic on kubernetes](https://metal3.io/)
  + https://metal3.io/try-it.html

### Plain Kubernetes setup

* https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/
* https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/
* https://kubernetes.io/docs/setup/production-environment/container-runtimes/
* https://github.com/kubernetes/kubernetes/releases releases/versions
* https://www.mirantis.com/blog/how-install-kubernetes-kubeadm/
* https://microk8s.io/docs
* [kind - kubernetes cluster on docker/podman](https://kind.sigs.k8s.io/docs/user/quick-start)
  + [kind on podman](https://kind.sigs.k8s.io/docs/user/rootless/)
* [k8s on coreos on virtualbox](https://www.codetab.org/post/kubernetes-cluster-virtualbox/)
* [k8s with ironic](https://github.com/kairen/ironic-k8s)
* [install canonical's charmed kubernetes](https://ubuntu.com/kubernetes/docs/install-manual)

#### Other kubernetes/okd setup

* Terraform
  + https://tf-eks-workshop.workshop.aws/500_eks-terraform-workshop.html
* Ansible
  + https://kubespray.io/#/
  + https://www.openshift.com/blog/deploy-a-multi-master-okd-4.5-cluster-using-a-single-command-in-30-minutes (kubeinit)
* Hive (from Kubernetes/Openshift) (no pun intended)
  + https://techbloc.net/archives/4672
  + https://github.com/openshift/hive/blob/master/docs/using-hive.md
  + https://github.com/openshift/hive
* [crc - okd4 on your laptop](https://developers.redhat.com/products/codeready-containers/overview)
  + https://console.redhat.com/openshift/create/local
  + https://developers.redhat.com/developer-sandbox/get-started
  + https://github.com/code-ready/crc
* [okd on coreos on digitalocean](https://dustymabe.com/2020/07/28/openshift-okd-on-fedora-coreos-on-digitalocean-part-0-preparation/)
* [okd4 on coreos on metal (official docs)](https://docs.okd.io/latest/installing/installing_bare_metal/installing-bare-metal.html)
* [openshift installer](https://github.com/openshift/installer) featured

### kubernetes commands and features

* [cheatsheet](https://kubernetes.io/de/docs/reference/kubectl/cheatsheet/)
* [deployments](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/)
  + https://kubernetes.io/de/docs/tutorials/kubernetes-basics/deploy-app/deploy-intro/
* [pods and nodes](https://kubernetes.io/de/docs/tutorials/kubernetes-basics/explore/explore-intro/)
* [kubelet](https://kubernetes.io/docs/tasks/administer-cluster/kubelet-config-file/)
  + [kubelet config file](https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/kubelet/config/v1beta1/types.go)

### Advanced

#### Authentication

##### Keycloak (and some OAuth2)

* https://medium.com/@sagarpatkeatl/kubernetes-with-keycloak-eca47f86abec
* https://medium.com/stakater/proxy-injector-enabling-sso-with-keycloak-on-kubernetes-a1012c3d9f8d
* https://www.openshift.com/blog/adding-authentication-to-your-kubernetes-web-applications-with-keycloak
* https://blog.codecentric.de/en/2019/05/configuring-kubernetes-login-keycloak/
* https://www.keycloak.org/getting-started/getting-started-kube

### Plain Kubernetes UIs

* https://srcco.de/posts/kubernetes-web-uis-in-2019.html
* https://codeberg.org/hjacobs/kube-web-view/
* https://k8slens.dev/ devops ui
* [rancher](https://rancher.com/why-rancher/) setup kube or manage existing kube
  + https://rancher.com/docs/rancher/v2.x/en/quick-start-guide/deployment/quickstart-manual-setup/
* https://kubernetes.io/docs/tasks/access-application-cluster/web-ui-dashboard/
  + https://www.replex.io/blog/how-to-install-access-and-add-heapster-metrics-to-the-kubernetes-dashboard
  + https://blog.heptio.com/on-securing-the-kubernetes-dashboard-16b09b1b7aca?gi=f79deee54710
* https://kubernetic.com/ commercial (but only $30)
  + https://docs.kubernetic.com/
  + https://thenewstack.io/install-the-kubernetic-desktop-gui-on-ubuntu-linux-19-10/
* https://github.com/wise2c-devops/breeze
* https://kubeapps.com/
  + https://github.com/kubeapps/kubeapps/blob/master/docs/user/getting-started.md
* https://k8slens.dev/ devop ui
* [weave scope](https://www.weave.works/oss/scope/)
  + https://www.weave.works/docs/scope/latest/installing/
* [firekube](https://www.weave.works/oss/firekube/)
* http://fabric8.io/ unclear state
  + https://github.com/fabric8io/fabric8-platform
  + https://github.com/fabric8-services

### Plain Kubernetes plugins/options

* [kubectl, kind, minikube, kubeadm](https://kubernetes.io/docs/tasks/tools/)
* https://caylent.com/50-useful-kubernetes-tools
* https://techbeacon.com/enterprise-it/9-top-open-source-tools-monitoring-kubernetes

#### Container

* https://kubernetes.io/docs/setup/production-environment/container-runtimes/
* https://cri-o.io/ container runtime
  + https://github.com/cri-o/cri-o cri-o version _must_ match kubernetes version
  + https://minikube.sigs.k8s.io/docs/handbook/config/ cri-o on minikube
  + https://github.com/cri-o/cri-o/blob/master/tutorials/kubernetes.md
  + https://github.com/cri-o/cri-o/blob/master/tutorials/kubeadm.md
* [containerd - kubernetes standard container runtime from CNCF](https://containerd.io/)

#### Networking

* https://coredns.io/
  + https://coredns.io/plugins/etcd/

#### Packet managment

* [helm](https://helm.sh/)
  + [helm hub](https://hub.helm.sh/)
  + https://www.heise.de/developer/meldung/Kubernetes-Paketmanager-Helm-3-verzichtet-auf-Tiller-4586105.html
  + https://github.com/helm/charts
  + https://github.com/gruntwork-io/helmcharts
  + https://github.com/gruntwork-io/helm-kubernetes-services
* https://operatorhub.io/ Operators for kubernetes
  + https://operatorhub.io/operator/eclipse-che (as example)
  + https://github.com/eclipse/che-operator

##### Kubernetes and public cloud

* https://learnk8s.io/cloud-resources-kubernetes
* [multitenancy](https://opensource.com/article/22/3/virtual-kubernetes-clusters-new-model-multitenancy)

#### Storage

* https://rook.io/
* https://longhorn.io/
  + https://www.heise.de/tests/Kubernetes-Speicher-einfach-verwalten-mit-Longhorn-6177422.html

#### Serverless

* https://knative.dev/
  + https://www.redhat.com/de/topics/microservices/what-is-knative

## OpenShift family

### OKD

* https://github.com/openshift/okd
* https://cloudowski.com/articles/10-differences-between-openshift-and-kubernetes/ openshift vs kubernetes vs okd (featured!)
* https://labs.consol.de/de/devops/2019/02/11/k8s-vs-openshift.html
* https://www.openshift.com/learn/courses/playground/ 1h free playing

#### OKD setup

* [openshift installer](https://github.com/openshift/installer)
* https://developer.fedoraproject.org/deployment/openshift/about.html
* https://www.openshift.com/blog/guide-to-installing-an-okd-4-4-cluster-on-your-home-lab
  + https://medium.com/@craig_robinson/openshift-4-4-okd-bare-metal-install-on-vmware-home-lab-6841ce2d37eb
* https://docs.openshift.com/container-platform/4.1/installing/installing_bare_metal/installing-bare-metal.html
* https://www.eclipse.org/che/docs/che-7/running-che-locally
* [CodeReady Containers](https://access.redhat.com/documentation/en-us/red_hat_codeready_containers/1.0/html/getting_started_guide/getting-started-with-codeready-containers_gsg?extIdCarryOver=true&sc_cid=701f2000001OH6pAAG#installing-codeready-containers_gsg) single node openshift
  + https://haralduebele.blog/2019/09/13/red-hat-openshift-4-on-your-laptop/amp/
* https://github.com/openshift/okd/blob/master/README.md
* https://www.admin-magazin.de/Das-Heft/2020/10/Kubernetes-einrichten-und-betreiben-2 (okd)
* https://itnext.io/guide-installing-an-okd-4-5-cluster-508a2631cbee
* AWS
  + https://docs.okd.io/latest/installing/installing_aws/installing-aws-default.html 
* [Simulate Bare-Metal IPMI/BMC on libvirt/virt-manage](https://gist.github.com/williamcaban/aba796f856264799326d554ac11a4a66) needed for bare-metal setup

#### Related projects

* https://github.com/containerbuildsystem
  + https://osbs.readthedocs.io/en/latest/ OpenShift build service
* https://ovirt.org/ (very difficult to install)
  + https://ovirt.org/download/beta.html
  + https://ovirt.org/documentation/installing_ovirt_as_a_self-hosted_engine_using_the_cockpit_web_interface/
  + https://resources.ovirt.org/pub/ovirt-4.4-pre/rpm/
  + https://ovirt.github.io/ovirt-engine-api-model/
  + https://github.com/oVirt/ovirt-engine

## podman (general)

* https://podman.io/whatis.html
  + https://github.com/containers/libpod
  + https://github.com/containers/conmon
  + https://github.com/containers/skopeo/
  + https://github.com/cri-o/cri-o
  + https://github.com/containers/storage
* https://www.projectatomic.io/blog/2018/02/reintroduction-podman/
* https://developers.redhat.com/blog/2019/02/21/podman-and-buildah-for-docker-users/
* https://mkdev.me/en/posts/dockerless-part-3-moving-development-environment-to-containers-with-podman
* https://m.heise.de/developer/artikel/Podman-Linux-Container-einfach-gemacht-Teil-3-4476343.html
* https://www.admin-magazin.de/Das-Heft/2019/08/Container-Management-mit-Podman
* https://github.com/boot2podman/boot2podman
  + https://podman.io/blogs/2019/01/14/podman-machine-and-boot2podman.html

* [podman on windows](https://www.redhat.com/sysadmin/run-podman-windows)
* [podman desktop](https://podman-desktop.io/)

### podman (pods interface)

* https://www.techrepublic.com/article/how-to-deploy-a-pod-with-podman/
* https://developers.redhat.com/blog/2019/01/15/podman-managing-containers-pods/

### podman (pods kube interface)

* https://github.com/containers/libpod/blob/master/docs/source/markdown/podman-play-kube.1.md
* https://github.com/containers/libpod/blob/master/docs/source/markdown/podman-generate-kube.1.md
* https://developers.redhat.com/blog/2019/01/29/podman-kubernetes-yaml/

### other podman interfaces

* https://www.redhat.com/sysadmin/podman-docker-compose
* https://github.com/containers/podman-compose
* [docker api](https://podman.readthedocs.io/en/latest/_static/api.html)
* [toolbox](https://github.com/containers/toolbox)

### podman network: CNI (rootful)

* https://www.redhat.com/sysadmin/container-networking-podman
* https://github.com/containernetworking/cni
* https://docs.opensvc.com/latest/fr/agent.configure.cni.html (based on cni, off topic)

### podman network: slirp4netns (rootless)

* https://www.tutorialworks.com/containers/podman-host-networking/
* https://github.com/rootless-containers/slirp4netns

### podman solutions (for some applicatios)

*  nginx-autoletsencrypt: https://github.com/profihost/podman-container-configs/
*  jitsi-meet: https://wissen.profihost.com/wissen/artikel/installation-von-jitsi-meet/
