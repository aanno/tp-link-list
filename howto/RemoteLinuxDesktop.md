# Remote-Zugriff auf einen Linux-Desktop

# Übersicht

Ein Remote Linux Desktop *im WLAN* kann selbst eingeschworene Linux-Enthusiasten in den Wahnsinn treiben (im LAN ist
dagegen *X11 remote* eine gute Wahl). Während man (mit etwas Glück) die Remote Darstellung unter ***Windows*** (
mittels `xrdp` oder `x11vnc`) noch hin bekommt, muss man für die Remote Darstellung auf *Linux* einfach Glück haben: Die
Client-Implementierungen von RDP (`rdesktop` und `freerdp`)
sind voller Fehler und die VNC-Implementierungen fragmentiert und im Verwesungsprozess unterschiedlich weit
vorgeschritten.

Ich empfehle es bei Schwierigkeiten mit spice und/oder NX/nomaschine zur versuchen (s.u.)

## Gut zu wissen

- X11 ist ein sehr altes und komplexes Biest
    - Läuft meistens auf dedizierter Hardware: einer Graphikkarte
      (Ausnahmen: `Xvfb`, `Xvnc`)
    - Stellt als Anzeigeauflösungen nur Werte zu Verfügung, die auf der Hardware (Graphikkarte und Monitor) darstellbar
      sind. *Das ist selbst dann der Fall, wenn das Desktop nur remote angeboten wird.*
- Sowohl RDP als auch VNC unter Linux starten einen eigenen XServer, falls sie eine neue/weitere/andere Session
  ermöglichen.
- `Xrdp` ist eher ein Framework und unterstützt mehrere '*Sessions*'
  (sic). Konfiguriert wird das in `/etc/xrdp/xrdp.ini` (und
  `/etc/xrdp/sesman.ini`). Die beiden wichtigsten '*Sessions*' sind:
    - `Xvnc`: ein XServer, der auch VNC unterstützt. Das ist *legacy*, aber das einzige, was unter Fedora anstandslos
      funktioniert.
    - `xorgxrdp`: Plugins für den 'normalen' XServer `Xorg`, um RDP bereit zu stellen. Diese Lösung wird (noch)
      weiterentwickelt.
        - Unter Fedora muss man diese Lösung erst konfigurieren. (Und dann hoffen, dass sie funktioniert: bei mir (
          ThomasPasch)
          zuhause gehts, auf dem Firmen-PC gehts aber nicht\! K.A. warum) Link:
          <https://github.com/neutrinolabs/xrdp/wiki/Compiling-and-using-xorgxrdp>
        - Unter Ubuntu gibt es für HWE-Kernel (ab .2-Version einer LTS-Ausgabe installiert oder nachträglich manuell
          hinzugefügt) ein entsprechendes hwe-Paket von xorgxrdp
    - Übersicht 'Sessions':
      <https://github.com/neutrinolabs/xrdp/issues/1528>
    - Probleme:
        - <https://gdsotirov.blogspot.com/2020/01/using-xrdp-on-various-linuxes.html>
        - Eine lokale Session eines Nutzers kann vom Design her nicht remote übernommen werden, es kann höchstens für
          den Nutzer parallel eine *zweite* angelegt werden. Dabei muss sogar unter Ubuntu einer Zusammenlegung von
          Sessions entgegengewirkt werden, s.u. (XRDP)
            - für diese Einschränkung gibt es Workarounds:
                - Man startet zusätzlich einen VNC-Server, der die lokale Session anzeigen kann (z.B. x11vnc, krfb,
                  vino), konfiguriert diesen sowie eine zugehörige Verbindung unter xrdp.ini und wählt diese beim Login
                  im XRDP-Dropdown aus.
                - Man nutzt nur Remote-Sessions, auch lokal, indem man sich mit einem zweiten User per RDP mit der
                  Remote-Session des 1. Users verbindet (oder diese initiiert).
                - Man setzt zusätzlich einen SSH-Zugang ein und manipuliert den Zustand (killt Prozesse, startet VNC,
                  ...).
- Andere Lösungen, nämlich die, die 'nur' die aktuelle X11 Session remote bereitstellen, starten dagegen *keinen*
  eigenen XServer:
    - `x11vnc`: Legacy, funktioniert aber fast immer.
    - `x11spice`: Moderne Lösung, die (noch) weiterentwickelt wird.
- Moderne X11 Desktops (wie *KDE* oder *Gnome*) bieten graphische Effekte auf Grundlage von OpenGL an. Leider:
    - Steht OpenGL nur auf 'echten' Graphikkarten zur Verfügung.
    - Kann nur ein (1\!\!) XServer (pro Graphikkarte) OpenGL verwenden
    - Konsequenz: Falls auf '*remote*' `localhost` ein Desktopmanager
      (z.B. `sddm`) läuft, damit man sich lokal einloggen kann,
      ***kann man remote keine weitere KDE/Gnome Session auf der Graphikkarte anbieten***.
    - Das Problem betrifft nicht nur OpenGL, sondern (wahrscheinlich)
      auch andere *Accelerated X11* Technologien: DRM, DRI, ...\<br /\>Link:
      <https://wiki.gentoo.org/wiki/Xorg/Hardware_3D_acceleration_guide>
- Ausweichmöglichkeiten:
    - `Xvfb` (s.u.)
    - Benutzung eines Desktops, welches kein OpenGL benötigt: `xfce4`
      (sicher), `lxqt` (vielleicht)

### Tastaturlayout und -sprache

Viele der derzeitigen Remote Desktop Lösungen für Linux sind X11 basiert. Hier kommt es oft vor, dass das Tastaturlayout
für eine
*amerikanische Tastatur* eingestellt ist. Lösung: Das Kommando
`setxkbmap de`. Bei den meisten Desktop kann dieser Befehl direkt beim Start des Desktops ausgeführt werden.

## Ports

Folgende Portfreischaltungen werden in der Firewall benötigt:

- **3389** RDP
- 3350 xorgxrdp (nur '*remote*' localhost)
- 4000 NX/nomachine (Achtung: kein \<span class="WYSIWYG\_TT"\>ssh\</span\>-Tunnel möglich)
- 5900 Spice
- 590x (eigentlich 5900 + x, mit x: Displaynumber): VNC

In der Firewall von SiteOS ist *nur* Port **3389** offen, alles andere muss *ssh*-getunnelt werden.

# Obskure Alternativen

## ungetestet

- novnc: <https://novnc.com/info.html> VNC Client für den Browser
- x2go: <https://wiki.x2go.org/doku.php/doc:newtox2go> Fork der letzten Open Source NX/nomachine Version (3.x)
- Remote Wayland:
    - In Gnome: <https://wiki.gnome.org/Projects/Mutter/RemoteDesktop>
    - In Fedora:
      <https://fedoraproject.org/wiki/Changes/WaylandRemoteDesktop>
    - Eintrag bei Archlinux:
      <https://wiki.archlinux.org/index.php/Wayland>
    - wayVNC: <https://github.com/any1/wayvnc> und Sway:
      <https://swaywm.org/> und wlroots:
      <https://github.com/swaywm/wlroots/wiki/Projects-which-use-wlroots>
    - <https://jgrulich.cz/2019/08/01/tutorial-screen-sharing-and-remote-desktop-on-fedora-workstation-30/>

## nicht funktionstüchtig

- Xspice: Teil von
  <https://gitlab.freedesktop.org/xorg/driver/xf86-video-qxl>
  funktioniert nicht
  (<https://gitlab.freedesktop.org/xorg/driver/xf86-video-qxl/-/issues/8>)

# Server

## Remote Desktop (RDP)

### Remote Desktop *Server* (xrdp)

- Ubuntu/Kubuntu
    - Pakete `xrdp` und `xorgxrdp` (beim Einsatz von HWE-Stack Letzteres in der zugehörigen Variante -hwe) installieren
    - Möchte man sich **lokal** und **remote** **gleichzeitig**
      anmelden, da sonst eine zweite Verbindung hart blockiert werden würde, ist das Paket **`dbus-user-session`** zu
      entfernen und anschließend **`dbus-x11`** zu installieren
        - <https://github.com/neutrinolabs/xrdp/wiki/Debian-dbus-user-session-package>
        - Unter **`Ubuntu 20.04 mit Gnome`** gibt es aktuell einen Bug, der eine lokale Session nach einer
          Remote-Session verhindert:
          <https://github.com/neutrinolabs/xrdp/issues/1565>
    - Benutzer xrdp in die Gruppe **ssl-cert** aufnehmen: `sudo usermod -a -G ssl-cert xrdp`
    - evtl. Port 3389 in der Firewall freigeben, bei Nutzung von UFW die umfassendste Regel: `sudo ufw allow 3389/tcp`
    - Sicherheitseinstellungen sind zu prüfen, s.u.
    - ein bekanntes kleines Problem stellen 1-2 Dialoge dar, die nach Anmeldung verzögert Rechte für Farbgerät,
      Netzwerkeinstellungen oder APT-DB-Refresh haben möchten; diese können i.d.R. ignoriert/weggeklickt werden. Es gibt
      Anleitungen, wie man die Permissions setzen kann, damit diese Dialoge nicht mehr kommen, aber das muss noch
      evaluiert werden
- Fedora
    - Anleitung:
      [Fedora](https://gist.github.com/bcambl/ff17eae67863eda34c24)
      (für Xvnc)
    - Achtung: `xorgxrdp` muss extra konfiguriert werden\!
    - [kdeinit5 Problem auf Fedora
      ](https://lists.fedoraproject.org/archives/list/kde@lists.fedoraproject.org/thread/3M3KMFPV25BWNHBLBNO3DHHZLDFGAAHZ/)
        - Es gibt aber auch Leute, die das hinbekommen:
        - <https://www.hiroom2.com/2019/06/15/ubuntu-1904-xrdp-kde-en/>
        - <https://www.hiroom2.com/2018/05/18/fedora-28-xrdp-kde-en/>
    - Keine Probleme mit xfce: `dnf install @xfce-desktop`
- [So startet](http://bullcreekstudio.com/commentary/start-remote-xrdp-session-mate-debian-cuz-gnome-3-just-sucks/)
  man die verschiedenen Linux Desktops, wenn man ***mehrere*** hat und für RDP einen bestimmten auswählen möchte (
  Tipp: `~/.Xclients`
  anpassen)
    - Plasma von KDE: echo "startkde" \> \~/.Xclients; chmod a+x \~/.Xclients

Auf diese Sessions kann problemlos mit Boardmitteln von Windows aus zugegriffen werden.

#### Sicherheitseinstellungen

Defaultmäßig setzt XRDP auf die Aushandlung des Sicherheitslevels mit dem Client. Dies kann dann RDP- oder
TLS-Sicherheit bedeuten. RDP-Level soll jedoch für MitM-Attacken anfällig sein. Man kann daher die Aushandlung aussetzen
und fix TLS verlangen:  
**`/etc/xrdp/xrdp.ini`**:

- security\_layer=tls
- ssl\_protocols: die als unsicher geltenden Protokollversionen von TLS (1.0, 1.1) löschen

Defaultmäßig horcht XRDP auf dem Default-Port 3389 auf *allen*
Netzwerk-Interfaces. Je nach Einsatz des Rechners ist es empfehlenswert, dies nur auf das benötigte Netzwerk-Interface
zu beschränken, also i.d.R. die IP-Adresse, auf die man von einem Remote-Rechner heraus zugreift:  
**`/etc/xrdp/xrdp.ini`**:

- address=192.168.1.123 (Beispiel)
- den Port kann man ebenfalls auf einen eigenen setzen, sofern dies mit den Firewall-Einstellungen des eigenen Rechners
  und des Netzwerks zusammenspielt

Wenn so ein bestimmtes Netzwerk-Interface gebunden wurde, gibt es oft ein Problem beim Booten des XRDP-Dienstes, da
dieser zu früh gestartet wird. Abhilfe schafft dann ein systemd-Dropin:  
**`sudo servicectl edit xrdp.service`**  
\[Unit\]  
After=network-online.target

Bei der ersten Verbindung mit XRDP wird man nach Bestätigung des angezeigten Zertifikat-Fingerprints gefragt. Welcher
Fingerprint nun tatsächlich zum XRDP-Server gehört, erfährt man, indem man auf dem Server Folgendes ausführt:  
`openssl x509 -noout -fingerprint -sha1 -inform pem -in /etc/xrdp/cert.pem`

- dabei kann statt `sha1` auch z.B. `sha256` hergenommen werden, falls der RDP-Client **SHA256** als Fingerprint
  anzeigt (z.B. bei neueren Remmina-Versionen der Fall)

#### Weitere Anleitungen

- <https://askbot.fedoraproject.org/en/question/115753/how-to-configure-xrdp-on-fedora-27/>
- <https://forums.fedoraforum.org/showthread.php?315152-My-notes-on-setting-up-xdrp-on-Fedora-26&p=1792309>
- <https://github.com/neutrinolabs/xrdp/issues/847>
- <https://github.com/neutrinolabs/xrdp/issues/765>
- <https://www.techotopia.com/index.php/Remote_Access_to_the_Fedora_Linux_Desktop>

#### xrdp debuggen

- Wichtige Log Dateien:
    - `/var/log/xrdp.log` (Fedora, remote)
    - `/var/log/xrdp-sesman.log` (Fedora, remote)
    - `~/.xsession-errors` (Fedora, remote)
- Wichtige Konfigurationsdateien:
    - `/etc/xrdp/xrdp.ini` (Fedora, remote)
    - `/etc/xrdp/sesman.ini` (Fedora, remote)
- Dienst neue Starten:
    - `systemctl restart xrdp-sesman.service`
    - `systemctl restart xrdp.service`

## Spice

- [Grundlagen](http://www.heise.de/ix/artikel/Gewuerzmischung-1748671.html)
- [Homepage](http://www.spice-space.org/index.html)
- [More clients and server](http://www.spice-space.org/download.html)

### Spice Server on Linux

- XSpice: funktioniert nicht (Details unten)
- x11spice: Ja, das ist gut\!

##### XSpice auf Fedora (funktioniert nicht)

Theoretisch gut, funktioniert aber leider im praktischen Leben nicht\!

- Install `xorg-x11-server-Xspice` and `spice-server`
- Run \<br /\>\<span class="WYSIWYG\_TT"\>sudo Xspice --disable-ticketing --vdagent --xsession startkde :3\</span\>
- `Xspice --config /etc/X11/spiceqxl.xorg.conf --disable-ticketing --vdagent --xsession startxfce4 :4` \<br /\>oder \<br
  /\>\<span class="WYSIWYG\_TT"\>sudo Xspice --auto --disable-ticketing --vdagent --xsession startxfce4 :4\</span\> \<br
  /\>(Quelle:
  <https://fedoraproject.org/wiki/Features/Spice>) führt zu '\<span class="WYSIWYG\_TT"\>ValueError: argv first element
  cannot be empty\</span\>'
    - <https://bugzilla.redhat.com/show_bug.cgi?id=1819573>
    - <https://gitlab.freedesktop.org/xorg/driver/xf86-video-qxl/-/issues/8>

#### x11spice auf Fedora

Um diese (gute) Lösung nutzen zu können, muss man zunächst ein X11 Desktop auf dem remote Server starten\! (Ich (
ThomasPasch) benutze dafür xrdp (remote) und krdc (lokal).)

- x11spice: <https://gitlab.freedesktop.org/spice/x11spice>
- kompilieren:\<br /\>\<span class="WYSIWYG\_TT"\>git clone
  <git@gitlab.freedesktop.org>:spice/x11spice.git\</span\>\<br /\>\<span class="WYSIWYG\_TT"\>sudo dnf install
  spice-server-devel libxcb-devel xcb-util-devel xorg-x11-util-macros gtk3-devel xorg-x11-server-devel\</span\>\<br
  /\>\<span class="WYSIWYG\_TT"\>cd x11spice/\</span\>\<br /\>\<span class="WYSIWYG\_TT"\>./autogen.sh \</span\>\<br
  /\>\<span class="WYSIWYG\_TT"\>make \</span\>\<br /\>\<span class="WYSIWYG\_TT"\>sudo make install\</span\>
- Login auf *remote* Server mittels `ssh` (fürs tunneln)\<br /\>\<span class="WYSIWYG\_TT"\>ssh -X -L5900:192.168.1.131:
  5900
  <tpasch@192.168.1.131>\</span\>
- Start `x11spice` auf *remote* Server (über X11 Desktop (\!\!), siehe oben)\<br /\>\<span class="WYSIWYG\_TT"\>x11spice
  --generate-password --allow-control\</span\>
- Bei Starten zeigt `x11spice` das (lokal) benötigte Passwort an.
- Auf dem lokalen Rechner\<br /\>\<span class="WYSIWYG\_TT"\>remote-viewer -z 100 spice://localhost:5900\</span\>

Dies ist zur Zeit meine (ThomasPasch) bevorzugte Lösung. Sie ist aber recht komplex.

##### Benutzung von Xvrb

- `export DISPLAY="`:99"
- Remote neuen XServer und Desktop starten:\<br /\>\<span class="WYSIWYG\_TT"\>xinit /usr/bin/startxfce4 --
  /usr/bin/Xvfb $DISPLAY -screen 0 1600x1200x24\</span\>
- Remote `x11spice` starten:\<br /\>\<span class="WYSIWYG\_TT"\>x11spice --generate-password --allow-control --display
  $DISPLAY\<br /\>\</span\>
- Die Auflösung des Remote Desktop liegt jetzt endgültig fest und kann nicht verändert werden. (Dies ist anders als bei
  Lösungen, bei den der XServer auf eine Graphikkarte läuft.)
- Zur Frage Xvrb und *Accelerated X11*:
  <https://stackoverflow.com/questions/6281998/can-i-run-glu-opengl-on-a-headless-server>

##### Benutzung Clipboard

Um Clipboard Unterstützung zwischen *lokal* und *remote* zu erhalten, ist es nötig, `vdagent` zu verwenden. Das bedeutet
zusätzliche Handarbeit. Bitte vorher sicherstellen, dass DISPLAY richtig gesetzt ist
(s.o.).

- (einmalig) `/etc/xdg/x11spice/x11spice.conf` anlegen (siehe Anhang). Die wichtigsten Einträge sind:\<br /\>\<span
  class="WYSIWYG\_TT"\>virtio-path=/tmp/xspice-virtio\</span\>\<br /\>\<span class="WYSIWYG\_TT"
  \>uinput-path=/tmp/xspice-uinput\</span\>
- `spice-vdagentd -d -f -x -X -S /tmp/vdagent -s /tmp/xspice-virtio -u /tmp/xspice-uinput`
- `spice-vdagent -o 1 -d -x -S /tmp/vdagent -s /tmp/xspice-virtio`

Eigentlich sollte diese zusätzliche Arbeit automatisiert werden können:

- `spice-vdagentd` kann mittels *systemd* gestartet werden:
  `/lib/systemd/system/spice-vdagentd.service` (Fedora)
- `spice-vdagent` sollte von Desktops, die *Xdg autostart*
  unterstützen, automatisch gestartet werden:
  `/etc/xdg/autostart/spice-vdagent.desktop` (Fedora) \<br /\>(Funktioniert wahrscheinlich nur unter Gnome??)

Links:

- <https://gitlab.freedesktop.org/spice/x11spice/-/issues/1>
- <https://linux-blog.anracom.com/tag/spice-vdagent/>

## VNC

### x11vnc

Der Vorteil dieser Lösung ist, dass man die bereits remote geöffnete Session überträgt (mit anderen Worten: den '
aktuellen' Remote Desktop)
und *nicht* eine neue Session startet. Ich (tp) halte das deswegen für die Lösung, die die wenigsten Problem macht\!

Beispiel-Skript:

```bash
    #!/bin/bash -x
    # x11vnc -v -6 -reopen -loop -forever -tightfilexfer -ultrafilexfer -avahi -vncconnect -allow 192.168.1. -usepw -find -findauth -xvnc -ncache
    
    killall -9 x11vnc 
    rm ~/x11vnc.log
    x11vnc -rfbauth ~/.vnc/passwd -ncache 10 -usepw -forever -avahi -find -xvnc -allow 192.168.1. -tightfilexfer -ultrafilexfer -xinerama -xwarppointer -clip xinerama0 -ssl -bg -o ~/x11vnc.log
```

Nicht jeder VNC Client funktioniert zusammen mit `x11vnc`\! Mit
[TigerVNC](http://tigervnc.org/) habe ich (tp) auch unter Windows gute Erfahrungen gemacht. Besonders gut ist, dass es
einfach möglich ist, eine verschlüsselte Session im Vollbildmodus zu übertragen.

x11vnc kann auch als Systemdienst gestartet werden, hierdurch ist ein Login ohne vorherige Anmeldung am Host möglich.

Anleitung für Kubuntu:

Eine Datei `x11vnc.service` unter `/etc/systemd/system` anlegen

``` 
[Unit]
Description=x11vnc-Server

[Service]
ExecStart=/bin/bash -c "/usr/bin/x11vnc -auth /var/run/sddm/* -display :0 -forever -loop -noxdamage -passwdfile /etc/x11vnc.pass -rfbport 5900 -shared -localhost -ncache -ncache_cr"

[Install]
WantedBy=multi-user.target      
```

Die Ausführung mit `/bin/bash -c` und der Teil "\<span\>-auth /var/run/sddm/\*\</span\>" ist nötig da unter `sddm` keine
einheitliche xauthorities Datei existiert.

Diese wird von `sddm` jedesmal neu erzeugt. Daher kann kein kompletter Pfad angegeben werden.

Nach dem Anlegen der Datei kann der Service mittels muss dieser noch mit

`$ sudo systemctl enable x11vnc.service`

angemeldet werden.

Nach einem Neustart wird der Service dann automatisch noch vor dem Login gestartet.

## NX/nomaschine

- Die freie Version <https://www.nomachine.com/de/everybody> benötigt Port 4000 und lässt sich nicht ssh-tunneln
  (<https://www.nomachine.com/AR10K00728>)
- Port 4000 darf also von der Firewall nicht blockiert werden. Sollte das nicht möglich oder ssh verpflichtend sein,
  dann braucht es eine kommerzielle/lizenzpflichte Version.
- Paket *auf Server und Client* herunterladen:
  <https://www.nomachine.com/download/>
- Paket installieren
- Es sollte ein Hintergrundprozess-Icon zu sehen sein, mit der sich NX/nomaschine steuern lässt. Die Steuerung und
  Funktionsweise erinnert an Teamviewer.

# Clients

## Windows

Zugriff mit Boardmitteln (aka Remotedesktopverbindung). Töne und Dateiübertragung führen zum Verbindungsabbruch. Es muss
24bit Farbtiefe eingestellt werden, damit es funktioniert.

## Linux

### RDP

Nachdem ich jahrelang `krdc/rdesktop` benutzt habe, bin ich
(ThomasPasch) jetzt (3/2020) `remmina/xfreerdp` ausprobiert, da meine Lösung nicht mehr gepflegt wird (
siehe <https://www.rdesktop.org/>). Leider ist das ***kein*** Erfolg\!

Vorteile `remmina/freerdp`:

- *Skalierender* Modus (*sehr* praktisch für 4k Desktops)
- 'Pre-Builds' für diverse Linux Systeme:
  <https://github.com/FreeRDP/FreeRDP/wiki/PreBuilds>

Nachteile `remmina/freerdp` beim skalierenden Modus:

- **Java Swing Applicationen bleiben *graue Rechtecke*.** Das betrifft auch Idea. \_\_BUMMER\!\!\_\_

### Spice Client

- Install virt-viewer (geht auch unter Windows)
- Run remote-viewer spice://localhost:5900

### NX/nomaschine Client

Die Installation von NX/nomaschine ist immer ein Komplettpaket, d.h. es wird *nicht* zwischen Client und Server
unterschieden.

## Neue Tendenzen

* [spice-clients](https://linux-blog.anracom.com/tag/spice-clients/)
* [x2go](https://wiki.x2go.org/doku.php/doc:newtox2go)
* https://shebangthedolphins.net/gnulinux_vnc_remotedesktop.html

### Container images with remote graphic

* [xfce on spice](https://github.com/danger89/xfcevdi_spice) obsolete
* [lxde on spice](https://github.com/gauthierc/DockerSpiceLxde)
* [Xfce on spice](https://github.com/gauthierc/DockerSpiceXfce4)
* [Xorg on spice/html5](https://github.com/muayyad-alsadi/containerized-xorg-spice)
* [lxde on VNC](https://github.com/fcwu/docker-ubuntu-vnc-desktop)
* [xfce on x2go](https://github.com/danger89/xfcevdi)

#### Articles on 'remote' containers

* https://www.digitalocean.com/community/tutorials/how-to-remotely-access-gui-applications-using-docker-and-caddy-on-debian-9
  building a container image with supervisord, caddy, openbox, VNC
* [web browsers in docker - for testing](https://dbushell.com/2021/03/01/docker-xfce-vnc-remote-desktop-browser-testing/)

### Wayland remote

An example to run `kcalc` over `waypipe`:
```bash
waypipe ssh example.local env QT_QPA_PLATFORM=wayland-egl QT_QPA_PLATFORMTHEME=KDE dbus-launch kcalc
```

* [gnome mutter remote desktop](https://wiki.gnome.org/Projects/Mutter/RemoteDesktop)
* [KDE Krfb](https://userbase.kde.org/Krfb)
* [waypipe - network transparency with wayland](https://gitlab.freedesktop.org/mstoeckl/waypipe/) 
  + https://mstoeckl.com/notes/gsoc/blog.html
* [remote wayland on fedora-30](https://jgrulich.cz/2019/08/01/tutorial-screen-sharing-and-remote-desktop-on-fedora-workstation-30/)
* [screen sharing on wayland](https://jgrulich.cz/2018/07/04/how-to-enable-and-use-screen-sharing-on-wayland/)

#### uinput, wayland

Control keyboard and mouse events on wayland

* [ydotool](https://github.com/ReimuNotMoe/ydotool)
  + [implications of change permissions on uinput](https://discussion.fedoraproject.org/t/implications-of-change-permissions-on-uinput/128865)
* [uinput](https://www.kernel.org/doc/html/v4.12/input/uinput.html)

#### References

* https://wiki.archlinux.org/title/wayland
