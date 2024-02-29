# Podman

## Change user image storage location

Default storage is `.local/share/containers/storage`.

To change create or edit `.config/containers/storage.conf`:

```bash
# https://docs.oracle.com/en/operating-systems/oracle-linux/podman/podman-ConfiguringStorageforPodman.html#podman-install-storage
# man 5 containers-storage.conf
[storage]
  driver = "overlay"
  imagestore = "/stratis/home/tpasch/containers/storage"
```

The driver is _needed_ (otherwise you see a warning all the time). However, if you encounter:

```bash
podman images
Error: database graph driver "" does not match our graph driver "overlay": database configuration mismatch
```

You should do:

```bash
sudo rm -r .local/share/containers/*
# alternative?
podman system reset
```

If you switch between storage locations, you should always

```bash

podman system reset
```

_before_ switching.

### Reference

* https://docs.oracle.com/en/operating-systems/oracle-linux/podman/podman-ConfiguringStorageforPodman.html#podman-install-storage
* https://github.com/containers/podman/issues/7396
* https://manpages.debian.org/experimental/containers-storage/containers-storage.conf.5.en.html
* https://github.com/containers/podman/blob/main/vendor/github.com/containers/storage/storage.conf

## Podman playing Docker

It is possible to emulate docker-rootless with podman.

```bash
sudo dnf install -y podman podman-docker docker-compose

# setup socket
systemctl --user enable podman.socket
systemctl --user start podman.socket

# test socket
curl -H "Content-Type: application/json" \
	--unix-socket /var/run/user/$UID/podman/podman.sock \
    http://localhost/_ping

# socket path is different (from normal docker)
export DOCKER_HOST=unix:///run/user/$UID/podman/podman.sock
```

However, some programs (like `pulumi`) also access the storage. And this is problem - as the storage format is _not_ the same.

Hence 

```bash
mkdir /stratis/home/tpasch/containers/storage/overlay/link/home/tpasch/.local/share/containers/storage
ln -s /stratis/home/tpasch/containers/storage/overlay /stratis/home/tpasch/containers/storage/overlay/link/home/tpasch/.local/share/containers/storage
```

will _not_ help you.

In this case docker rootless might be an option.

```bash
dnf install moby-engine docker-compose docker-distribution golang-github-rootless-containers-rootlesskit
systemctl disable --now docker.service docker.socket
```

`dockerd-rootless-setuptool.sh` is not present in Fedora's version of docker 
(moby-engine, docker-distribution) but is also at 

* https://github.com/moby/moby/blob/master/contrib/dockerd-rootless-setuptool.sh
* https://github.com/moby/moby/blob/master/contrib/dockerd-rootless.sh

```bash
cp -i Downloads/dockerd-rootless-setuptool.sh /usr/bin/
cp -i Downloads/dockerd-rootless.sh /usr/bin/
chmod a+x /usr/bin/dockerd-*
```

You need the following in your `.bashrc`:

```bash
export DOCKER_HOST=unix:///run/user/$UID/docker.sock
```

Attention DOCKER_HOST for docker-rootless is different from podman playing docker.

And to start (_not_ permanent):

```bash
systemctl --user start docker
```

This is known to work with `pulumi`.

### Reference

* [podman playing rootless-docker-compose](https://brandonrozek.com/blog/rootless-docker-compose-podman/)
* [docker rootless](https://docs.docker.com/engine/security/rootless/)
* [Changing data root directory in rootless Docker](https://samadhiweb.com/blog/2023.02.22.rootless.docker.html)

```bash
```

```bash
```

```bash
```

