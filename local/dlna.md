# Local DLNA

## Owntone

### Owntone on Fedora

Owntone needs ffmpeg (-libs) from rpmfusion.

```bash
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install ffmpeg --allowerasing
```

Owntone needs `pulseaudio_backend` feature flag, see https://docs.spotifyd.rs/installation/source.html .

* [owntone.conf template](https://raw.githubusercontent.com/owntone/owntone-server/refs/heads/master/owntone.conf.in)
* https://discussion.fedoraproject.org/t/issues-installing-ffmpeg-fedora-39/99442
* [owntone network mounts](https://owntone.github.io/owntone-server/library/) `touch trigger.init-rescan` or `touch trigger.meta-rescan` to trigger a rescan of the library

## Links

* [gerbera](https://github.com/gerbera/gerbera) http://192.168.10.145:49152/
  + [gerbera docs](https://docs.gerbera.io/en/stable/)
* [jellyfin](https://jellyfin.org/) http://192.168.10.145:8096/web/
  + [jellyfin docs](https://jellyfin.org/docs/)
* [plex media server](https://www.plex.tv/media-server-downloads/#plex-media-server) http://192.168.10.145:32400/web/
  + [plex.tv docs](https://support.plex.tv/articles/)
* [universal media server (UMS)](https://www.universalmediaserver.com/) http://192.168.10.145:9001/browse/15
  + [UMS docs](https://support.universalmediaserver.com/books)
  + [local admin console](http://192.168.10.145:5001/console/scan)
* [serviio](https://serviio.org/) http://192.168.10.145:23424/mediabrowser/ (only with license)
  + [serviio docs](https://serviio.org/support)
  + [local admin console](http://192.168.10.145:23423/console/)
* [owntone](https://github.com/owntone/owntone-server)
  + [owntone docs](https://owntone.github.io/owntone-server/installation/)
  + [owntone.service template](https://github.com/owntone/owntone-server/blob/master/owntone.service.in)
  + [owntone.local:3689](http://owntone.local:3689)
  + [192.168.10.145:3689](http://192.168.10.145:3689)
  + [localhost:3689](http://localhost:3689)
* [gmrender](https://github.com/hzeller/gmrender-resurrect) DLNA renderer client
  + [gmrender install](https://github.com/hzeller/gmrender-resurrect/blob/master/INSTALL.md)
  + [gmrender compatibility](https://github.com/hzeller/gmrender-resurrect/wiki/Comptibility)
* [spotifyd](https://github.com/Spotifyd/spotifyd)
  + [spotifyd.conf](https://github.com/Spotifyd/spotifyd/blob/master/contrib/spotifyd.conf)
  + test on CLI with `spotifyd -v --no-daemon`
  + [running as a service](https://docs.spotifyd.rs/installation/service.html)
  + [systemd](https://docs.spotifyd.rs/advanced/systemd.html)
  + [contrib/spotifyd.service](https://github.com/Spotifyd/spotifyd/blob/master/contrib/spotifyd.service)
* [muspnp](https://github.com/phpbg/muspnp/) DLNA control point in JS
