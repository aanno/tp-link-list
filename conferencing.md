# (Video) Conferencing

* https://www.golem.de/news/big-blue-button-wie-ccc-urgesteine-gegen-teams-und-zoom-kaempfen-2005-148560.html

## Fake Background and Image Processing

* https://github.com/fangfufu/Linux-Fake-Background-Webcam
* https://elder.dev/posts/open-source-virtual-background/

## Server

* https://www.heise.de/ix/meldung/Nextcloud-stellt-High-Performance-Back-End-unter-Open-Source-Lizenz-4727074.html
* https://bigbluebutton.org/
* https://openmeetings.apache.org

### Jitsi

* https://jitsi.org/
* https://www.heise.de/ratgeber/Dateiablage-Videokonferenz-und-Chat-auf-dem-eigenen-Server-betreiben-4698377.html

### Openvidu

* https://openvidu.io/
* https://docs.openvidu.io/en/2.12.0/deployment/deploying-ubuntu/
* https://github.com/OpenVidu/openvidu
* https://medium.com/@openvidu/openvidu-2-2-0-turn-made-easy-9d7e145f8905
* https://openvidu.io/tutorials

### Nextcloud Talk/Spreed

* Vidio conference: nextcloud talk
  - https://nextcloud.com/talk/
  - https://apps.nextcloud.com/apps/spreed
  - [TURN and STUN scripts](https://github.com/nextcloud/vm/blob/master/apps/talk.sh)
  - https://nextcloud-talk.readthedocs.io/en/latest/

#### Spreed

* https://github.com/nextcloud/spreed
* https://apps.nextcloud.com/apps/spreed
* https://markus-blog.de/index.php/2020/11/20/how-to-run-nextcloud-talk-high-performance-backend-with-stun-turnserver-on-ubuntu-with-docker-compose/
* https://www.spreed.eu/de/contact-nextcloud-talk-high-performance-backend/
  + https://nextcloud-talk.readthedocs.io/en/latest/standalone-signaling-api-v1/
* https://github.com/strukturag/nextcloud-spreed-signaling
* https://github.com/meetecho/janus-gateway
* https://nats.io/download/
* https://intux.de/2020/03/turn-server-fuer-nextcloud-talk/
* https://arnowelzel.de/nextcloud-talk-mit-coturn-und-eigenem-signaling-server

### WebRTC

* https://ourcodeworld.com/articles/read/1212/top-5-best-open-source-webrtc-media-server-projects

### Screen Sharing (only)

* https://obsproject.com/de
  + https://de.m.wikipedia.org/wiki/Open_Broadcaster_Software
* https://github.com/screego/server

### Other

* https://github.com/peer-calls/peer-calls
* SDKs
  + https://www.meetecho.com/en/
  + https://github.com/meetecho/janus-gateway
  + https://github.com/atyenoria/janus-webrtc-gateway-docker
  + https://github.com/medooze/media-server
  + https://mediasoup.org/
  + https://v3demo.mediasoup.org/
  + https://github.com/versatica/mediasoup/
  + https://github.com/ant-media/Ant-Media-Server

## Services

### Commercial

* https://talky.io/
* https://browsermeeting.com/

### Open Source 

* https://jitsi.org/jitsi-meet/
* https://demos.openvidu.io/basic-videoconference/

## Demos/Experiments

* https://github.com/svarunan/serverless-webrtc
* https://github.com/flackr/serverless-webrtc
* https://github.com/cjb/serverless-webrtc

## Technics

### WebRTC

* https://www.html5rocks.com/en/tutorials/webrtc/infrastructure/

### NAT Traversal

* https://www.pjsip.org/pjnath/docs/html/

#### ICE

* https://levelup.gitconnected.com/webrtc-the-ice-framework-stun-and-turn-servers-10b2972483bb?gi=694b2cb008a
* https://webrtc.github.io/samples/src/content/peerconnection/trickle-ice/ (testing)

#### Stun

* http://www.stunprotocol.org/ server

#### Turn

* https://github.com/coturn/coturn server (includes Stun, ICE)
* https://github.com/jitsi/turnserver
