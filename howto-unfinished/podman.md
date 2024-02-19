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
```

### Reference

* https://docs.oracle.com/en/operating-systems/oracle-linux/podman/podman-ConfiguringStorageforPodman.html#podman-install-storage
* https://github.com/containers/podman/issues/7396
* https://manpages.debian.org/experimental/containers-storage/containers-storage.conf.5.en.html
* https://github.com/containers/podman/blob/main/vendor/github.com/containers/storage/storage.conf

```bash
```

```bash
```

```bash
```

```bash
```

