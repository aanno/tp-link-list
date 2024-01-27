# Fedora on Windows with WSL2

* Download from `https://kojipkgs.fedoraproject.org/packages/Fedora-Container-Base/39/20240127.0/images/`
* Extract `*.tar.xz`
* Use `<hash>/layer.tar` as `fedora-39-rootfs.tar`
* Import with `wsl.exe`
* WSLDir could be anything, e.g. `D:\wsl2\fedora`
* It will contain the `ext4.vhdx` linux root filesystem
* Set [fastestmirror](https://darryldias.me/2020/how-to-setup-fastest-mirror-in-dnf/)

```ps
```

## Reference

* [Fedora 38 x86_64 on WSL2 using PowerShell](https://gist.github.com/oleksis/01a351e8324ed9d399fe6d489be6e4dd)
