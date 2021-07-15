# Linux Desktop Sharing

## X11

### flatpak

* https://github.com/flatpak/xdg-desktop-portal
  Use portal services from flatpak. This needed for desktop sharing working
  with flatpak.

## Wayland

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

