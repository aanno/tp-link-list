# oo7 tutorial for fedora 45

## CLI

As user:

oo7-cli list

## daemon

The daemon is for dbus. Hence the first thing is to see wheather another dbus secret service is running:

systemctl --user status dbus-<tab>
dbus-:1.2-org.freedesktop.secrets@0.service           dbus-org.bluez.obex.service
dbus-:1.2-org.gnome.seahorse.Application@0.service    dbus-org.freedesktop.impl.portal.desktop.oo7.service
dbus-:1.2-org.kde.kwalletd6@0.service                 dbus-org.freedesktop.import1.service
dbus-:1.54-org.a11y.atspi.Registry@0.service          dbus-org.freedesktop.machine1.service
dbus-broker.service                                   dbus-org.freedesktop.portable1.service
dbus-daemon.service                                   dbus-org.freedesktop.secrets.service

systemctl --user status dbus-:1.2-org.freedesktop.secrets@0.service   
● dbus-:1.2-org.freedesktop.secrets@0.service
     Loaded: loaded (/run/user/1000/systemd/transient/dbus-:1.2-org.freedesktop.secrets@0.service; transient)
  Transient: yes
    Drop-In: /usr/lib/systemd/user/dbus-.service.d
             └─00-uresourced.conf
             /usr/lib/systemd/user/service.d
             └─10-timeout-abort.conf
     Active: active (running) since Mon 2026-10-19 16:43:10 CEST; 58min ago
 Invocation: 83aaa1c4e18d4247b02cebd83ed7882f
   Main PID: 7275 (gnome-keyring-d)
      Tasks: 4 (limit: 38001)
     Memory: 1.2M (peak: 2.4M)
        CPU: 11ms
     CGroup: /user.slice/user-1000.slice/user@1000.service/app.slice/dbus-:1.2-org.freedesktop.secrets@0.service
             └─7275 /usr/bin/gnome-keyring-daemon --start --foreground --components=secrets

In this case, gnome-keyring-damon is running. 

rpm -qf /usr/bin/gnome-keyring-daemon
gnome-keyring-51.1-1.fc45.x86_64

And it is part of the package `gnome-keyring`. Easiest thing to do is to remove the package:

dnf remove gnome-keyring
Paket                                       Architektur     Version                                     Paketquelle                Größe
Wird entfernt:
 gnome-keyring                              x86_64          0:51.1-1.fc45                               fedora                   3.5 MiB
Abhängige Pakete werden entfernt:
 gnome-keyring-pam                          x86_64          0:51.1-1.fc45                               fedora                  31.4 KiB

Transaktionszusammenfassung:
 Zu entfernen:           2 Pakete

As root:

setcap cap_ipc_lock=+ep /usr/libexec/oo7-daemon

As user service:

systemctl --user reset-failed oo7-daemon.service 

As user:

# ???
/usr/libexec/oo7-daemon --login --replace -v

Debug (as user):

journalctl -b -u oo7-daemon --user

### systemd user unit

For adding `--verbose` to user service start:

systemctl --user edit oo7-daemon.service

## (flatpak) portal

As user service:

systemctl --user start oo7-portal.service
systemctl --user status oo7-portal.service

Known problems:

* There is now way to enable this (The unit files have no installation config (WantedBy=, RequiredBy=, UpheldBy=,
Also=, or Alias= settings in the [Install] section)
* oo7 includes an XDG Desktop Portal backend (oo7-portal) for sandboxed applications (e.g. Flatpak) to access secrets. However, the shipped portal file declares UseIn=gnome only, so it must be configured for other desktop environments.

As user:

/usr/libexec/oo7-portal --replace --verbose

### XDG Desktop Portal

HACK: 
* Edit `/usr/share/xdg-desktop-portal/portals/oo7-portal.portal`
  Line: UseIn=gnome,KDE
* Unknown: Disable that in normal KDE settings? (/usr/share/xdg-desktop-portal/portals/ files kde.portal and kwallet.portal)

## Files

Package:

rpm -ql oo7-portal
/usr/lib/.build-id
/usr/lib/.build-id/98
/usr/lib/.build-id/98/2a7a4c6944fee6a1f72e2a2121f75e951c7a0c
/usr/lib/systemd/user/dbus-org.freedesktop.impl.portal.desktop.oo7.service
/usr/lib/systemd/user/oo7-portal.service
/usr/libexec/oo7-portal
/usr/share/applications/oo7-portal.desktop
/usr/share/dbus-1/services/org.freedesktop.impl.portal.desktop.oo7.service
/usr/share/doc/oo7-portal
/usr/share/doc/oo7-portal/README.md
/usr/share/licenses/oo7-portal
/usr/share/licenses/oo7-portal/LICENSE
/usr/share/licenses/oo7-portal/LICENSE.dependencies
/usr/share/xdg-desktop-portal/portals/oo7-portal.portal

rpm -ql oo7-daemon
/usr/lib/systemd/user/dbus-org.freedesktop.secrets.service
/usr/lib/systemd/user/oo7-daemon.service
/usr/libexec/oo7-daemon
/usr/libexec/oo7-daemon-login
/usr/share/doc/oo7-daemon
/usr/share/doc/oo7-daemon/README.md
/usr/share/licenses/oo7-daemon
/usr/share/licenses/oo7-daemon/LICENSE
/usr/share/licenses/oo7-daemon/LICENSE.dependencies
/usr/share/locale/bg/LC_MESSAGES/oo7-daemon.mo
<and other>

As user:

 find .local -iname '*.keyring'
.local/share/keyrings/login.keyring

## Reference

* https://wiki.archlinux.org/title/Oo7
  + see here for integration with: PAM, systemd-creds, XDG Desktop Portal, git, cargo, gnupg
* https://github.com/linux-credentials/oo7
  + see here for integration with: systemd-sysext, XDG Desktop Portal
  + https://github.com/linux-credentials/oo7/tree/main/server
* https://linux-credentials.github.io/oo7/oo7/

