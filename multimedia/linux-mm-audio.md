# Linux Multimedia and Audio

## Realtime Audio on Linux

* [Fedora Pipewire Low Latency Audio Configuration Reference Guide](https://linuxmusicians.com/viewtopic.php?t=27121)
* [A Guide to switching to Linux as your music production OS](https://www.kvraudio.com/forum/viewtopic.php?t=555691)

## Pipewire and Wireplumber

### Mixer and Combine

* [Pipewire overview](https://wiki.archlinux.org/title/PipeWire) dmix, jack, airplay
  + [Pipewire docs](https://docs.pipewire.org/page_overview.html)
* [Wireplumber overview](https://wiki.archlinux.org/title/WirePlumber) mm session manager (for use with Pipewire)
  + [Wireplumber session management docs](https://pipewire.pages.freedesktop.org/wireplumber/design/understanding_session_management.html)
* [Pipewire and Wireplumber](https://www.freedesktop.org/wiki/Software/PipeWire/) Pipewire is a multimedia server and Wireplumber is a session manager for Pipewire
* [Pipewire Guide](https://github.com/mikeroyal/PipeWire-Guide#pipewire-tools) featured!
* [Pipewire Combine Streams](https://docs.pipewire.org/page_module_combine_stream.html)
  virtual sink that forwards audio to other sinks or new virtual source that combines audio from other source

## Pulseaudio (API)

* [pulse](https://github.com/jfreymuth/pulse)
  PulseAudio client implementation in pure Go


## ffmpeg, mpv, vlc, and the like

* [avpipe](https://github.com/eluv-io/avpipe)
  C/Go library on top of FFmpeg with very simple transcoding APIs

### Remove Pipewire sound

* [How to stream audio through pipewire from one Linux system to another?](https://superuser.com/questions/1713253/how-to-stream-audio-through-pipewire-from-one-linux-system-to-another)

### UIs

* [pwvucontrol](https://github.com/saivert/pwvucontrol)
  pavucontrol for PipeWire
* [Helvum](https://flathub.org/apps/org.pipewire.Helvum)
  Gnome graphical patchbay for PipeWire
  + https://gitlab.freedesktop.org/pipewire/helvum
* [sonusmix](https://codeberg.org/sonusmix/sonusmix)
  Next-gen Pipewire audio routing tool.
* [qpwgraph](https://gitlab.freedesktop.org/rncbc/qpwgraph)
  graph manager dedicated to PipeWire


## Multimedia on Linux Desktop

### MPRIS

* [MPRIS spec](https://specifications.freedesktop.org/mpris-spec/latest/) currently 2.2
* [MPRIS overview](https://wiki.archlinux.org/title/MPRIS)

#### MPRIS Servers

* [Rust MPRIS server](https://github.com/SeaDve/mpris-server)

#### MPRIS Clients

* [playerctl](https://github.com/altdesktop/playerctl) THE MPRIS CLI, featured!
* [mpris-ctl](https://github.com/mariusor/mpris-ctl)
* [mpris-scrobbler](https://github.com/mariusor/mpris-scrobbler)
  submits the currently playing song to libre.fm 
* [MPRIS support in KDE](https://community.kde.org/MPRIS)
  + [PlasMusic Toolbar](https://github.com/ccatterina/plasmusic-toolbar)
  + [simple mpris](https://github.com/slbillups/simple-mpris)
* [Rust MPRIS client](https://github.com/Mange/mpris-rs)
* [mpv-mpris](https://github.com/hoyon/mpv-mpris)
  plugin for mpv which allows control of the player using standard media keys
* [mpd-mpris](https://github.com/natsukagami/mpd-mpris) 
  MPRIS2 interface for MPD

### DBus

#### DBus over network

* [dbus over ssh](https://nikhilism.com/post/2023/remote-dbus-notifications/) featured!
* [dbus over tcp](https://stackoverflow.com/questions/10158684/connecting-to-dbus-over-tcp) very old

