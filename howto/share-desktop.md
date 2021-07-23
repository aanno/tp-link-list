# Linux Desktop Sharing

## Commercial

* https://www.teamviewer.com
* https://parsec.app/

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

#### remote wayland software

* [krfb](https://userbase.kde.org/Krfb) is the remote wayland solution from KDE, see https://www.reddit.com/r/kde/comments/n1qxb9/remote_desktop_with_plasma_wayland_pipewire_and/
* in gnome there is a 'sharing' section in the gnome settings, also see
  https://wiki.gnome.org/Projects/Mutter/RemoteDesktop
* [wayvnc](https://github.com/any1/wayvnc)
* [waypipe](https://gitlab.freedesktop.org/mstoeckl/waypipe/)
  + https://mstoeckl.com/notes/gsoc/blog.html

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

