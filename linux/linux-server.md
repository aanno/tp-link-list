# Linux Server (Tec)


## Blogs

* https://decatec.de/ home server

## Ubuntu 

* [metal-as-a-service](https://maas.io/)
* [cloud-init](https://cloud-init.io/) customising cloud instances
* [multipass](https://multipass.run/) Ubuntu VMs on demand
  + https://multipass.run/docs
* https://www.digitalocean.com/community/tutorials/how-to-handle-apt-key-and-add-apt-repository-deprecation-using-gpg-to-add-external-repositories-on-ubuntu-22-04

## Logging

### Journald

* https://sematext.com/blog/journald-logging-tutorial/


## Web servers and proxies

* [best open web servers](https://www.tecmint.com/best-open-source-web-servers/)
* [best open web servers 2](https://www.fosslinux.com/46032/best-open-source-web-servers-linux.htm)

### Meta Web Servers

### Web server implementations

* [OpenLiteSpeed](https://openlitespeed.org/openlitespeed-features/)
* [Caddy](https://caddyserver.com/docs/)
  + [xcaddy](https://github.com/caddyserver/xcaddy)
    Custom Caddy Builder
  + [caddy packages and modules](https://caddyserver.com/download)
* [Cherokee](https://cherokee-project.com/)
* [Lighttpd](https://redmine.lighttpd.net/projects/lighttpd/wiki/Lighttpd)
* [Apache Traffic Server](https://trafficserver.apache.org/)
* [Apache Tomcat](https://tomcat.apache.org/)

### Http/3 (QUIC)

* https://en.wikipedia.org/wiki/HTTP/3
* https://caniuse.com/http3

### Nginx

* https://nginx.org/en/docs/beginners_guide.html
* https://www.digitalocean.com/community/tutorials/understanding-nginx-server-and-location-block-selection-algorithms-de
* [TLS on nginx](https://www.sslmarket.de/ssl/help-installation-des-ssl-zertifikats-fuer-server-nginx)
  + https://www.techrepublic.com/article/how-to-enable-ssl-on-nginx/
* [http2 server push](https://www.nginx.com/blog/nginx-1-13-9-http2-server-push/)
* http/3 and quic
  + https://www.nginx.com/blog/our-roadmap-quic-http-3-support-nginx/
  + https://quic.nginx.org/
  + https://www.nginx.com/blog/introducing-technology-preview-nginx-support-for-quic-http-3/
  + https://github.com/cloudflare/quiche
  + https://blog.cloudflare.com/experiment-with-http-3-using-nginx-and-quiche/

#### Nginx extensions

* https://openresty.org/en/
* https://leafo.net/lapis/

#### Nginx forks

* [overview](https://linuxnews.de/freenginx-neuer-nginx-fork/)
* [angie](https://github.com/webserver-llc/angie)
* [freenginx](http://freenginx.org/)

### Cluster

* https://de.wikipedia.org/wiki/Corosync_Cluster_Engine

### Self-Hosting

#### Blogs and articles

Also see self-hosting in software.md

* [noted](https://noted.lol/) collaborated effort to write about self-hosting
* [seeseekey's self-hosting book](https://seeseekey.net/fachbuecher/selfhosting)

#### Services

* [cloudron](https://www.cloudron.io/) commercial
  + [install cloudron](https://docs.cloudron.io/installation/)
  + https://chris.beams.io/posts/running-cloudron/
  + [apps register for cloudron](https://git.cloudron.io/cloudron)
  + [even more apps](https://github.com/orgs/cloudron-io/repositories)
* [wiki suite](https://wikisuite.org/Software)
  + [comparision to nextcloud, cloudron, ...](https://wikisuite.org/Alternatives) featured!
  + [tiki tracker - low code platform](https://tikitrackers.org/Database-Web-App-Builder)
* [docker solutions for vServer hosting](https://www.dogado.de/vps)
* https://www.cloudpanel.io/ cloud self-hosting
* https://fedoramagazine.org/deploy-your-own-matrix-server-on-fedora-coreos/ matrix on fcos
* [cloudogu](https://cloudogu.com/en/ecosystem/architecture/) cloud self-hosting - commercial
  + [smeagol wiki](https://github.com/cloudogu/smeagol)
  + [standalone smeagol wiki](https://github.com/schnatterer/smeagol-galore)
  + https://cloudogu.com/de/blog/smeagol-das-open-source-git-wiki
  + [agosense - project management](https://agosense.com/de/produkte/agosensefidelia) - commercial
  + [scm-manager](https://scm-manager.org/)
    - https://github.com/scm-manager/scm-manager
* https://kinsta.com/ cloud self-hosting
* https://ably.com/ commercial

### Firewall appliances

* [opnsense](https://opnsense.org/)
* [pfSense](https://www.pfsense.org/)
* [IPFire](https://www.ipfire.org/)
* [Untangle](https://www.untangle.com/) commercial

### NAS

* [rockstor](https://rockstor.com/docs/)
   Linux & BTRFS-based Network Attached Storage (NAS) Appliance
   + [plex on rockstor](https://rockstor.com/docs/interface/docker-based-rock-ons/plex-media-server.html)
* [TrueNAS Scale](https://www.truenas.com/truenas-scale/) linux-based NAS, openzfs, and containers
  + [TrueCharts](https://truecharts.org/manual/SCALE/guides/scale-intro/) helm charts for TrueNAS Scale
* [openmediavault](https://www.openmediavault.org/) linux distribution for NAS, debian based
* [HexOS](https://hexos.com/blog/the-magic-behind-hexos) NAS and Cloud OS, commercial
  + https://linuxnews.de/hexos-homeserver-und-nas-fuer-jedermann/
* [unraid](https://unraid.net/) commercial

#### QNAP

* https://www.qnap.com/en/how-to/tutorial/article/qpkg-development-guidelines
* https://github.com/qeek-dev/create-dpkg

#### NAS Hardware

* https://nas.ugreen.com/

#### Home-page automation (server start page)

Here, there screenshots are also interesting for looking what others are hosting...

* https://github.com/jeroenpardon/sui
* https://github.com/pawelmalak/flame
* https://github.com/bastienwirtz/homer


#### Special interest, Articles, Lists

* [TandoorRecipes - for (cooking) recipes](https://github.com/TandoorRecipes/recipes)
* [cool docs about server tasks at cherryservers](https://www.cherryservers.com/blog/set-docker-environment-variables)
* [cool docs about server tasks at linode](https://www.linode.com/docs/guides/)
* [awesome sysadmin](https://github.com/cloudron-io/awesome-sysadmin) featured!
