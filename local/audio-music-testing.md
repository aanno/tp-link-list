# audio and music apps

## gonic

1. https://github.com/sentriz/gonic
   https://github.com/sentriz/gonic/wiki/installation#from-source
2. `sudo dnf install taglib-extras-devel sqlite-devel`
3. `sudo dnf install ffmpeg-devel mpv-devel vlc-devel` (seems to be optional)
4. Before rebuild: `go clean -r -x -cache`
5. `go build --buildmode=pie --linkshared cmd/gonic/gonic.go`
6. Minimal config: `./gonic -music-path music/ -podcast-path podcasts/ -cache-path cache/ -playlists-path playlists/`
7. No config file, use ENV or CLI args.
8. Default login: admin/admin
9. http://localhost:4747
10. Jukeboxmode needs settings, see https://github.com/sentriz/gonic/issues/481

```sh
$ ldd gonic 
        linux-vdso.so.1 (0x00007fa15331a000)
        libresolv.so.2 => /lib64/libresolv.so.2 (0x00007fa153302000)
        libstdc++.so.6 => /lib64/libstdc++.so.6 (0x00007fa151760000)
        libtag.so.1 => /lib64/libtag.so.1 (0x00007fa15165e000)
        libz.so.1 => /lib64/libz.so.1 (0x00007fa15163b000)
        libm.so.6 => /lib64/libm.so.6 (0x00007fa15154d000)
        libgcc_s.so.1 => /lib64/libgcc_s.so.1 (0x00007fa151521000)
        libc.so.6 => /lib64/libc.so.6 (0x00007fa15132f000)
        /lib64/ld-linux-x86-64.so.2 (0x00007fa15331c000)
```

* https://www.adityathebe.com/how-to-clean-go-build-cache/
* https://stackoverflow.com/questions/67201708/go-update-all-modules
* https://go.dev/doc/modules/managing-dependencies

```sh
go get -u
go get -u ./...
go mod tidy
go clean -r -x -cache
```

## navidrome

1. https://github.com/navidrome/navidrome
  https://www.navidrome.org/docs/installation/build-from-source/
2. Add `--buildmode=pie --linkshared` to Makefile where `go build`
3. Remove `--tags=netgo` from Makefile
4. `make setup`
5. `make build`
6. navidrome _needs_ configuration in `/etc/navidrome/navidrome.toml`, see 
   + https://www.navidrome.org/docs/installation/linux/
   + https://www.navidrome.org/docs/usage/configuration-options/
7. http://localhost:4533
8. first user created will be admin user
9. navidrome collects (anonymous) data, see https://www.navidrome.org/docs/getting-started/insights/
10. Jukebox mode needs settings, see https://www.navidrome.org/docs/usage/jukebox/

* Build problems with dsffile.h: https://github.com/navidrome/navidrome/issues/3990

```sh
$ ldd navidrome
        linux-vdso.so.1 (0x00007fa7984ed000)
        libtag.so.1 => /lib64/libtag.so.1 (0x00007fa7983bb000)
        libresolv.so.2 => /lib64/libresolv.so.2 (0x00007fa7983a9000)
        libstdc++.so.6 => /lib64/libstdc++.so.6 (0x00007fa79478a000)
        libm.so.6 => /lib64/libm.so.6 (0x00007fa79469c000)
        libgcc_s.so.1 => /lib64/libgcc_s.so.1 (0x00007fa79837d000)
        libc.so.6 => /lib64/libc.so.6 (0x00007fa7944aa000)
        libz.so.1 => /lib64/libz.so.1 (0x00007fa798358000)
        /lib64/ld-linux-x86-64.so.2 (0x00007fa7984ef000)
```

## upmpdcli

1. I create packages (rpm) on my on. See https://github.com/aanno/linux-config/tree/master/build-with-docker
   for details.
2. [upmpdcli](https://www.lesbonscomptes.com/upmpdcli/) is a complex beast with 3 major functions.
3. [Configuration file reference](https://www.lesbonscomptes.com/upmpdcli/pages/upmpdcli-manual.html#_upmpdcli_configuration)

### Media Renderer

upmpdcli works as a DLNA/Upnp Media renderer. It will be controlled by a DLNA/Upnp Controller (like BubbleUPNP).
The controller will point it to an music file (from a DLNA/Upnp Server) and upmpdcli will proxy it to a
*MPD server* (could also be something like owntone). The net result is that you have enhanced your mpd server
with DLNA/Upnp functionality.

* [Upmpdcli Media Renderer](https://www.lesbonscomptes.com/upmpdcli/pages/upmpdcli-manual.html#UPMPDCLI-RENDERER)

### Media Server

* [Upmpdcli Media Server](https://www.lesbonscomptes.com/upmpdcli/pages/upmpdcli-manual.html#UPMPDCLI-MS)

upmpdcli works as a DLNA/Upnp Media server. It will expose/serve content to play. This is implemented the
plugins written in python. The net result is that you have another DLNA/Upnp Media server.

* [Uprcl](https://www.lesbonscomptes.com/upmpdcli/pages/upmpdcli-manual.html#UPMPDCLI-MS-UPRCL) is for local music
* [subsonic](https://www.lesbonscomptes.com/upmpdcli/pages/upmpdcli-manual.html#UPMPDCLI-MS-SUBSONIC) is for accessing content
  of servers with subsonic compatible API.
* [streaming service](https://www.lesbonscomptes.com/upmpdcli/pages/upmpdcli-manual.html#UPMPDCLI-MS-STR) is to access
  + [Tidal](https://www.lesbonscomptes.com/upmpdcli/pages/upmpdcli-manual.html#UPMPDCLI-MS-STR-TIDAL)
  + [Qobuz](https://www.lesbonscomptes.com/upmpdcli/pages/upmpdcli-manual.html#UPMPDCLI-MS-STR-QOBUZ)
  + [radio-browser.info](https://www.lesbonscomptes.com/upmpdcli/pages/upmpdcli-manual.html#UPMPDCLI-MS-RADIO-BROWSER) 
    is to access [Radio Browser](https://www.radio-browser.info/)
  + similiar plugins for [Radio Paradise](https://www.radioparadise.com/), 
    [Mother Earth Radio](https://www.motherearthradio.de/), and
    [BBC sounds](https://www.bbc.co.uk/sounds)
  + [Upradios radio list](https://www.lesbonscomptes.com/upmpdcli/pages/upmpdcli-manual.html#UPMPDCLI-MS-UPRADIOS)
    is for configuring arbitrary internet radio stations

### Songcast - multi room solution (like snapcast)

* [Upmpdcli and Songcast](https://www.lesbonscomptes.com/upmpdcli/pages/upmpdcli-manual.html#UPMPDCLI-SONGCAST)
* [upplay](https://www.lesbonscomptes.com/upplay/)
  Qt-based UPnP audio controller
  + [Upplay downloads](https://www.lesbonscomptes.com/upplay/pages/downloads.html)
* [BubbleDS](https://play.google.com/store/apps/details?id=com.bubblesoft.android.bubbleds2&hl=de)
  Songcast/DLNA/Upnp controller for Android

### More documentation

* [Libupnpp, Upmpdcli and Sc2mpd Documentation](https://www.lesbonscomptes.com/upmpdcli/pages/docs.html)
* [Upmpdcli and associated libraries release notes](https://www.lesbonscomptes.com/upmpdcli/pages/releases.html)

### Dependencies

* [OpenHome Player for Ubuntu 15.10](http://openhome.org/pages/use/downloads/linux.html)
* [songcast](https://www.songcastmusic.com/)
* [libupnpp](https://framagit.org/medoc92/libupnpp/)
  Libupnpp provides a higher level C++ API over libnpupnp or libupnp
  + [Libupnpp for Control Points](https://www.lesbonscomptes.com/upmpdcli/libupnpp-refdoc/libupnpp-ctl.html)
  + [libupnpp-samples](https://framagit.org/medoc92/libupnpp-samples)
* [npupnp](https://framagit.org/medoc92/npupnp/)
  A C++ base UPnP library, derived from Portable UPnP, a.k.a libupnp
  + [libnpupnp : replacing the venerable pupnp/libupnp](https://www.lesbonscomptes.com/upmpdcli/npupnp-doc/libnpupnp.html)
  + [libnpupnp documentation](https://www.lesbonscomptes.com/upmpdcli/npupnp-doc/refdoc/html/index.html)
    An almost compatible successor for the Portable UPnP reference library
  + [npupnp-samples](https://framagit.org/medoc92/npupnp-samples)

### Code

* [upmpdcli](https://framagit.org/medoc92/upmpdcli/)
* [ohSongcast](https://github.com/openhome/ohSongcast) of [openhome](https://github.com/openhome?q=ohnetmon&type=all&language=&sort=)
* [upplay](https://framagit.org/medoc92/upplay)

### Alternatives

* [MediaPlayer](https://github.com/PeteManchester/MediaPlayer) is an alternative for 
  upmpdcli media renderer functionality

### Jean-Francois Dockes

* [projects](https://framagit.org/users/medoc92/projects)
  + [recoll-we](https://framagit.org/medoc92/recoll-we)
    Indexing Firefox visited pages with [Recoll](https://www.recoll.org/)
