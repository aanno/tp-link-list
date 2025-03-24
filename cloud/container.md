# Container

## On Windows and Windows Container

* [Containerplattformtools under Windows](https://learn.microsoft.com/en-us/virtualization/windowscontainers/deploy-containers/containerd) - containerd, runhcs, hcs
* [Windows and containers](https://learn.microsoft.com/en-us/virtualization/windowscontainers/about/)
* [Install Container runtimes](https://learn.microsoft.com/en-us/virtualization/windowscontainers/quick-start/set-up-environment) - moby, mirantis, containerd
* [hcsshim](https://github.com/Microsoft/hcsshim/)
* [Hyper-V APIs](https://learn.microsoft.com/de-de/virtualization/api/) - WHP, WMI, HCS
* [WSL2 and GUI apps](https://learn.microsoft.com/en-us/windows/wsl/tutorials/gui-apps)
* [podman-desktop](https://podman-desktop.io/downloads)

### WSL2

* [GUI apps on WSL2](https://learn.microsoft.com/en-us/windows/wsl/tutorials/gui-apps)
* [podman ui](https://podman-desktop.io/) WSL2 based

### Windows containers and kubernetes

* https://rancherdesktop.io/ Container Management and Kubernetes on the Desktop
  [rancher desktop as docker replacement](https://www.hangoutdude.com/post/replace-docker-with-rancher-nerdctl)

## Open Container Initiative (OCI) - container format

* https://opencontainers.org/
* [oci runtime tools](https://github.com/opencontainers/runtime-tools) generate and validate

## Container runtimes and infrastructure (CRI)

* [docker, containerd, runc, crio, oci](https://www.tutorialworks.com/difference-docker-containerd-runc-crio-oci/)
* [docker, containerd, crio](https://blog.purestorage.com/de/uncategorized-de/containerd-versus-docker-worin-besteht-der-unterschied/)
* [containerd vs docker](https://www.wallarm.com/cloud-native-products-101/containerd-vs-docker-what-is-the-difference-between-the-tools)
* [containerd vs docker](https://earthly.dev/blog/containerd-vs-docker/)
* [finch](https://github.com/runfinch/finch) distribution of nerdctl, containerd, BuildKit, and Lima for macos
* [tini](https://github.com/krallin/tini) init for containers
* [watchtower](https://github.com/containrrr/watchtower) automatically update your running containers with new images (docker only)
  + https://containrrr.dev/watchtower/

### implementations

* [containerd](https://containerd.io/)
  + [nerdctl](https://github.com/containerd/nerdctl) docker-compatible CLI for containerd
  + https://medium.com/nttlabs/nerdctl-359311b32d0e
* [cri-o for kubernetes](https://cri-o.io/)
* [youki](https://github.com/containers/youki) rust
* [runc](https://github.com/opencontainers/runc) go-lang
* [crun](https://github.com/containers/crun) c-lang

## Virtual Machines (VMs)

* [lima](https://lima-vm.io/) Linux virtual machines with automatic file sharing and port forwarding (similar to WSL2)
  + https://lima-vm.io/docs/
* [crun-vm](https://github.com/containers/crun-vm)  OCI Runtime that enables Podman, Docker, and Kubernetes to run QEMU-compatible Virtual Machine (VM) images
* [bootc](https://containers.github.io/bootc/bootc-install.html) bootable operating systems as container images

## Container articles

* [linode container guides](https://www.linode.com/docs/guides/applications/containers/)
* [Understanding user namespaces with rootless containers](https://access.redhat.com/articles/5946151) login required

## Container networking

* [change container routing](https://stackoverflow.com/questions/36882945/change-default-route-in-docker-container)
  `ip netns`, docker events, nsenter
* [podman inter container communication](https://www.redhat.com/sysadmin/container-networking-podman)

## Linux distros (and OS) as container image base

* [alpine linux](https://www.alpinelinux.org/)
* [Wolfi OS](https://github.com/wolfi-dev/) an (more secure) alternative to alpine

## Docker (and Podman) CLI

Restarting exited containers on podman seems _not_ to work!

* [how to continue an exited container](https://stackoverflow.com/questions/21928691/how-to-continue-a-docker-container-which-has-exited)
  + [restart stopped containers](https://www.baeldung.com/linux/docker-restart-stopped-container)
* [podman restart man page](https://docs.podman.io/en/latest/markdown/podman-restart.1.html)

### enable docker rootless (also works with podman installed)

```bash
$ cat ~/bin/switchto-docker-rootless.sh 
#!/bin/bash -x

systemctl --user stop podman.socket || true
systemctl --user start docker
curl -H "Content-Type: application/json" \
        --unix-socket /run/user/$UID/docker.sock \
    http://localhost/_ping
export DOCKER_HOST=unix:///run/user/$UID/docker.sock
echo "export DOCKER_HOST=unix:///run/user/$UID/docker.sock"
```

Docker images are stored at `$HOME/.local/share/docker/fuse-overlay` (default).

```bash
mkdir -p ~/.config/docker
touch ~/.config/docker/daemon.json
```

The config file is under `~/.config/docker/daemon.json` (create if necessary):
```bash
{
  "data-root": "/stratis/home/tpasch/docker/data"
}
```

```bash
sudo semanage fcontext -a -e $HOME/.local/share/docker/fuse-overlay /stratis/home/tpasch/docker
sudo restorecon -R -v /stratis/home/tpasch/docker/data
```

```bash
```

* [change data directory](https://stackoverflow.com/questions/74708774/how-to-change-data-directory-for-docker-rootless)

### enable socket for podman rootless

```bash
$ cat ~/bin/switchto-podman-socket.sh 
#!/bin/bash -x

systemctl --user stop docker || true
systemctl --user start podman.socket
curl -H "Content-Type: application/json" \
        --unix-socket /run/user/$UID/podman/podman.sock \
    http://localhost/_ping
export DOCKER_HOST=unix:///run/user/$UID/podman/podman.sock
echo "export DOCKER_HOST=unix:///run/user/$UID/podman/podman.sock"
```

### install buildx for docker on fedora

Download [buildx binary](https://github.com/docker/buildx/releases/).

```bash
cd
sudo dnf install containernetworking-plugins golang-github-moby-buildkit
mkdir .docker/cli-plugins
cp Downloads/buildx-v*.linux-amd64 .docker/cli-plugins
cd .docker/cli-plugins
chmod u+x buildx-v*.linux-amd6
ln -s buildx-v*.linux-amd64 /home/tpasch/.docker/cli-plugins/docker-buildx
cd
```

* [manual download buildx](https://github.com/docker/buildx#manual-download)

### use buildx (and BuildKit)

Do always use `docker buildx` when you type `docker build` you could set

```bash
export DOCKER_BUILDKIT=1
```

```bash
```

### Docker innovations

BuildKit enables features like cross-build caching, secrets. Some of this 
feature are also (independently) in podman.

* [BuildKit](https://github.com/moby/buildkit)
  + [bake](https://docs.docker.com/build/bake/) - high level interface to BuildKit
  + [use BuildKit with podman](https://pythonspeed.com/articles/podman-buildkit/)
* [multi-platform images with docker](https://docs.docker.com/build/building/multi-platform/)
  + [multi-platform images with docker and podman](https://developers.redhat.com/articles/2023/11/03/how-build-multi-architecture-container-images)
  + [multi-platform images with buildah](https://medium.com/oracledevs/building-multi-architecture-containers-with-buildah-44ed100ec3f3)


### Dockerfile (Syntax) (also used by podman)

* [Dockerfile](https://docs.docker.com/reference/dockerfile/)
* [Docker ARG, ENV and .env](https://vsupalov.com/docker-arg-env-variable-guide/) featured!

### docker tip and tricks

* [xx](https://github.com/tonistiigi/xx)  cross-compilation from Dockerfiles that understand the --platform flag (not working on podman?)
* [multiple processes in one container](https://www.howtogeek.com/devops/how-to-run-multiple-services-in-one-docker-container/)

####  Error starting userland proxy

Error:
error while starting docker-proxy: exec: "docker-proxy": executable file not found in $PATH

Solution:

```bash
sudo ln -s /usr/libexec/docker/docker-proxy /usr/bin/
```

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
* [Podman: Linux-Container einfach gemacht, Teil 2](https://www.heise.de/hintergrund/Podman-Linux-Container-einfach-gemacht-Teil-2-4429630.html)
* [Podman: Linux-Container einfach gemacht, Teil 1](https://www.heise.de/hintergrund/Podman-Linux-Container-einfach-gemacht-Teil-1-4329067.html)

* [podman on windows](https://www.redhat.com/sysadmin/run-podman-windows)
* [podman desktop](https://podman-desktop.io/)

### podman tip and tricks

* [sharing supplemental group](https://www.redhat.com/sysadmin/supplemental-groups-podman-containers) share resources between the host and containers
* [How Podman can extract a container's external IP address](https://www.redhat.com/sysadmin/container-ip-address-podman)
* [failed to find plugin "bridge" in path](https://github.com/containers/podman/issues/13396)

### podman-compose

* [use --userns keep-id with podman-compose](https://github.com/containers/podman-compose/issues/166)
  `export PODMAN_USERNS=keep-id`

### podman security

* [podman generate seccomp profiles](https://podman.io/blogs/2019/10/15/generate-seccomp-profiles.html)

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
  + [introduction](https://gnulinux.ch/eine-kurze-einfuehrung-in-toolbox-unter-fedora)
* https://serverfault.com/questions/964862/podman-method-to-convert-docker-compose-files-to-systemd-unit-files

### podman network

* [podman network basics](https://github.com/containers/podman/blob/main/docs/tutorials/basic_networking.md)
* [podman network reload](https://docs.podman.io/en/stable/markdown/podman-network-reload.1.html) re-establish network connection after firewall change
* [Podman containers can't be connected when iptables default policy for FORWARD chain is set to DROP](https://access.redhat.com/solutions/5885821)

#### podman network: CNI (rootful)

* https://www.redhat.com/sysadmin/container-networking-podman
* https://github.com/containernetworking/cni
* https://docs.opensvc.com/latest/fr/agent.configure.cni.html (based on cni, off topic)

#### podman network: slirp4netns (rootless)

* https://www.tutorialworks.com/containers/podman-host-networking/
* https://github.com/rootless-containers/slirp4netns

### podman solutions (for some applicatios)

*  nginx-autoletsencrypt: https://github.com/profihost/podman-container-configs/
*  jitsi-meet: https://wissen.profihost.com/wissen/artikel/installation-von-jitsi-meet/

## Container registries

* [distribution registry](https://github.com/distribution/distribution)
  + [documentation](https://distribution.github.io/distribution/about/configuration/)
  + [docker image](https://hub.docker.com/_/registry)
* [pulpproject pulp 3](https://pulpproject.org/about-pulp-3/) content registry in python for RPM, File, Container, Ansible, Debian, Python, OSTree, Maven, Ruby Gem
  + [supported content](https://pulpproject.org/content-plugins/)
  + [pulp 3 with podman-compose](https://pulpproject.org/podman-compose/)
  + https://github.com/pulp
* [harbor](https://goharbor.io/) big, only for kubernetes
* [quay](https://github.com/quay/quay) big

## Docker 

* https://docs.docker.com/config/containers/container-networking/#dns-services
  + https://github.com/jderusse/docker-dns-gen
  + https://hub.docker.com/r/cosmicq/docker-bind/
  + https://github.com/sameersbn/docker-bind
  + http://www.damagehead.com/blog/2015/04/28/deploying-a-dns-server-using-docker/
* https://www.adelton.com/docs/containers/complex-application-in-container
* [pullio - keep docker-compose containters up-to-date](https://hotio.dev/pullio/)
* [nvidia container toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html)
  + https://github.com/NVIDIA/nvidia-docker
  + [nvidia container toolkit and podman](https://gist.github.com/bernardomig/315534407585d5912f5616c35c7fe374)

### Moby

* https://github.com/moby/moby
  + https://mobyproject.org/projects/
* https://www.infoworld.com/article/3193904/containers/what-is-dockers-moby-project.html
* https://www.heise.de/developer/meldung/Docker-versus-Moby-Wie-geht-es-mit-Docker-weiter-3689886.html

## Container collections

* [linuxserver](https://www.linuxserver.io/)
* [hotio](https://hotio.dev/containers/apprise/)

## Multi-process containers

* https://docs.docker.com/config/containers/multi-service_container/
* [s6 overlay](https://github.com/just-containers/s6-overlay) used by linuxserver.io
  + https://skarnet.org/software/s6/overview.html
* [supervisord](http://supervisord.org/)
  + https://advancedweb.hu/supervisor-with-docker-lessons-learned/
  + https://blog.servivum.com/gimme-more-mehrere-prozesse-im-docker-container-mit-supervisor/

## Docker/Podman volumes

* [Overview](https://docs.docker.com/storage/volumes/)
* article on backup/restore
  + https://blog.ssdnodes.com/blog/docker-backup-volumes/
  + https://scorban.de/2018/02/06/auto-backup-fuer-docker-volumes/
  + https://gist.github.com/rockerBOO/48b777868f169042818ae7f66bc62502
  + https://stackoverflow.com/questions/26331651/how-can-i-backup-a-docker-container-with-its-data-volumes
* [Loomchild volume backup](https://hub.docker.com/p/loomchild/volume-backup)
  + https://github.com/loomchild/volume-backup
* [Futurice volume backup](https://github.com/futurice/docker-volume-backup)
* [Blacklabelops volumerize](https://github.com/blacklabelops/volumerize) uses
  + [duplicity](http://duplicity.nongnu.org/)
  + [jobber](https://github.com/dshearer/jobber)

## Balena (container for IoT)

* https://www.balena.io/docs/learn/welcome/introduction/
  + https://www.balena.io/blog/announcing-balena-a-moby-based-container-engine-for-iot/

## Rootless Container

* https://rootlesscontaine.rs/
* https://github.com/nodesource/distributions

