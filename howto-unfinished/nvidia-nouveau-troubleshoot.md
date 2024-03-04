# nvidia nouveau troubleshoot

* https://discuss.getsol.us/d/146-linux-survival-guide

## disable nvidia on boot

* `nvidia-drm.modeset=0`

### reference

* https://discuss.getsol.us/d/6406-help-turning-off-nvidia-drmmodeset

## disable nouveau on boot

* `nouveau.modeset=0`

### reference

* https://download.nvidia.com/XFree86/Linux-x86_64/304.128/README/commonproblems.html

## disable modeset completely

* `nomodeset i915.modeset=0 nouveau.modeset=0`

### reference

* https://wiki.archlinux.org/title/kernel_mode_setting
* https://www.reddit.com/r/linuxquestions/comments/zh9jyv/conditionally_disable_nvidia_kernel_module_on/

## f39 nvidia problems

### sddm crashes because of `/usr/lib64/libnvidia-eglcore.so.545.23.08`

`/usr/lib64/libnvidia-eglcore.so.545.23.08` is in package nvidia-driver-libs-545.23.08-1.fc37.x86_64 .

#### rpmfusion

* https://rpmfusion.org/Howto/NVIDIA

https://download1.rpmfusion.org/nonfree/fedora/nvidia-driver/39/x86_64/x/
xorg-x11-drv-nvidia-545.29.06-2.fc39.x86_64.rpm

Problem:
Uses a different driver version (but still cuda support).


## Switch from nvidia/dkms to rpmfusion/nvidia/akmods

```bash
systemctl disable dkms.service
dnf module disable nvidia-driver
dnf remove nvidia-driver-cuda nvidia-driver-cuda-libs nvidia-driver-NVML nvidia-libXNVCtrl-devel  nvidia-libXNVCtrl
dnf install akmod-nvidia

# ???
rm /lib/modules/6.5.6-300.fc39.x86_64/extra/nvidia*.xz
mkdir /lib/modules/6.5.6-300.fc39.x86_64/extra/nvidia
akmods --kernels 6.5.6-300.fc39.x86_64
```

Checking kmods exist for 6.5.6-300.fc39.x86_64Warning: Could not determine what package owns /lib/modules/6.5.6-300.fc39.x86_64/extra/nvidia/


```bash
# find /lib/modules -iname 'nvid*'
/lib/modules/6.5.6-300.fc39.x86_64/extra/nvidia.ko.xz
/lib/modules/6.5.6-300.fc39.x86_64/extra/nvidia-modeset.ko.xz
/lib/modules/6.5.6-300.fc39.x86_64/extra/nvidia-drm.ko.xz
/lib/modules/6.5.6-300.fc39.x86_64/extra/nvidia-uvm.ko.xz
/lib/modules/6.5.6-300.fc39.x86_64/extra/nvidia-peermem.ko.xz
/lib/modules/6.5.6-300.fc39.x86_64/kernel/drivers/net/ethernet/nvidia
/lib/modules/6.5.6-300.fc39.x86_64/kernel/drivers/platform/x86/nvidia-wmi-ec-backlight.ko.xz
/lib/modules/6.6.8-200.fc39.x86_64/kernel/drivers/net/ethernet/nvidia
/lib/modules/6.6.8-200.fc39.x86_64/kernel/drivers/platform/x86/nvidia-wmi-ec-backlight.ko.xz
/lib/modules/6.6.8-200.fc39.x86_64/extra/nvidia
/lib/modules/6.6.8-200.fc39.x86_64/extra/nvidia/nvidia-modeset.ko.xz
/lib/modules/6.6.8-200.fc39.x86_64/extra/nvidia/nvidia-peermem.ko.xz
/lib/modules/6.6.8-200.fc39.x86_64/extra/nvidia/nvidia-uvm.ko.xz
/lib/modules/6.6.8-200.fc39.x86_64/extra/nvidia/nvidia.ko.xz
/lib/modules/6.6.8-200.fc39.x86_64/extra/nvidia/nvidia-drm.ko.xz
```

```bash
akmods --rebuild --force --verbose
```

### Known problems

```bash
[  107.545148] NVRM: API mismatch: the client has the version 545.29.06, but
               NVRM: this kernel module has the version 545.23.08.  Please
               NVRM: make sure that this kernel module and all NVIDIA driver
               NVRM: components have the same version.
```

Reason:
* kmod-nvidia is 3:545.29.06-2.fc39
* xorg-x11-drv-nvidia-devel is 3:545.29.06-2.fc39
* nvidia-libXNVCtrl.x86_64
* nvidia-libXNVCtrl-devel
* initramfs is wrong: `dracut --regenerate-all --force --verbose`

```bash
# akmods
Checking kmods exist for 6.7.6-200.fc39.x86_64Warning: Could not determine what package owns /lib/modules/6.7.6-200.fc39.x86_64/extra/v4l2loopback/
```

```bash
# akmods --rebuild
Checking kmods exist for 6.7.6-200.fc39.x86_64             [  OK  ]
Building and installing nvidia-kmod                        [  OK  ]
Building and installing v4l2loopback-kmod                  [FEHLGESCHLAGEN]
Could not install newly built RPMs. You can find them and the logfile in:
/var/cache/akmods/v4l2loopback/0.12.7^20230503g2c9b670-2-for-6.7.6-200.fc39.x86_64.failed.log
```

Currently, you could build v4l2loopback with kmod as well (and you still
use dkms for that).

To circumvent, just say what you want to build:
```bash
akmods --akmod nvidia-kmod --kernels 6.7.4-200.fc39.x86_64
```

But the permanent solution is to switch from dkms to akmods for v4l2loopback.
TODO

```bash
```

```bash
```

```bash
```


