# Container

## On Windows and Windows Container

* [Containerplattformtools under Windows](https://learn.microsoft.com/en-us/virtualization/windowscontainers/deploy-containers/containerd) - containerd, runhcs, hcs
* [Windows and containers](https://learn.microsoft.com/en-us/virtualization/windowscontainers/about/)
* [Install Container runtimes](https://learn.microsoft.com/en-us/virtualization/windowscontainers/quick-start/set-up-environment) - moby, mirantis, containerd
* [hcsshim](https://github.com/Microsoft/hcsshim/)
* [Hyper-V APIs](https://learn.microsoft.com/de-de/virtualization/api/) - WHP, WMI, HCS

### Windows containers and kubernetes

* https://rancherdesktop.io/ Container Management and Kubernetes on the Desktop
  [rancher desktop as docker replacement](https://www.hangoutdude.com/post/replace-docker-with-rancher-nerdctl)


## Container runtimes and infrastructure

* [docker, containerd, runc, crio, oci](https://www.tutorialworks.com/difference-docker-containerd-runc-crio-oci/)
* [docker, containerd, crio](https://blog.purestorage.com/de/uncategorized-de/containerd-versus-docker-worin-besteht-der-unterschied/)
* [containerd vs docker](https://www.wallarm.com/cloud-native-products-101/containerd-vs-docker-what-is-the-difference-between-the-tools)
* [containerd vs docker](https://earthly.dev/blog/containerd-vs-docker/)
* [finch](https://github.com/runfinch/finch) distribution of nerdctl, containerd, BuildKit, and Lima for macos

### implementations

* [containerd](https://containerd.io/)
  + [nerdctl](https://github.com/containerd/nerdctl) docker-compatible CLI for containerd
  + https://medium.com/nttlabs/nerdctl-359311b32d0e

## Virtual Machines (VMs)

* [lima](https://lima-vm.io/) Linux virtual machines with automatic file sharing and port forwarding (similar to WSL2)
  + https://lima-vm.io/docs/