# Music

## HiRes Audio

* https://www.naxos.com/blu-ray_audio.asp

## Pop

* https://www.jetzt.de/musik/das-ist-die-rapperin-haiyti
* http://taz.de/Folk-mit-ironisch-ernsthaften-Texten/!5401362/
* http://www.faz.net/aktuell/feuilleton/pop/album-der-woche/das-neue-album-von-janelle-monae-15563327.html

## World

* https://www.qobuz.com/de-de/album/ahwar-nadah-el-shazly/5055869525176

## Blogs and Discussions

* https://www.avforums.com/

## Streaming and Multiroom

### Chromecast and alternatives

* https://developers.google.com/cast/
  + https://github.com/googlecast
* [official multi-room group FAQ](https://support.google.com/chromecast/answer/6329016?hl=en)

### Apple

#### DAAP

* https://en.wikipedia.org/wiki/Digital_Audio_Access_Protocol
* [canary](https://github.com/mycoboco/canary) music streaming server/client

#### Airplay

* https://de.wikipedia.org/wiki/AirPlay_(Schnittstelle)
* [unofficial airplay spec](https://nto.github.io/AirPlay.html)
* [openairplay](https://github.com/openairplay/openairplay) stream _from_ linux
* [airconnect](https://github.com/philippe44/AirConnect) convert airplay to UPnP/Sonos/Chromecast 
* [shairport-sync](https://github.com/mikebrady/shairport-sync) linux AirPlay audio player
* [airserver](https://www.airserver.com/Linux) commercial

#### Alternatives

* https://awesomeopensource.com/projects/chromecast
* http://www.ocast.org/
* https://github.com/ASHS-School/mirrorcast
* https://github.com/muammar/mkchromecast
* https://github.com/zoff-music/zoff-chromecast-receiver
  + https://zoff.me/
* https://github.com/mariolukas/HydraPlay
* http://strobe.audio/
* https://github.com/badaix/snapcast
* http://georgielabs.net/ (stream _to_ android, commercial)
  + https://play.google.com/store/apps/details?id=com.georgie.SoundWire
* https://github.com/balenalabs/balena-sound
* player/device api
  + https://github.com/xat/chromecast-player
  + https://github.com/thibauts/node-castv2-client
  + https://github.com/vitalidze/chromecast-java-api-v2

#### Related tools

* https://github.com/d4rken/wakelock-revamp android
* https://github.com/alsmith/multicast-relay

## DLNA and other music servers

### Overview

* https://circuitdigest.com/article/top-media-server-software-for-music-streaming-on-raspberry-pi
* https://www.linuxlinks.com/musicservers/
* [stream audio _to_ a server](https://volumio.github.io/docs/User_Manual/Stream_audio_to_volumio)
* https://wiki.archlinux.org/title/Category:Media_servers
* [18 Best Open-source Free UPnP and DLNA Media Servers](https://medevel.com/19-os-upnp-media-servers/)
* [Die 9 besten Open-Source-UPnP- und DLNA-Server](https://linux-de.com/?p=274)

### Implementation

* https://github.com/anacrolix/dms
* https://gerbera.io/
  + https://github.com/gerbera/gerbera
  + https://github.com/gerbera/gerbera/issues/2176 showstopper bug
* https://volumio.org/
* https://jellyfin.org/ C#-based
* https://github.com/UniversalMediaServer/UniversalMediaServer
  + https://www.universalmediaserver.com/
  + https://www.universalmediaserver.com/comparison/
* https://github.com/DigitalMediaServer/DigitalMediaServer (old)
* https://sourceforge.net/projects/minidlna/files/minidlna/ (now ReadyMedia)
* https://mopidy.com/ (mpd clone)
* https://owntone.github.io/owntone-server/ (mpd and daap)
* https://airsonic.github.io/ (subsonic fork)
  + https://airsonic.github.io/docs/configure/introduction/
  + https://github.com/airsonic/airsonic-docs
  + https://github.com/airsonic-advanced/airsonic-advanced
* https://github.com/sphildreth/roadie (subsonic reimpletation)
* https://twonky.com/index.html (commercial)
* https://www.wildmediaserver.com/ (commercial)
* [pulseaudio-dlna](https://github.com/masmu/pulseaudio-dlna): stream local audio _to_ DLNA renderer
* [swyh-rs](https://github.com/dheijl/swyh-rs): stream local audio _to_ DLNA renderer
* [upmpdcli](https://www.lesbonscomptes.com/upmpdcli/): use DLNA user front-end to drive MPD (protocol)
  + [integrate DLNA and MPD](https://www.lesbonscomptes.com/upmpdcli/pages/upmpdcli-or-mpdupnp.html)
  + [MPD as client to an UPnP/DLNA Media Server](https://www.lesbonscomptes.com/pages/mpd-upnp.html)
* [SlickDLNA](https://github.com/KernelCrap/android-dlna)
  android client for browsing UPnP and DLNA media servers
* [Cohen3](https://github.com/opacam/Cohen3)
  wip, Framework for DLNA/UPnP Media Server for Python 3
* [simpleDLNA](https://nmaier.github.io/simpleDLNA/)
  zero-config DLNA media server for serving a media folder

### Misc

* https://www.moodeaudio.org/ webui for MPD
  + https://github.com/moode-player/moode
* https://github.com/pupnp/pupnp library for upnp/DLNA in C
* https://framagit.org/medoc92/npupnp an alternative implemenation of pupnp in C++
  + https://www.lesbonscomptes.com/upmpdcli/npupnp-doc/libnpupnp.html
* https://github.com/grimlock-/upnp_live mirror live streams on DLNA
* https://github.com/grilofw/grilo metasearch on streams
* https://github.com/gabrielmagno/nano-dlna DLNA control
* https://github.com/succlz123/DLNA-Dart and https://github.com/succlz123/Flutter-DLNA (alpha)

### jeOS (just enough operating system) (i.e. rasberry PI)

* https://www.pimusicbox.com/

## Spotify

* https://wiki.archlinux.org/title/spotify

### Spotify apps

* [librespot](https://github.com/librespot-org/librespot)
* [spotifyd](https://github.com/Spotifyd/spotifyd)
  + https://spotifyd.github.io/spotifyd/installation/index.html
* [spop](https://github.com/Schnouki/spop)
* [spicetify](https://spicetify.app/) modify the official app

### Spotify API

* [spotify-web-api-java](https://github.com/thelinmichael/spotify-web-api-java)
* [spotipy](https://spotipy.readthedocs.io/en/2.13.0/)

### Spotify import

* [import artist list 1](https://github.com/mbharanya/Spotify-Import-Artists)
* [import-artist-list 2](https://github.com/MattAlex151/spotify-follow-bot)

### Spotify export

* [exsp](https://github.com/gk4m/exsp)
* [exportify](https://github.com/watsonbox/exportify) (with reimport tipp)
* [backup and restore](https://github.com/secuvera/SpotMyBackup/)
* [big data export artist](https://github.com/panchambanerjee/access_spotify)
* [recommendation 1](https://github.com/slevin48/music)

### Spotify playlists

* [fork other playlist](https://github.com/kabirvirji/spotifork)
* [generate list with last.fm additional data](https://github.com/epsil/spotgen)
* [import/export playlists](https://github.com/debfx/spotify-playlists)
* [big data on recommendations](https://github.com/slevin48/music)

## Other streaming platforms 

### Qobuz streaming and Qobuz connect

* [stream qobuz with BubbleUPnP Server](https://www.hifizine.com/2019/07/stream-qobuz-to-anything/)
  + [BubbleUPnP Server](https://bubblesoftapps.com/bubbleupnpserver2/)
* qobuz api is not supported any more but api was formerly at https://github.com/Qobuz/api-documentation
  + [python-qobuz](https://github.com/taschenb/python-qobuz)

### Tidal streaming and Tidal connect

* [Tidal connect based on docker](https://github.com/GioF71/tidal-connect)
* [Tidal Connect Docker image for HifiBerry](https://github.com/TonyTromp/tidal-connect-docker)

## Linux music apps

* https://www.tecmint.com/best-media-server-software-for-linux/

### Client

* [gmusicbrowser - jukebox for large collections](https://gmusicbrowser.org/)
* [pragha - Lightweight Music Player in C](https://pragha-music-player.github.io/)
* [olivia](https://github.com/keshavbhatt/olivia)
* [tauon](https://tauonmusicbox.rocks/)
* [strawberry - qt5](https://www.strawberrymusicplayer.org/)
* [sayonara - qt5](https://sayonara-player.com/)
* [gnome music](https://wiki.gnome.org/Apps/Music)
* [lollypop - gnome](https://wiki.gnome.org/Apps/Lollypop)
* [audacious](https://audacious-media-player.org/)
* [jajuk](https://www.jajuk.info/)
  + https://github.com/jajuk-team/jajuk
* [elisa - kde](https://elisa.kde.org/de/)
* [vvalve - kde](https://vvave.kde.org/)
* [Guayadeque](https://www.guayadeque.org/)

#### mpd clients

* [cantata - qt5](https://wiki.archlinux.de/title/Cantata)
  + https://github.com/cdrummond/cantata

### Server

* [mopidy](https://mopidy.com/)
  + https://github.com/mopidy/mopidy
  + https://docs.mopidy.com/en/latest/installation/debian/
* [jellyfin](https://jellyfin.org/)
  + [jellyfin docker image](https://hub.docker.com/r/jellyfin/jellyfin)
  + https://jellyfin.org/docs/general/administration/installing.html#docker
  + https://github.com/jellyfin/jellyfin
  + https://mwalbeck.org/watching-livestreams-with-friends-using-the-syncplay-feature-in-jellyfin
  + https://jellyfin.org/posts/jellyfin-10-6-0/ syncplay
  + https://syncplay.pl/
* [universal media server](https://www.universalmediaserver.com/)
* [red5 - old](https://github.com/Red5/red5-server) partly commercial
  + https://www.red5pro.com/open-source/
* [madsonic - subsonic fork](https://beta.madsonic.org/pages/about.jsp) partly commercial
* [emby](https://emby.media/emby-theater-linux.html) partly commercial
* [CherryMusic](https://wiki.archlinux.org/title/CherryMusic)
  + https://github.com/devsnd/cherrymusic

#### DLNA Server

* https://www.linuxlinks.com/UPnPServers/
* https://awesomeopensource.com/projects/dlna
* https://dustri.org/b/airsonic-a-self-hosted-jukebox-that-sucks-less.html (list of musik server)
* [Gerbera - UPnP Media Server](https://gerbera.io/)
  + [Gerbera - docker image](https://hub.docker.com/r/gerbera/gerbera)
  + https://github.com/gerbera/gerbera
* [pulseaudio-dlna](https://wiki.ubuntuusers.de/pulseaudio-dlna/)
* [ReadyMedia aka minidlna](https://wiki.ubuntuusers.de/ReadyMedia/)
  + https://sourceforge.net/projects/minidlna/files/minidlna/
* [plex](https://www.plex.tv/de/media-server-downloads/) commercial
* [kodi - multimedia center ui with dlna server/client](https://kodi.tv/)
* [universal media server (UMS)](https://www.universalmediaserver.com/)
* [koel](https://koel.dev/)
  + https://github.com/koel/koel php
* [supysonic](https://github.com/spl0k/supysonic) python, subsonic protocol
* [navidrome](https://github.com/navidrome/navidrome) go, subsonic protocol
  + https://www.navidrome.org/
* [gonic](https://github.com/sentriz/gonic) go, subsonic protocol
* [dms](https://github.com/anacrolix/dms)
* [LimboMedia](https://limbomedia.net/)
* [home media server](https://www.homemediaserver.ru/en/index.htm)
* [MinimServer](https://minimserver.com/minimserver2.html)
  + [MinimStreamer](https://minimstreamer.com/)
* [rustymedia](https://github.com/kevincox/rustymedia)
* [mstream](https://mstream.io/) js-based
  + https://github.com/IrosTheBeggar/mStream
* [streama](https://github.com/streamaserver/streama) groovy-based, js-based (audio and video)
  + https://docs.streama-project.com/
* [madsonic](https://www.madsonic.org/pages/download.jsp) where is the source code? partly commercial
* [roadie](https://github.com/sphildreth/roadie) subsonic protocol, C#-based
  + [roadie-vuejs](https://github.com/sphildreth/roadie-vuejs) roadie frontend, vue-based
* [funkwhale](https://funkwhale.audio/) subsonic protocol, music sharing
  + https://dev.funkwhale.audio/funkwhale
  + https://wiki.archlinux.org/title/Funkwhale
  + https://de.wikipedia.org/wiki/Grooveshark
* [daphile - audiophile music server](https://www.daphile.com/)
* [sonerezh](https://www.sonerezh.bzh/) old, php-based
  + https://github.com/Sonerezh/sonerezh

#### DLNA control and clients

* [gmrender-resurrect](https://github.com/hzeller/gmrender-resurrect) DLNA client as daemon
* [Macast - desktop menu bar app to use `mpv` as renderer](https://github.com/xfangfang/Macast)
* [mpvDLNA - make `mpv` DLNA aware](https://github.com/chachmu/mpvDLNA)

#### DLNA tools

* [simple-dlna-browser](https://github.com/javier-lopez/learn/blob/master/sh/tools/simple-dlna-browser) shell script to browse DLNA
  
#### Podcasts

* [cpod aka Cumulonimbus](https://github.com/z-------------/CPod)
* [gpodder](https://gpodder.github.io/)
* [poddr](https://sn8z.github.io/Poddr/)
* [winds - podcasts and RSS from getstream.io](https://github.com/GetStream/Winds)
* [vocal](https://vocalproject.net/)
* [podgrab](https://github.com/akhilrex/podgrab) web-server
* [speakrr](https://github.com/coder2000/speakrr) web-server
* [podigee - html podcast player](https://github.com/podigee/podigee-podcast-player)

#### Special interest

* https://fostips.com/internet-radio-player-linux/
* https://linuxhint.com/radio_players_linux/
* [streamtuner2 - radio and cloud streaming](https://milki.include-once.org/streamtuner2/)
  + https://wiki.ubuntuusers.de/Streamtuner2/
* [gradio - radio](https://github.com/haecker-felix/gradio)
* [strimio - former odio radio](https://www.strimio.com/)
* [nuvola - cloud streaming](https://nuvola.tiliado.eu/)
* [Kaku - cloud streaming](https://github.com/EragonJ/Kaku/)
* [auryo - sound cloud](https://auryo.com/)
* [nuclear - internet streaming](https://nuclear.js.org/)
* [picard - music tagger ui](https://picard.musicbrainz.org/)
* [cozy - audiobook player](https://github.com/geigi/cozy)
  + https://cozy.sh/
* [noson - sonos controller](https://janbar.github.io/noson-app/)
* [flox - movie watch list](https://github.com/devfake/flox)
  + https://github.com/mwalbeck/docker-flox

#### Need special file structure

* [homehost](https://github.com/ridhwaans/homehost#naming-conventions)
* [audioserve](https://github.com/izderadicka/audioserve)

## Radio

### web-based

* https://onlineradiobox.com/

## Downloader

* [downloadhelper - firefox and chrome plugin](https://www.downloadhelper.net/)
  + https://github.com/mi-g/vdhcoapp/
  + https://github.com/aclap-dev/video-downloadhelper/wiki/CoApp-Installation
  + https://github.com/aclap-dev/vdhcoapp

## Web services

### Youtube Music

* https://github.com/kawaiiDango/youtube-music-upload-sync
* https://github.com/Venipa/ytmdesktop2

## Streaming Hardware

* [WiiM](https://wiimhome.com/) music streaming hardware
  + [WiiM Pro Plus](https://www.amazon.de/WiiM-Chromecast-Multiroom-Kompatibel-Assistant/dp/B0CC2HWC7N)
* [hifiberry](https://www.hifiberry.com/)
* [volumio for raspberry](https://volumio.com/get-started/)

## Multi-track recorder

* [audacity](https://www.audacityteam.org/)
* [zynthbox](https://zynthbox.io/)


## Grey (Video) Streaming

### Stremio

* [stremio](https://www.stremio.com/features)
