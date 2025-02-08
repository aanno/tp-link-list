# Fedora Tipps & Tricks

## Tipps zur Installation

- Linux für professionelle Zwecke (sowohl Server als auch Desktop)
  *stets* mit LVM2 einrichten, also *niemals* Partitionen direkt verwenden.
- Linux für Desktop und Laptops *stets* mit Verschlüsselung einrichten. Ich empfehle Vollverschlüsselung mittels LUKS.
  Dies wird von Fedora bereits bei der Installation unterstützt.
- SSD Caching kann man problemlos *nach* der Installation einrichten.

## Tipps zum Upgrade

- Der Upgrade von Fedora wird zwar nicht offiziell unterstützt, funktioniert meiner Erfahrung nach aber komplett
  problemlos:
  <https://fedoraproject.org/wiki/DNF_system_upgrade>
- Vor dem Upgrade ein Backup durchführen und Details zur Festplattenkonfiguration, LVM2, und Verschlüsselung ausdrucken.
- Vor dem Upgrade die Seite über bekannte Probleme lesen:
  <https://fedoraproject.org/wiki/Common_F26_bugs> bzw.
  <https://fedoraproject.org/wiki/Common_F25_bugs>

## Nach der Installation

- [Top things after installation](http://www.2daygeek.com/top-things-to-do-after-installing-fedora-24-workstation/#)
- [25 things to do](http://www.tecmint.com/things-to-do-after-fedora-24-workstation-installation/)
- [Using on libreoffice flatpak](https://whatofhow.wordpress.com/2016/06/01/libreoffice-5-2-beta-flatpak/)
- [usb modeswitch](https://github.com/Danw33/usb-modeswitch)
  + [use usb modeswitch on boot](https://askubuntu.com/questions/1080944/automatically-use-usb-modeswitch-for-wifi-usb)
- [long wait on NetworkManager-wait-online](https://networkmanager.dev/docs/api/latest/NetworkManager-wait-online.service.html)
- [Bluetooth Audio Headsets](https://wiki.archlinux.org/title/bluetooth_headset#Switch_between_HSP/HFP_and_A2DP_setting)
  + https://wiki.archlinux.org/title/Bluetooth_headset

### Bridge

Bridges are quick and dirty to run and test VMs. However, they may degrade your network performance.

* [create a br0 bridge with nmcli](https://www.cyberciti.biz/faq/how-to-add-network-bridge-with-nmcli-networkmanager-on-linux/)
* [linux bridges (german)](https://wiki.ubuntuusers.de/Netzwerkbr%C3%BCcke/)


### automount

* [automount with systemd](https://community.hetzner.com/tutorials/automount-filesystems-with-systemd/)
* [systemd.automount options](https://www.freedesktop.org/software/systemd/man/latest/systemd.automount.html)
* [systemd.mount options](https://www.freedesktop.org/software/systemd/man/latest/systemd.mount.html)

## Zusätzliche Repositories

- [terra](https://terra.fyralabs.com/) The 1000+ packages Fedora doesn’t ship
- [Copr Personal Repositories](http://copr.fedorainfracloud.org/)
- [RPM fusion](https://rpmfusion.org/) semi-official additions for fedora
- [EPEL](https://docs.fedoraproject.org/en-US/epel/) extra packages for RHEL (normally not needed on fedora)
- [negativo multimedia](https://negativo17.org/multimedia/) DVD, Bluerays, ffmpeg with cuda support and the like

### United RPMs

- <https://tlhp.cf/unitedrpms-rpmfusion-alternative/>
- <https://unitedrpms.github.io/>

<!-- end list -->

    # dnf config-manager --add-repo=https://unitedrpms.github.io/unitedrpms.repo
    # wget https://raw.githubusercontent.com/UnitedRPMs/unitedrpms.github.io/master/URPMS-GPG-PUBLICKEY-Fedora-25
    # sudo cp ~/Downloads/URPMS-GPG-PUBLICKEY-Fedora-25.txt /etc/pki/rpm-gpg/URPMS-GPG-PUBLICKEY-Fedora-25
    # dnf upgrade

## Wichtige Fedora Seiten

- [Fedora Labs](https://labs.fedoraproject.org/)
- [Fedora Planet](http://fedoraplanet.org/)
- [server world on f39](https://www.server-world.info/en/note?os=Fedora_39)

## Wayland

- [Known issues](https://fedoraproject.org/wiki/How_to_debug_Wayland_problems#known_issues)
- [Wayland for KDE](https://community.kde.org/KWin/Wayland)
- [modesetting on nvidia](https://negativo17.org/wayland-modesetting-on-nvidia/)
- [explicit sync](https://linuxnews.de/wayland-nvidia-und-explicit-sync/)

### Wayland Problems and Solutions

Force wayland for electron applications (including vscode, chrome, chromium). 
Add the following to `~/.config/electron25-flags.conf`. 

For vscode, the flags needs to be given on CLI.

```
--enable-features=WaylandWindowDecorations
--ozone-platform-hint=auto
```

Hint could be 'auto', 'default', 'x11', and 'wayland'.

In chrome and chromium, the hint could be set with:

chrome://flags/#ozone-platform-hint

Force x11 for eclipse (and eclipse RCP):
```
export GDK_BACKEND=x11
./eclipse
```

Manipulate wayland function with CLI: foreign-toplevel-management, virtual-keyboard, virtual-pointer:
* Use [wlctr](https://git.sr.ht/~brocellous/wlrctl)

* https://wiki.archlinux.org/title/wayland
* https://wiki.archlinux.org/title/Wayland#Electron
* https://coffeeorientedprogramming.wordpress.com/2016/10/06/make-applications-eclipse-use-x11-backend-on-wayland-fedora-25/

Run `protonmail-bridge`:

```
protonmail-bridge --software-renderer
```

This might help with other QT based applications as well.

* [software-renderer issue](https://github.com/ProtonMail/proton-bridge/issues/283)

App packed as snap: You could try --socket=<name> with, x11 wayland fallback-x11,
see [here](https://www.reddit.com/r/Fedora/comments/tpsret/how_can_i_force_flatpak_apps_to_run_on_wayland/).

Mozilla (firefox, thunderbird):

You should set `MOZ_ENABLE_WAYLAND=1`, see [details](https://gist.github.com/pojntfx/e1112126a80bae7106eeb62e1ea26557).

### Wayland Special Interest

* [wlroots](https://way-cooler.org/book/wlroots_introduction.html) wayland compositor library
* [smithay](https://github.com/Smithay/smithay) wayland compositor library in rust
* [strata](https://github.com/StrataWM/strata) wayland compositor in rust
* [winit](https://github.com/rust-windowing/winit) windows creation abstraction in rust
* [swaylock](https://github.com/swaywm/swaylock) screen locking utility for Wayland compositors
  + [swaylock-effects-improved](https://github.com/Xenfo/swaylock-effects-improved) more effects

## nvidia

* [nvidia offical driver from nvidia (including rpms)](https://www.nvidia.com/Download/index.aspx?lang=en-us)
* [cuda official driver from nvidia (including rpms)](https://developer.nvidia.com/cuda-downloads)
* [troubleshooting nvidia official drivers](https://negativo17.org/nvidia-driver/)

```bash
$ dkms status
Deprecated feature: REMAKE_INITRD
akvcam/1.2.2, 5.18.10-200.fc36.x86_64, x86_64: installedDeprecated feature: REMAKE_INITRD
Deprecated feature: REMAKE_INITRD

akvcam/1.2.2, 5.18.11-200.fc36.x86_64, x86_64: installedDeprecated feature: REMAKE_INITRD
Deprecated feature: REMAKE_INITRD

akvcam/1.2.2, 5.18.15-200.fc36.x86_64, x86_64: installedDeprecated feature: REMAKE_INITRD

nvidia/515.65.01, 5.18.10-200.fc36.x86_64, x86_64: installed
nvidia/515.65.01, 5.18.11-200.fc36.x86_64, x86_64: installed
nvidia/515.65.01, 5.18.15-200.fc36.x86_64, x86_64: installed
v4l2loopback_dc/0.0.1, 5.16.20-200.fc35.x86_64, x86_64: installed (WARNING! Missing some built modules!)
v4l2loopback_dc/0.0.1, 5.18.10-200.fc36.x86_64, x86_64: installed
v4l2loopback_dc/0.0.1, 5.18.11-200.fc36.x86_64, x86_64: installed
v4l2loopback_dc/0.0.1, 5.18.15-200.fc36.x86_64, x86_64: installed
```

### nvidia driver and cuda from developer nvidia

Also tested on f38 (f37) but does _not_ work with f39 (use akmod from rpmfusion instead).

https://forums.developer.nvidia.com/t/bug-report-on-nvidia-driver-515-65-01-for-fedora-36-kernel-5-18-19-rtx-2060-rev-1/227009/9


I need nvidia graphics driver and cuda support. Hence I did the following:

1. [Follow CUDA Toolkit 11.7 Update 1 Downloads | NVIDIA Developer 10](https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=Fedora&target_version=35&target_type=rpm_network)
   ```
   sudo dnf config-manager --add-repo https://developer.download.nvidia.com/compute/cuda/repos/fedora37/x86_64/cuda-fedora37.repo
   sudo dnf clean all
   sudo dnf -y module install nvidia-driver:latest-dkms
   # sometimes `modprobe` hangs here
   sudo dnf -y install cuda
   ```
   Use f37 repo. There is also a f36 repo that is known not to work.
2. Also ensure that `nvidia-driver:latest-dkms` has been installed
   ```
   sudo dnf install kmod-nvidia-latest-dkms
   ```
3. Ensure that nvidia modules are build or build them
   ```
   dkms status
   nvidia/515.65.01, 5.17.5-300.fc36.x86_64, x86_64: installed
   # build with
   # sudo dkms install nvidia/515.65.01 -k 5.17.5-300.fc36.x86_64
   ```
4. Ensure I’ve got something like this:
   ```
   cat /etc/modprobe.d/nouveau-blacklist.conf 
   blacklist nouveau
   options nouveau modeset=0
   ```
   Perhaps you want the same for i915.
5. Build right initramfs with
   ```
   sudo dracut -v -f --regenerate-all --omit-drivers="nouveau i915" --force-drivers="nvidia_drm nvidia_modeset nvidia_uvm nvidia"
   ```
6. Ensure that you habe kernel parameters including this:
   ```
   nouveau.modeset=0 rd.driver.blacklist=nouveau i915.modeset=0 nvidia-drm.modeset=1
   ```
7. If you changed kernel parameters (see below) update grub2 afterwards with:
   ```
   grub2-mkconfig -o "$(readlink -e /etc/grub2-efi.conf)"
   ```

My complete kernel parameters are:


```
ro resume=/dev/mapper/fedora-00 rd.lvm.lv=fedora/root rd.luks.uuid=luks-8cfdfb51-cdfa-401a-9815-d3be9a527942 rd.lvm.lv=fedo
ra/00 nouveau.modeset=0 rd.driver.blacklist=nouveau rhgb quiet i915.modeset=0 nvidia-drm.modeset=1
```

After reboot you could do a small check with:

```
$ nvidia-smi 
Sat Sep 24 08:44:32 2022       
+-----------------------------------------------------------------------------+
| NVIDIA-SMI 515.65.01    Driver Version: 515.65.01    CUDA Version: 11.7     |
|-------------------------------+----------------------+----------------------+
| GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
| Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
|                               |                      |               MIG M. |
|===============================+======================+======================|
|   0  NVIDIA GeForce ...  Off  | 00000000:01:00.0  On |                  N/A |
| 30%   33C    P8    14W / 160W |    874MiB /  6144MiB |      0%      Default |
|                               |                      |                  N/A |
+-------------------------------+----------------------+----------------------+
                                                                               
+-----------------------------------------------------------------------------+
| Processes:                                                                  |
|  GPU   GI   CI        PID   Type   Process name                  GPU Memory |
|        ID   ID                                                   Usage      |
|=============================================================================|
|    0   N/A  N/A     10827      G   /usr/bin/kwin_wayland             257MiB |
|    0   N/A  N/A     10876      G   /usr/bin/Xwayland                   2MiB |
|    0   N/A  N/A     10918      G   /usr/bin/plasmashell              199MiB |
|    0   N/A  N/A     11101      G   /usr/bin/nextcloud                 16MiB |
|    0   N/A  N/A     11339      G   ...akonadi_archivemail_agent        1MiB |
|    0   N/A  N/A     11347      G   .../akonadi_mailfilter_agent        1MiB |
|    0   N/A  N/A     11353      G   ...n/akonadi_sendlater_agent        1MiB |
|    0   N/A  N/A     11358      G   ...nadi_unifiedmailbox_agent        1MiB |
|    0   N/A  N/A     11916      G   /usr/bin/systemsettings            58MiB |
|    0   N/A  N/A     12190      G   /usr/lib64/firefox/firefox        326MiB |
+-----------------------------------------------------------------------------+
```

Setting kernel parameters in f36 is a bit tricky. If you are in trouble read the following:

* https://www.golinuxcloud.com/grubby-command-examples/ 23


#### Update

Currently the rpmfusion repos would like to upgrade the driver to version 515.76. This is not desired in my case as I need cuda. Hence I did the following:

1. I disabled `/etc/yum.repos.d/rpmfusion-nonfree-nvidia-driver.repo` with a `enabled=0` line
2. I masked packages with a `exclude=xorg-x11-drv-nvidia-kmodsrc akmod-nvidia` line in `/etc/yum.repos.d/rpmfusion-nonfree-updates.repo`.


### Problem: nvidia only works on old kernels

Find old (and other) kernels:

```bash
$ sudo dnf --showduplicates list kernel
Letzte Prüfung auf abgelaufene Metadaten: vor 0:00:51 am Mi 24 Aug 2022 19:45:58 CEST.
Installierte Pakete
kernel.x86_64                                       5.17.5-300.fc36                                                   @fedora
kernel.x86_64                                       5.18.10-200.fc36                                                  @updates
kernel.x86_64                                       5.18.18-200.fc36                                                  @updates
kernel.x86_64                                       5.18.18-250.vanilla.1.fc36                                        @kernel-vanilla-fedora
kernel.x86_64                                       5.19.2-325.vanilla.1.fc36                                         @kernel-vanilla-stable
Verfügbare Pakete
kernel.x86_64                                       5.17.5-300.fc36                                                   fedora
kernel.x86_64                                       5.18.18-200.fc36                                                  updates
```

Install specific kernel version:

```bash
sudo dnf install kernel-5.17.5-300.fc36.x86_64
sudo dnf install kernel-modules-5.17.5-300.fc36.x86_64
sudo dnf install kernel-modules-extra-5.17.5-300.fc36.x86_64
sudo dnf install kernel-devel-5.17.5-300.fc36.x86_64
```

Mark kernel for _not_ uninstalling:

```bash
sudo dnf mark install kernel-5.17.5-300.fc36.x86_64
sudo dnf mark install kernel-modules-5.17.5-300.fc36.x86_64
sudo dnf mark install kernel-modules-extra-5.17.5-300.fc36.x86_64
sudo dnf mark install kernel-devel-5.17.5-300.fc36.x86_64
```

Compile and install nvidia modules:

```bash
sudo dkms install nvidia/515.65.01 -k 5.17.5-300.fc36.x86_64
# check with
sudo dkms status
```

References:
* https://serverfault.com/questions/932351/how-to-keep-a-specific-version-of-an-old-kernel-while-still-allowing-updates
* https://unix.stackexchange.com/questions/266888/can-i-force-dnf-to-install-an-old-version-of-a-package
* https://bodhi.fedoraproject.org/updates/?packages=kernel
* installonly_limit: https://superuser.com/questions/1423559/how-can-i-change-the-number-of-kernels-retained-when-updating-in-fedora

### Problem: use new kernels

References:
* https://fedoraproject.org/wiki/Kernel_Vanilla_Repositories

## Konfiguration

- [Enabling hibernation](http://blog.ordinatechnic.com/blog/2015/06/08/enabling-hibernation-suspend-to-disk-in-fedora-22/)
- [Using the fastest mirror with dnf](http://www.theironsamurai.com/dnf-slow-on-fedora-add-fastestmirror-to-your-dnf-conf/)
- Things to do after installing Fedora:
  [1](http://www.tecmint.com/things-to-do-after-fedora-23-installation/),
  [2](http://www.binarytides.com/better-fedora-23/),
  [3](https://www.linux.com/learn/11-things-do-after-installing-fedora-22)

### User zum Admin machen (sudo Rechte)

- `usermod sampleusername -a -G wheel`

Referenz: [1](http://fedoraproject.org/wiki/Configuring_Sudo)

### SSH server aktivierten

1. `dnf install openssh-server`
2. `systemctl start sshd.service`
3. `systemctl enable sshd.service`
4. Evt. Firewall umkonfigurieren

Referenz:
[1](https://docs.fedoraproject.org/en-US/Fedora/18/html/System_Administrators_Guide/s2-ssh-configuration-sshd.html),
[2](http://www.techotopia.com/index.php/Configuring_Fedora_Linux_Remote_Access_using_SSH)

### LUKS Festplatten Vollverschlüsselung

Fedora lässt sich bequem bei der Installation so konfigurieren, dass alle Festplatten (Partitionen, Swap) mit LUKS
verschlüsselt sind. (Im Gegensatz dazu konnten bei Ubuntu lange nur die Home Verzeichnisse der einzelnen Nutzer
verschlüsselt werden. Das ist etwas anderes - und unter Fedora bei der Installation m.W. *nicht* möglich.)

#### Mehr Entschlüsselungspasswörter

LUKS erlaubt bis zu 8 Entschlüsselungspasswörter pro verschlüsselter Partition - folglich müssen sich *nicht* alle User
ein Festplattenpasswort teilen.

1. `cat /etc/crypttab` und dort die UUIDs der LUKS Partitionen entnehmen.
2. `blkid -U <uuid>` um die physikalische Partition herauszubekommen.
3. `cryptsetup isLuks -v /dev/<sda4>` um sicherzustellen, dass man eine LUKS Partition erwischt hat.
4. `cryptsetup luksAddKey /dev/<sda4>` um einen neuen Schlüssel hinzu zu fügen.

Referenz:
[1](https://unixfuntime.wordpress.com/2012/08/20/luks-passphrases-changing-adding-removing/)

#### Weitere Luks Commandos

Liste alle Luks Partitionen auf
[1](https://unix.stackexchange.com/questions/185390/list-open-dm-crypt-luks-volumes):

    $ sudo dmsetup ls  --target crypt
    luks-d06d9725-48db-4b3f-bc21-b7daa38a5264       (253, 3)
    luks-a9eba963-ff2e-499b-a298-0659c5e29359       (253, 0)

Überprüfe, ob Device Luks konfiguriert ist:

    $ sudo cryptsetup -v isLuks /dev/sda5
    Befehl erfolgreich.

Zeige Einstellungen eines Luks Device:

    $ sudo cryptsetup -v status luks-d06d9725-48db-4b3f-bc21-b7daa38a5264                                              
    /dev/mapper/luks-d06d9725-48db-4b3f-bc21-b7daa38a5264 is active and is in use.                                                               
      type:    LUKS1
      cipher:  aes-xts-plain64
      keysize: 512 bits
      device:  /dev/sdb4
      offset:  4096 sectors
      size:    1108606461 sectors
      mode:    read/write
    Befehl erfolgreich.

#### Nachträglich Luks Device einrichten

Anleitung: <https://wiki.ubuntuusers.de/LUKS/> **und** dann Device in
`/etc/crypttab` eintragen.

### LVM2 - der Linux Volume Manager

Einführung: <https://wiki.ubuntuusers.de/Logical_Volume_Manager/>

Logical Volume `ssdtmp` in der VG `vg_hdd` auf Festplatte
`luks-aa8fd8fc-ff77-4f86-9420-b8588c1eedce` erzeugen
[1](https://www.centos.org/docs/5/html/Cluster_Logical_Volume_Manager/LV_create.html):

    $ sudo lvcreate -L 30G -n ssdtmp vg_hdd /dev/mapper/luks-aa8fd8fc-ff77-4f86-9420-b8588c1eedce
      Logical volume "ssdtmp" created.

Herausfinden, auf welcher Festplatte sich ein Logical Volume befindet
[1](https://serverfault.com/questions/461385/how-to-find-the-physical-volumes-that-hold-a-logical-volume-in-lvm):

    $ sudo pvdisplay -m
    $ sudo lvs -o +devices

#### SSD Cache für HDDs/Festplatten mittels lvmcache

1. Zunächst das Luks Device einrichten (falls noch nicht geschehen). 2. Der Cache auf der SSD und die Partition auf der
   HDD müssen *in derselben **lvm volume** group sein*. Falls das jetzt nicht so ist, ist `vgmerge` hilfreich. (Online
   man page z.B.
   <https://linux.die.net/man/8/vgmerge>) 3. Die man page zu `lvmcache`
   enthält eine komplette Anleitung (Online z.B.
   <http://manpages.ubuntu.com/manpages/yakkety/man7/lvmcache.7.html>)

## SELinux

`sealert` standard fix:
```bash
# ausearch -c 'app' --raw | audit2allow -M my-app
# semodule -X 300 -i my-app.pp
```

remove a module:
```bash
semodule -X 300 -r my-app.pp
```

view content of a *.pp file:
```bash
sedismod mysql.pp
```

label a program as `bin_t` so that it ends up in the `unconfined_service_t`
```bash
sudo chcon --type=bin_t program
# gone after `restorecon`
```

Show label:
```bash
ls -Zl program
```

```bash
```

```bash
```

```bash
```

References:
* [view content of a *.pp file](https://serverfault.com/questions/321301/how-do-i-view-the-contents-of-a-selinux-policy-package)
* [temporary changes with chcon](https://access.redhat.com/documentation/de-de/red_hat_enterprise_linux/6/html/security-enhanced_linux/sect-security-enhanced_linux-working_with_selinux-selinux_contexts_labeling_files)
* [managing SELinux labels](https://wiki.gentoo.org/wiki/SELinux/Labels)
* [generate a policy (type) for binary path](https://unix.stackexchange.com/questions/309122/how-to-create-a-custom-selinux-label)
  `sepolgen /path/to/binary`

## SELinux documentation

* [TypeStatements](https://selinuxproject.org/page/TypeStatements)
* [how to compile a policy package](https://relativkreativ.at/articles/how-to-compile-a-selinux-policy-package)

### CIL language

* [ssh and openvpn within container](https://stackoverflow.com/questions/57186289/cannot-ssh-from-container-with-openvpn)

## SELinux und Firewall

Fedora ist von Hause aus besonders sicher. Im Desktopbetrieb heißt das erst einmal, dass die Einrichtung neuer Dienste
auf größere Schwierigkeiten treffen kann. Als Beispiel hier die *richtige*
Einrichtung von `xrdp`
([Quelle](https://gist.github.com/bcambl/ff17eae67863eda34c24)):

```bash
    #!/bin/bash
    #################################################
    # Setup Fedora 23 Gnome3 with xRDP via XFCE4
    #################################################
    
    # install the XFCE4 desktop
    sudo dnf groupinstall xfce-desktop
    
    # open standard RDP ports
    sudo firewall-cmd --add-port=3389/tcp
    sudo firewall-cmd --permanent --add-port=3389/tcp
    
    # install TigerVNC and xRDP
    sudo dnf install tigervnc tigervnc-server
    sudo dnf install xrdp
    
    # stop disabling SELinux
    sudo chcon --type=bin_t /usr/sbin/xrdp
    sudo chcon --type=bin_t /usr/sbin/xrdp-sesman
    
    # enable xRDP service
    sudo systemctl enable xrdp.service
    sudo systemctl enable xrdp-sesman
    
    # start xRDP service
    sudo systemctl start xrdp-sesman
    sudo systemctl start xrdp.service
    
    # set XFCE4 desktop for RDP connections
    sudo echo "startxfce4" > ~/.Xclients
    sudo chmod +x ~/.Xclients
    sudo systemctl restart xrdp.service
```
    
## grub2, grubby

```bash
# defaults are in /etc/default/grub
grubby --update-kernel=ALL
# UEFI systems
grub2-mkconfig -o "$(readlink -e /etc/grub2-efi.conf)"
```

Um einen Eintrag zu sehen:

```bash
grubby --info /boot/vmlinuz-5.18.19-200.fc36.x86_64 
index=0
kernel="/boot/vmlinuz-5.18.19-200.fc36.x86_64"
args="ro resume=/dev/mapper/fedora-00 rd.lvm.lv=fedora/root rd.luks.uuid=luks-8cfdfb51-cdfa-401a-9815-d3be9a527942 rd.lvm.lv=fedora/00 rhgb quiet rd.driver.blacklist=nvidia"
root="/dev/mapper/fedora-root"
initrd="/boot/initramfs-5.18.19-200.fc36.x86_64.img"
title="Fedora Linux (5.18.19-200.fc36.x86_64) 36 (Workstation Edition)"
id="7456cbe7c3e24fe1bb4decec38f2b885-5.18.19-200.fc36.x86_64"
```

Referenzen:
* https://docs.fedoraproject.org/en-US/fedora/latest/system-administrators-guide/kernel-module-driver-configuration/Working_with_the_GRUB_2_Boot_Loader/
* https://www.dedoimedo.com/computers/fedora-30-grub-persistent-changes.html
* https://unix.stackexchange.com/questions/152222/what-is-the-equivalent-of-update-grub-for-rhel-fedora-and-centos-systems
* https://docs.fedoraproject.org/en-US/fedora/latest/system-administrators-guide/kernel-module-driver-configuration/Working_with_the_GRUB_2_Boot_Loader/
* https://marius.bloggt-in-braunschweig.de/2019/09/22/grubby-wie-man-wieder-einen-default-kernel-setzen-kann/
* https://fedoraproject.org/wiki/GRUB_2

## initramfs

Alle initramfs neu erstellen (hier: ohne video driver):

```bash
dracut --omit-drivers "i915 video nouveau nvidia_drm nvidia_modeset nvidia" --regenerate-all --force
```

Referenzen:
* https://linuxconfig.org/how-to-build-an-initramfs-using-dracut-on-linux

### boot, startup, initramfs

* [crypt-ssh](https://github.com/dracut-crypt-ssh/dracut-crypt-ssh) remote unlocking of systems with full disk encryption via ssh
* [nbde](https://access.redhat.com/documentation/de-de/openshift_container_platform/4.9/html/security_and_compliance/network-bound-disk-encryption-nbde) network bound disk encryption
  + https://access.redhat.com/articles/6987053
  + [luks nbde](https://fedoramagazine.org/using-linux-system-roles-to-implement-clevis-and-tang-for-automated-luks-volume-unlocking/)
  + [stratis nbde](https://fedoramagazine.org/network-bound-disk-encryption-with-stratis/)

## Interessante zusätzliche Programme

- [Fedy Fedora Tweaker](http://folkswithhats.org/)
- [Yum Extender](https://fedorahosted.org/yumex/): Package Manager UI
- Stand von KDE Plasma auf Fedora:
  [1](https://community.kde.org/Plasma/Packages),
  [2](https://apps.fedoraproject.org/packages/plasma-workspace)
- [Fedora 39 + PCI passthrough](https://github.com/some-natalie/fedora-acs-override)

## Wichtige Komponenten

* [akmods](https://github.com/ublue-os/akmods) replacement for dkms (mit Übersicht über extra Kernel Module)
* https://rpmfusion.org/Packaging/KernelModules/Akmods
