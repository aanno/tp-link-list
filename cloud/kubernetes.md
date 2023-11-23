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
  + https://ranchermanager.docs.rancher.com/pages-for-subheaders/quick-start-guides
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
* [okd installers overview](https://docs.okd.io/latest/installing/index.html)
* [okd on coreos on digitalocean](https://dustymabe.com/2020/07/28/openshift-okd-on-fedora-coreos-on-digitalocean-part-0-preparation/)
* [okd4 on coreos on metal (official docs)](https://docs.okd.io/latest/installing/installing_bare_metal/installing-bare-metal.html)
* [openshift installer](https://github.com/openshift/installer) featured
  + [openshift assisted installer](https://access.redhat.com/documentation/en-us/assisted_installer_for_openshift_container_platform/2023/html/assisted_installer_for_openshift_container_platform/installing-with-ui)

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

#### Configuration Server (Key-Value Stores)

* https://www.libelektra.org/home
  + https://github.com/ElektraInitiative/libelektra

#### Packet managment

* [helm](https://helm.sh/)
  + [helm hub](https://hub.helm.sh/)
  + [helm charts from artifacthub](https://artifacthub.io/packages/search?kind=0)
  + https://www.heise.de/developer/meldung/Kubernetes-Paketmanager-Helm-3-verzichtet-auf-Tiller-4586105.html
  + https://github.com/helm/charts
  + https://github.com/gruntwork-io/helmcharts
  + https://github.com/gruntwork-io/helm-kubernetes-services
* [helm chart overview](https://helm.sh/docs/topics/charts/)
* [helm chart templates for developers](https://helm.sh/docs/chart_template_guide/)
  + https://helm.sh/docs/howto/charts_tips_and_tricks/
  + [go templates](https://pkg.go.dev/text/template)
  + [sprig templates](https://masterminds.github.io/sprig/)
* [Operator Lifecycle Manager (olm)](https://olm.operatorframework.io/docs/) use operators on kubernetes
  + [operator framework](https://github.com/operator-framework)
* https://operatorhub.io/ Operators for kubernetes
  + https://operatorhub.io/operator/eclipse-che (as example)
  + https://github.com/eclipse/che-operator
* [Kpt](https://kpt.dev/guides/rationale) - kustomize done right
  + [configsync](https://kpt.dev/gitops/configsync/) gitops for Kpt
* [cdk8s](https://cdk8s.io/docs/latest/) kubernetes manifests from typescript, python, java, go-lang

##### Kubernetes and public cloud

* https://learnk8s.io/cloud-resources-kubernetes
* [multitenancy](https://opensource.com/article/22/3/virtual-kubernetes-clusters-new-model-multitenancy)

#### Storage

* https://rook.io/
* https://longhorn.io/
  + https://www.heise.de/tests/Kubernetes-Speicher-einfach-verwalten-mit-Longhorn-6177422.html

#### Other kubernetes/openshift projects, add-ons, extensions

* [Gateway policies for kubernetes](https://kuadrant.io/) modern api management
  + https://github.com/Kuadrant/kuadrant-operator

## OpenShift family

* https://cloud.redhat.com/blog/openshift-4-a-noops-platform
  + https://github.com/openshift/machine-config-operator
  + https://github.com/openshift/machine-config-operator/blob/master/docs/UsingLayering.md
* [openshift documentation](https://docs.openshift.com/)
  + https://access.redhat.com/documentation/en-us/openshift_container_platform/4.14 - all components
    - [openshift serverless](https://docs.openshift.com/serverless/1.30/about/about-serverless.html) knative-based

### OKD

* https://github.com/openshift/okd
* https://cloudowski.com/articles/10-differences-between-openshift-and-kubernetes/ openshift vs kubernetes vs okd (featured!)
* https://labs.consol.de/de/devops/2019/02/11/k8s-vs-openshift.html
* https://www.openshift.com/learn/courses/playground/ 1h free playing

#### OKD setup

* [openshift installer](https://github.com/openshift/installer)
* https://docs.okd.io/latest/installing/index.html
* https://www.okd.io/installation/
* https://docs.okd.io/latest/welcome/index.html
* https://developer.fedoraproject.org/deployment/openshift/about.html
* https://www.openshift.com/blog/guide-to-installing-an-okd-4-4-cluster-on-your-home-lab
  + https://medium.com/@craig_robinson/openshift-4-4-okd-bare-metal-install-on-vmware-home-lab-6841ce2d37eb
* https://docs.openshift.com/container-platform/4.1/installing/installing_bare_metal/installing-bare-metal.html
* https://www.eclipse.org/che/docs/che-7/running-che-locally
* [CodeReady Containers](https://access.redhat.com/documentation/en-us/red_hat_codeready_containers/1.0/html/getting_started_guide/getting-started-with-codeready-containers_gsg?extIdCarryOver=true&sc_cid=701f2000001OH6pAAG#installing-codeready-containers_gsg) single node openshift
  + https://haralduebele.blog/2019/09/13/red-hat-openshift-4-on-your-laptop/amp/
  + https://developers.redhat.com/articles/2022/04/01/codeready-workspaces-scales-now-red-hat-openshift-dev-spaces#
* https://github.com/openshift/okd/blob/master/README.md
* https://www.admin-magazin.de/Das-Heft/2020/10/Kubernetes-einrichten-und-betreiben-2 (okd)
* https://itnext.io/guide-installing-an-okd-4-5-cluster-508a2631cbee
* AWS
  + https://docs.okd.io/latest/installing/installing_aws/installing-aws-default.html 
* [Simulate Bare-Metal IPMI/BMC on libvirt/virt-manage](https://gist.github.com/williamcaban/aba796f856264799326d554ac11a4a66) needed for bare-metal setup

#### OKD SNO setup (single node install)

* https://www.okd.io/guides/upi-sno/
  + https://upstreamwithoutapaddle.com/
  + https://upstreamwithoutapaddle.com/home-lab/lab-intro/
  + https://github.com/cgruver/kamarotos
* https://upstreamwithoutapaddle.com/blog%20post/2023/03/06/Back-To-Where-It-All-Started.html
* https://www.okd.io/guides/virt-baremetal-upi/
* https://developers.redhat.com/blog/2023/02/08/sno-spot# sno on AWS
  + https://developers.redhat.com/products/red-hat-openshift-service-on-aws/overview
* https://techbloc.net/archives/5074
* https://medium.com/swlh/guide-okd-4-5-single-node-cluster-832693cb752b

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
* https://www.redhat.com/sysadmin/compose-kubernetes-podman

### other podman interfaces

* https://www.redhat.com/sysadmin/podman-docker-compose
* https://github.com/containers/podman-compose
* [docker api](https://podman.readthedocs.io/en/latest/_static/api.html)
* [toolbox](https://github.com/containers/toolbox)
* https://serverfault.com/questions/964862/podman-method-to-convert-docker-compose-files-to-systemd-unit-files


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

### programming and development on openshift/kubernetes

* https://cdk8s.io/
  + https://github.com/cdk8s-team/cdk8s
* [pods vs deployments](https://stackoverflow.com/questions/41325087/what-is-the-difference-between-a-pod-and-a-deployment) featured!
  + https://docs.openshift.com/container-platform/4.13/applications/deployments/what-deployments-are.html
* [projects vs namespaces](https://serverfault.com/questions/1025637/what-is-the-difference-between-objects-project-and-namespace-in-openshift-4-x) featured!
  + https://docs.openshift.com/container-platform/4.13/applications/projects/working-with-projects.html
  + https://docs.openshift.com/online/pro/architecture/core_concepts/projects_and_users.html
* [access API from containers](https://docs.openshift.com/container-platform/4.13/nodes/containers/nodes-containers-downward-api.html)

#### debug on openshift/kubernetes

* [debug java](https://www.redhat.com/en/blog/remote-debugging-java-applications-openshift)
* [debug java with cdk](https://developers.redhat.com/blog/2016/07/21/debugging-java-applications-using-the-red-hat-container-development-kit)
* [use odo (debug)](https://www.opensourcerers.org/2021/03/08/cloud-native-appdev-without-tears-using-odo-to-boost-your-workflow/)
  + https://developers.redhat.com/products/odo/overview
* [debug with vscode](https://developers.redhat.com/blog/2020/02/28/debugging-components-in-openshift-using-vs-code#)

#### programming

##### serverless

* https://www.baeldung.com/ops/knative-serverless
  + https://knative.dev/docs/
  + https://docs.openshift.com/container-platform/4.13/cli_reference/kn-cli-tools.html
* https://www.baeldung.com/spring-cloud-function
  + https://spring.io/serverless
* https://piotrminkowski.com/2021/03/01/spring-boot-on-knative/
* https://knative.dev/
  + https://www.redhat.com/de/topics/microservices/what-is-knative
* https://openwhisk.apache.org/
  + https://github.com/apache/openwhisk
* https://www.openfaas.com/


#### special apps on openshift

* [flink operator](https://cloud.redhat.com/blog/a-quick-guide-to-automated-data-streaming-with-the-flink-operator-on-openshift)
  + https://github.com/vemonet/flink-on-openshift
* [spark helm](https://github.com/CSCfi/spark-openshift)
  + https://cloud.redhat.com/blog/getting-started-running-spark-workloads-on-openshift
* [tekton](https://tekton.dev/docs/concepts/overview/)
  + https://access.redhat.com/documentation/de-de/openshift_container_platform/4.10/html/cli_tools/pipelines-cli-tkn
  + https://docs.openshift.com/pipelines/1.12/tkn_cli/installing-tkn.html
* [camel K](https://camel.apache.org/camel-k/2.0.x/installation/platform/openshift.html)
  + https://access.redhat.com/documentation/de-de/red_hat_integration/2021.q1/html-single/deploying_camel_k_integrations_on_openshift/index

##### Nginx on openshift

* https://stackoverflow.com/questions/54360223/openshift-nginx-permission-problem-nginx-emerg-mkdir-var-cache-nginx-cli
* [nginx openshift template](https://gist.github.com/exaV/978c4d9ac66b2940da141340f08bb82a)
* [nginx configuration through configmap](https://gist.github.com/petitviolet/d36f33d145d0bbf4b54eb187b79d0244)

### Redhat openshift developer sandbox

* https://developers.redhat.com/developer-sandbox
* https://developers.redhat.com/blog/2021/04/21/access-your-developer-sandbox-for-red-hat-openshift-from-the-command-line
* [learn openshift in sandbox](https://developers.redhat.com/developer-sandbox/activities)

#### Tooling

* [virtctl - kubevirt](https://kubevirt.io/labs/kubernetes/lab1.html) use VM on openshift/kubernetes
* [sandboxed containers - a more obscure alternative to virtctl](https://github.com/openshift/sandboxed-containers-operator)
* [oc](https://docs.openshift.com/container-platform/4.13/cli_reference/openshift_cli/getting-started-cli.html)
* [opc](https://pkg.go.dev/github.com/openshift-pipelines/opc)

#### openshift/kubernetes multi-cluster

* [OCM](https://open-cluster-management.io/)
* [subctl - submariner](https://submariner.io/getting-started/)
* [karmada](https://github.com/karmada-io/karmada)
* [kubernetes cluster API](https://cluster-api.sigs.k8s.io/introduction)
* https://spinnaker.io/
  + https://github.com/spinnaker/halyard

#### Alternatives to Redhat openshift developer sandbox

* https://killercoda.com/
* https://minikube.sigs.k8s.io/docs/start/
* https://kubernetes.io/docs/setup/production-environment/turnkey-solutions/
* [loom](https://github.com/datawire/loom) enables operations engineers to provide a self-serve Kubernetes provisioning experience for developers

* [openshift local](https://access.redhat.com/documentation/en-us/red_hat_openshift_local/2.29/html-single/getting_started_guide/index)
* [minikube](https://minikube.sigs.k8s.io/docs/start/)
  + https://kubernetes.io/de/docs/tasks/tools/install-minikube/
  + [hello minikube](https://kubernetes.io/de/docs/tutorials/hello-minikube/)
  + [own/untrusted CA PKI](https://minikube.sigs.k8s.io/docs/handbook/untrusted_certs/)
  + [accessing apps](https://minikube.sigs.k8s.io/docs/handbook/accessing/)
  + [use helm with minikube](https://docs.bitnami.com/kubernetes/get-started-kubernetes/)
* [microk8s](https://microk8s.io/) ubuntu - multipass-vm-based
  + https://multipass.run/
* [microshift](https://microshift.io/) iot-faced
  + https://www.redhat.com/en/topics/edge-computing/microshift
  + https://github.com/openshift/microshift
* [k3s](https://k3s.io/) iot-faced
  + [k3d](https://github.com/k3d-io) wrapper for k3s
* [kind](https://kind.sigs.k8s.io/) container-in-container
* [Rancher Desktop (by Suse)](https://rancherdesktop.io/)

## kubernetes management tools

* https://docs.google.com/spreadsheets/d/1FCgqz1Ci7_VCz_wdh8vBitZ3giBtac_H8SBw4uxnrsE/edit#gid=0 featured!
* [kubetools](https://collabnix.github.io/kubetools/) featured!
* https://www.augmentedmind.de/2022/08/21/kubernetes-development-tools/

## kubernetes and openshift gitops

* https://loft.sh/blog/gitops-kubernetes-comparing-argo-cd-vs-jenkins-x-vs-flux-vs-spinnaker/
* https://cloudogu.com/en/blog/gitops-tools#operators-in-comparison-argocd-vs-flux-v2 featured!
  + https://github.com/weaveworks/awesome-gitops
  + [gitops tech book](https://www.gitops.tech/) Cloud-native Continuous Deployment
    - https://leanpub.com/gitops
  + [werf](https://github.com/werf/werf) CI/CD based on Dockerfiles and helm
  + [pipecd](https://github.com/pipe-cd/pipecd) CI/CD deploy anywhere
  + [fleet](https://github.com/rancher/fleet) CI/CD deploy anywhere from git
  + [argo CD](https://github.com/argoproj/argo-cd) Declarative Continuous Delivery for Kubernetes
  + [argo rollouts](https://github.com/argoproj/argo-rollouts/) CRD alternative to RollingUpdate (works with supported API gateways)
  + [flux2](https://github.com/fluxcd/flux2)
    - https://fluxcd.io/flux/get-started/
    - https://fluxcd.io/flux/concepts/
    - https://fluxcd.io/flux/
    - https://medium.com/@aaltundemir/demystifying-gitops-bootstrapping-flux-fbfee94f8188
  + [flagger](https://github.com/fluxcd/flagger)
  + [atlantis](https://github.com/runatlantis/atlantis) Runs terraform plan, import, apply remotely and comments back on the pull request with the output
* [carvel](https://carvel.dev/)
  + [carvel as meta chart/operators platform](https://hackmd.io/@carvel/Bkhq99UJ9)
* [gitkube](https://github.com/hasura/gitkube)
* https://www.redhat.com/de/technologies/cloud-computing/openshift/gitops tekton-based
  + https://cloud.redhat.com/blog/introduction-to-gitops-with-openshift
* [spinnaker](https://spinnaker.io/)
  + [spinnaker features](https://www.opsmx.com/what-is-spinnaker)
  + [halyard](https://github.com/spinnaker/halyard) config and update spinnaker
* https://devopsdozen.com/tools-and-services-categories/
* https://cluster-api.sigs.k8s.io/developer/providers/implementers-guide/controllers_and_reconciliation.html concepts shared between cluster API and gitops
  + https://www.youtube.com/watch?v=8JYn0PIHQEY
* [harness](https://www.harness.io/products/platform) commercial
  + https://github.com/harness
* [kubeapps](https://kubeapps.dev/) UI for kubernetes
  + https://kubeapps.dev/docs/latest/project/readme/
  + https://developer.harness.io/docs/get-started

## kubernetes and openshift provisioning

* [Helm vs. oc Templates vs. Kustomize vs. Operators](https://learn.redhat.com/t5/Containers-DevOps-OpenShift/Helm-chart-Templates-or-Kustomization-file/td-p/22285) featured!
* https://www.harness.io/blog/helm-vs-kustomize featured!
* https://phoenixnap.com/blog/helm-vs-terraform
* https://spacelift.io/blog/kustomize-vs-helm

* [terraform with helm](https://registry.terraform.io/providers/llomgui/openshift/latest/docs/guides/getting-started)
  + https://developer.hashicorp.com/terraform/tutorials/kubernetes/helm-provider
* [parameters with openshift deployment](https://move2kube.konveyor.io/tutorials/customizing-the-output/custom-parameterization-of-helm-charts-kustomize-octemplates)
* [using oc templates](https://docs.openshift.com/container-platform/4.13/openshift_images/using-templates.html)
* pulumi
  + https://github.com/pulumi/pulumi
* [karpenter](https://github.com/aws/karpenter)

### kubernetes and openshift package managers and configuration management

* https://helm.sh/ (standard for openshift)
  + https://www.howtogeek.com/devops/how-to-get-started-writing-helm-charts-for-your-kubernetes-applications/
  + https://blog.nillsf.com/index.php/2019/11/23/writing-a-helm-v3-chart/
  + https://helm.sh/de/docs/howto/charts_tips_and_tricks/
  + https://helm.sh/docs/topics/charts/
  + https://codefresh.io/blog/using-helm-with-gitops/
* https://kustomize.io/ (standard for kubernetes)

#### kustomize

* https://kubernetes.io/docs/tasks/manage-kubernetes-objects/kustomization/ featured!
* https://github.com/kubernetes-sigs/kustomize
* https://kubectl.docs.kubernetes.io/references/kustomize/glossary/#kustomization

## kubernetes and openshift CI/CD

* https://tekton.dev/docs/ (standard for openshift)

## kubernetes and openshift deployment

* https://skaffold.dev/ (pluggable into helm and kustomize)
  + https://skaffold.dev/docs/pipeline-stages/deployers/helm/
  + https://skaffold.dev/docs/pipeline-stages/deployers/kustomize/
* https://docs.openshift.com/container-platform/4.13/security/container_security/security-deploy.html

## custom resource definitions (CRDs) and extending kubernetes

* https://kubebuilder.io/introduction
  + https://github.com/kubernetes-sigs/kubebuilder
  + https://kubebuilder.io/reference/watching-resources/externally-managed connection to gitops
* [crossplane](https://github.com/crossplane/crossplane) native access to public cloud from private kubernetes
  + https://docs.crossplane.io/latest/getting-started/introduction/
  + https://docs.crossplane.io/latest/getting-started/provider-aws/

## differences between openshift and kubernetes

* https://k21academy.com/openshift/openshift-vs-kubernetes/
* https://www.redhat.com/en/technologies/cloud-computing/openshift/red-hat-openshift-kubernetes

## migration to openshift/kubernetes

* https://github.com/konveyor/move2kube/ featured!
  + https://www.konveyor.io/
  + https://www.konveyor.io/ecosystem/
  + https://github.com/konveyor/operator
  + https://github.com/konveyor/move2kube-demos

## openshift/kubernetes secrets management

* https://github.com/getsops/sops
* https://kyverno.io/ policy engine designed for Kubernetes (not needed for openshift)

## openshift for developers

* [openshift resources](https://github.com/mikeroyal/OpenShift-Guide/blob/main/README.md) featured!
* [oreilly book 2021](https://github.com/openshift-for-developers)
* [openshift courses for developers](https://medium.com/javarevisited/6-best-openshift-courses-for-beginners-and-experienced-developers-d124edd2baff)
* [Openshift Guide](https://github.com/mikeroyal/OpenShift-Guide/blob/main/README.md) featured!

* [Openshift Dev Spaces](https://developers.redhat.com/products/openshift-dev-spaces/download) - eclipse che on the cluster
* [Red Hat Openshift Dev Tools](https://developers.redhat.com/products/openshift/download)
* [Eclipse JKube](https://projects.eclipse.org/projects/ecd.jkube) cloud-native java apps
  + [JKube](https://eclipse.dev/jkube/) maven and gradle plugin for openshift/kubernetes deployment
* [devfile](https://devfile.io/)
  + [spring petclinic](https://github.com/redhat-developer-demos/spring-petclinic/tree/main) openshift devfile example
* [skaffold](https://skaffold.dev/)
* [odo](https://odo.dev/)
* [tilt](https://tilt.dev/)
* [cloud code](https://cloud.google.com/code)
* [DevSpace](https://github.com/devspace-sh/devspace)
* [draft](https://github.com/Azure/draft)
* [garden](https://github.com/garden-io/garden) partly commercial

### odo

* https://odo.dev/
* github 733 stars
* Languages: node.js, java (spring boot), .NET, go-lang
* Config file: https://devfile.io/
  + Registry with templates: https://registry.devfile.io/viewer
* Cloud: kubernetes, openshift, podman (local)
* Debug: true
* container file change (inner loop): true
* container image build (outer loop): true
* supports: che, jetbrains (openshift toolkit), vscode, devspaces
  + details: https://devfile.io/docs/2.2.2/innerloop-vs-outerloop
* written in: go-lang
* overview: https://odo.dev/docs/development/architecture/how-odo-works
* parent support

### tilt

* https://tilt.dev/
* github 7000 stars
* Languages: node.js, java, C#, go-lang, python, Bazel
* Config file: https://docs.tilt.dev/api
  + based on : https://github.com/bazelbuild/starlark (python-like) from Bazel
* Cloud: kubernetes
* Debug: true
* container file change (inner loop): when configured
* container image build (outer loop): true
* supports: vscode (only but own ui)
* written in: go-lang, python
* overview: https://docs.tilt.dev/controlloop
* find itself better than scaffold: https://docs.tilt.dev/skaffold.html

### scaffold

* https://skaffold.dev/
* github 14300 stars
* Languages: agnostic
* Config file: https://skaffold.dev/docs/references/yaml/
* Cloud: kubernetes
* Debug: true
* container file change (inner loop): true (file sync)
* container image build (outer loop): true
* images: Docker, Jib, Bazel, Buildpacks, ko
  + on: local, cluster, google cloud build
* manifest render and deploy: raw/kubectl, helm, kustomize, Kpt, cloud run, docker
* supports: cloud code (vscode, intellij), (google) cloud shell, (google) cloud run, cli
* written in: go-lang
* overview: https://skaffold.dev/docs/design/
* integrated in: https://github.com/GoogleCloudPlatform/solutions-builder

### image building (alternatives to Dockerfile)

* https://buildpacks.io/
* [openshift source-to-image (s2i)](https://github.com/openshift/source-to-image)
* [jib](https://github.com/GoogleContainerTools/jib) cli, maven, gradle
* [kaniko](https://github.com/GoogleContainerTools/kaniko) build images in kubernetes
* [ko](https://ko.build/) build images for go-lang apps
* [shipwright](https://github.com/shipwright-io/build) meta image builder supports: kaniko, buildkit, buildah, ...

### openshift/kubernetes developers tips

* [switch cluster and project](http://jstakun.blogspot.com/2019/10/switching-context-between-clusters.html)

### openshift/kubernetes developer testing

* [microcks](https://microcks.io/documentation/getting-started/)
  + https://github.com/microcks/microcks

### kubernetes API clients (SDKs)

* [kubernetes client libs](https://kubernetes.io/docs/reference/using-api/client-libraries/)

#### kubernetes/openshift and java

* (java client for complete kubernetes/openshift API) [https://github.com/fabric8io/kubernetes-client] also includes interesting projects
  + https://github.com/bmuschko/gradle-kubernetes-plugin
  + https://camel.apache.org/camel-k/next/apis/java.html
* (official java client) [introduction to k8s java client](https://www.baeldung.com/kubernetes-java-client)
  + https://github.com/kubernetes-client/java
* https://fabric8.io/ mostly discontinued, but some projects has survived
* [java operators](https://developers.redhat.com/articles/2022/02/15/write-kubernetes-java-java-operator-sdk#why_write_operators_in_java_)
  + https://developers.redhat.com/articles/2022/03/22/write-kubernetes-java-java-operator-sdk-part-2
  + https://javaoperatorsdk.io/
  + https://blog.container-solutions.com/cloud-native-java-infrastructure-automation-with-kubernetes-operators
  + https://github.com/operator-framework/java-operator-sdk

### istio (envoy) and (other) service mesh

* [istio introduction](https://www.baeldung.com/ops/istio-service-mesh)
  + [kiali - console for istio](https://kiali.io/) also included in openshift service mesh
* [openshift service mesh - istio based](https://docs.openshift.com/container-platform/4.14/service_mesh/v2x/servicemesh-release-notes.html)
  + https://cloud.redhat.com/blog/introducing-openshift-service-mesh-2.0
  + [3scale adapter on service mesh](https://docs.openshift.com/container-platform/4.14/service_mesh/v1x/threescale-adapter.html)
* [istio and dynatrace](https://www.dynatrace.com/news/blog/automatic-intelligent-observability-into-envoy-proxied-services-of-your-istio-service-mesh/)

#### istio universe

* [jaeger](https://www.jaegertracing.io/) distributed tracing
  + [jaeger operator](https://github.com/jaegertracing/jaeger-operator)
  + [kubernetes ingress nginx controller](https://kubernetes.github.io/ingress-nginx/) needed by jaeger operator
    - https://kubernetes.github.io/ingress-nginx/deploy/
* [kiali](https://kiali.io/) console for istio
  + [kiali operator](https://github.com/kiali/kiali-operator)
* [apache skywalking](https://skywalking.apache.org/) performance monitor tool for distributed systems
* [spiffe](https://spiffe.io/) provide strongly attested, cryptographic identities to distributed workloads
  + [SPIRE use-cases](https://spiffe.io/docs/latest/spire-about/use-cases/)
* [cert-manager](https://cert-manager.io/docs/) certificates and certificate issuers as resource types in Kubernetes clusters, and simplifies the process of obtaining, renewing and using those certificates (includes venafi support)
  + https://istio.io/latest/docs/ops/integrations/certmanager/

#### kiali setup (kubernetes)

1. Deploy the operator
2. Deploy kiali instance in project/n
   ```yaml
   apiVersion: kiali.io/v1alpha1
    kind: Kiali
    metadata:
      name: kiali
      namespace: aanno-sm
    spec:
      auth:
        strategy: "token"
      deployment:
        view_only_mode: false
      server:
        web_root: "/kiali"
   ```

```bash
# wait for end of deploying instance
oc get kiali kiali -o json

# also 
oc describe kiali kiali -n aanno-sm
```

References:
* https://kiali.io/docs/installation/quick-start/
* https://kiali.io/docs/installation/installation-guide/example-install/
* https://github.com/kiali/kiali

