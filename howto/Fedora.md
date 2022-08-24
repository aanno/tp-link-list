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

## Zusätzliche Repositories

- [Copr Personal Repositories](http://copr.fedorainfracloud.org/)

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

## Wayland

- [Known issues](https://fedoraproject.org/wiki/How_to_debug_Wayland_problems#known_issues)
- [Wayland for KDE](https://community.kde.org/KWin/Wayland)
- [modesetting on nvidia](https://negativo17.org/wayland-modesetting-on-nvidia/)

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
``

Mark kernel for _not_ uninstalling:

```bash
sudo dnf mark install kernel-5.17.5-300.fc36.x86_64
sudo dnf mark install kernel-modules-5.17.5-300.fc36.x86_64
sudo dnf mark install kernel-modules-extra-5.17.5-300.fc36.x86_64
sudo dnf mark install kernel-devel-5.17.5-300.fc36.x86_64
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

## SELinux und Firewall

Fedora ist von Hause aus besonders sicher. Im Desktopbetrieb heißt das erst einmal, dass die Einrichtung neuer Dienste
auf größere Schwierigkeiten treffen kann. Als Beispiel hier die *richtige*
Einrichtung von `xrdp`
([Quelle](https://gist.github.com/bcambl/ff17eae67863eda34c24)):

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

## Interessante zusätzliche Programme

- [Fedy Fedora Tweaker](http://folkswithhats.org/)
- [Yum Extender](https://fedorahosted.org/yumex/): Package Manager UI
- Stand von KDE Plasma auf Fedora:
  [1](https://community.kde.org/Plasma/Packages),
  [2](https://apps.fedoraproject.org/packages/plasma-workspace)
