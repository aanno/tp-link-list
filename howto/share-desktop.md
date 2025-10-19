# Linux Desktop Sharing

## Commercial

* https://www.teamviewer.com
* https://parsec.app/

## Open Source

Guacamole provides remote desktop in browser. However, the software does _not_
provide the 'graphic' server - you have to use a VNC or RDP solution for
that. Hence, it does _not_ solve the complete problem.

Kasm is an VNC backed desktop in browser. Partly commercial. Currently, 
no wayland support. Kasm VNC is a VNC server (and tools). Kasm Workspaces
are docker images with Kasm support.

Rustdesk is a remote desktop solution in the lines of TeamViewer - but open
source. Beta wayland support. Includes an open source (gateway) server. 
Setup on Fedora is not easy because of selinux (but a solvable problem).

Remotely is a cross platform remote desktop in browser. It needs a (specific)
remotely sharing server on the remote machine. I tried in 01/2024 but did not get 
the remotely sharing server to work on fedora.

* [Drei Open-Source-Fernwartungsprogramme zum selbst Hosten](https://www.heise.de/select/ct/vorschau/2309313183203928794)

* [guacamole](https://guacamole.apache.org/) remote desktop in browser
  + https://guacamole.apache.org/doc/gug/
  + https://de.wikipedia.org/wiki/Apache_Guacamole
  + [guacamole on podman I](https://gist.github.com/dmi3mis/1e7dc9c5d423ab588d555f0a2c399f26)
  + [guacamole on podman II](https://linuxhistory.com/2021/01/16/apache-guacamole-on-podman/)
  + [guacamole on docker](https://guacamole.apache.org/doc/gug/guacamole-docker.html)
* [kasmVNC - in browser VNC solution]https://github.com/kasmtech/KasmVNC partly commercial
  + https://www.kasmweb.com/kasmvnc.html
  + https://www.kasmweb.com/workspace_images.html
* [kasmweb workspaces](https://kasmweb.com/workspaces) commercial (freemium)
  + https://github.com/kasmtech/workspaces-core-images
  + https://kasmweb.com/images docker images with kasm
  + https://kasmweb.com/docs/latest/guide/custom_images.html
  + https://kasmweb.com/docs/latest/how_to/building_images.html
  + https://hub.docker.com/r/kasmweb/core-fedora-37
  + https://hub.docker.com/r/kasmweb/core-cuda-bionic
* [kasmVNC](https://www.kasmweb.com/kasmvnc/docs/latest/serverside.html)
  + [kasm's Xvnc](https://www.kasmweb.com/kasmvnc/docs/latest/man/Xvnc.html)
* https://github.com/DeshmukhPooja/webrtc-remote-desktop
* https://github.com/screego/server (only screen sharing)
* [rustdesk](https://rustdesk.com/)
  + https://github.com/rustdesk/rustdesk/wiki/Ideas
  + https://github.com/rustdesk/rustdesk/discussions/6302
* [remotely](https://github.com/immense/Remotely)
* [deskreen](https://deskreen.com/lang-de#features)
  second screen over wifi - not remote desktop
  + [echoscreen](https://github.com/rozsazoltan/echoscreen)
    deskreen fork
    

## Spice

Spice is designed to be an VNC and RDP competitor. However, only VMs (kvirt, qemu) 
is _really_ supported. Remote SPICE has been always a HACK, see
`howto/RemoteLinuxDesktop.md` for details.

* https://www.spice-space.org/download.html
* https://gitlab.freedesktop.org/spice/linux/vd_agent
* https://askubuntu.com/questions/1211251/can-i-use-spice-as-a-vnc-replacement-for-fast-local-5ghz-remote-desktop
* https://www.server-world.info/en/note?os=Ubuntu_23.04&p=kvm&f=7

## VNC, RDP and X11

Linux VNC solutions are mainly X11 based. That also means that need scripts/setups to
run/start your desktop. Within each VNC solution `Xvnc` is new/separate X11 with VNC
as output. `x11vnc` however, is a app which makes the _current_ desktop available with VNC.

* [Desktop without login manager](https://wiki.archlinux.de/title/Desktop_starten_ohne_Loginmanager)
* [configure xrdp on fedora](https://www.linuxquestions.org/questions/fedora-35/help-with-configuring-xrdp-to-use-kde-instead-of-gnome-for-desktop-fedora-37-wayland-4175720229/)


## Tools

* [mRemoteNG](https://mremoteng.org/) connection manager for RDP, VNC, SSH, ...

## Docker Images

* [docker guacamole](https://github.com/kenryuS/docker-guacamole-re)
* [docker remote desktop](https://github.com/Lanjelin/docker-remote-desktop) Remmina NoMachine Parsec
* [docker nomachine](https://github.com/Lanjelin/nomachine-docker)
* [docker winvnc](https://github.com/eminmuhammadi/winvnc)
* [docker/podman desktainer rootless](https://github.com/dmotte/desktainer-rootless)

## X11

### flatpak

* https://github.com/flatpak/xdg-desktop-portal
  Use portal services from flatpak. This needed for desktop sharing working
  with flatpak.

## Wayland

* https://wayland.freedesktop.org/faq.html
* https://community.kde.org/Plasma/Wayland_Showstoppers
* https://wiki.archlinux.org/title/wayland

### remote wayland

* https://jgrulich.cz/2019/08/01/tutorial-screen-sharing-and-remote-desktop-on-fedora-workstation-30/
* https://www.linux-community.de/ausgaben/linuxuser/2019/03/draufgeschaut/
* [waypipe](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/9/html/getting_started_with_the_gnome_desktop_environment/remotely-accessing-an-individual-application-wayland_getting-started-with-the-gnome-desktop-environment)
* [KDE uses RDP](https://planet.kde.org/arjen-hiemstra-2023-08-08-remote-desktop-using-the-rdp-protocol-for-plasma-wayland/)

#### remote wayland software

* [krfb](https://userbase.kde.org/Krfb) is the remote wayland solution from KDE, see https://www.reddit.com/r/kde/comments/n1qxb9/remote_desktop_with_plasma_wayland_pipewire_and/
* in gnome there is a 'sharing' section in the gnome settings, also see
  https://wiki.gnome.org/Projects/Mutter/RemoteDesktop
* [wayvnc](https://github.com/any1/wayvnc)
* [waypipe](https://gitlab.freedesktop.org/mstoeckl/waypipe/)
  + https://mstoeckl.com/notes/gsoc/blog.html

##### TurboVNC and VirtualGL

open source software providing remote accelerated VNC _even with wayland_

* [How to setup VirtualGL and TurboVNC on Ubuntu](https://gist.github.com/cyberang3l/422a77a47bdc15a0824d5cca47e64ba2)
* [Using VirtualGL with TurboVNC](https://www.virtualgl.org/vgldoc/2_1_1/#hd009004)
* [TurboVNC](https://www.turbovnc.org/)
  + https://github.com/TurboVNC/turbovnc
  + [User’s Guide for VirtualGL 2.1.1 and TurboVNC 0.5](https://www.virtualgl.org/vgldoc/2_1_1/)
  + [cheatsheet for TurboVNC](https://docs.oracle.com/cd/E19279-01/820-3257-12/turbovnc.html)
  + [comparator with kasm](https://github.com/kasmtech/KasmVNC/issues/193)
* [VirtualGL](https://virtualgl.org/)
  + https://github.com/VirtualGL/virtualgl
  + [User’s Guide for VirtualGL 3.1](https://rawcdn.githack.com/VirtualGL/virtualgl/3.1/doc/index.html)

Alternatives to VirtualGL:
* [mesa VirGL](https://docs.mesa3d.org/drivers/virgl.html)

### Hacks

* https://superuser.com/questions/411897/using-desktop-as-fake-webcam-on-linux (featured!)
* https://soyuka.me/make-screen-sharing-wayland-sway-work/

### flatpak

* https://github.com/emersion/xdg-desktop-portal-wlr
  Port of https://github.com/flatpak/xdg-desktop-portal to wayland.
  Use portal services from flatpak. This needed for desktop sharing working
  with flatpak.

### Window Manager

* https://github.com/swaywm/sway/wiki
  + https://github.com/swaywm/sway
  Tiling windows manager for wayland; i3 for wayland. 
  Perhaps needed by zoom for wayland desktop sharing?!? 
  _No NVidia support_.

## Zoom Desktop Sharing

Zoom does support wayland desktop sharing on GNOME only. (But as NVidia 
wayland gnome support does not work, that does not help much.)

### Zoom Bug Reports

* https://github.com/flathub/us.zoom.Zoom/issues/22
  desktop sharing does not work with flatpak (on fedora)
* https://www.tenforums.com/network-sharing/172350-zoom-screen-sharing-remote-user-who-linux.html
  Someone who states that you need freerdp, krdc and krfb for it to work (I doubt of this!).
* https://github.com/swaywm/sway/issues/1612
  No zoom desktop sharing with sway.
  

### Outwit GNOME wayland check

* https://www.reddit.com/r/kde/comments/h07hju/zoom_screen_sharing_on_kde_wayland/

```bash
export XDG_SESSION_DESKTOP=gnome-wayland
export GDMSESSION=gnome-wayland
export XDG_CURRENT_DESKTOP=GNOME zoom
```

This enables zoom desktop sharing, BUT there is nothing to share because
on KDE there is still all the things missing that would allow it...

Also see:
* https://pop-planet.info/forums/threads/fixing-zoom-screen-sharing-under-wayland.964/

## Screen capture

* https://wiki.archlinux.org/title/Screen_capture featured!
