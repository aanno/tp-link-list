# Proxy and firewall avoidance

## Blogs 

* https://cscot.pages.dev/archives/

## Tunneling

* [udp-in-tcp](https://github.com/wangyu-/udp2raw-tunnel)
* [chisel](https://github.com/jpillora/chisel)
* [wstunnel](https://github.com/erebe/wstunnel) tcp-over-ws in rust
  + https://github.com/mhzed/wstunnel tcp-over-ws in JS/Browser

## Proxy Implementations (mostly camouflage proxies)

* [gost v3](https://github.com/go-gost/gost) go simple tunnel, swiss army knife for proxy setup, featured!
* [hysteria](https://github.com/apernet/hysteria) SOCKS5, HTTP proxy, TCP/UDP forwarding, Linux TProxy and more
* [hysteria2](https://v2.hysteria.network/) censorship resistant proxy, featured!
* [outline](https://getoutline.org/de/) alternative to tor (?)
  + https://github.com/Jigsaw-Code/outline-server
  + https://github.com/Jigsaw-Code/outline-sdk
* [shadowsocks](https://shadowsocks.org/)
  + [server and client implementations](https://shadowsocks.org/doc/getting-started.html)
  + [shadowsocks-rust](https://github.com/shadowsocks/shadowsocks-rust) rust implementation of shadowsocks
  + [go-shadowsocks2](https://github.com/shadowsocks/go-shadowsocks2) go-lang implementation of shadowsocks
  + https://en.wikipedia.org/wiki/Shadowsocks
* [trojan](https://trojan-gfw.github.io/trojan/overview) old
  + https://github.com/trojan-gfw/trojan C++
  + https://github.com/p4gefau1t/trojan-go go-lang
* [juicity](https://github.com/juicity/juicity) quic/http3 proxy camouflage (successor of tuic)

#### Client and Libs

* [jg socks](https://github.com/JoshGlazebrook/socks) socks client lib for typescript
  + [proxy-agents](https://github.com/TooTallNate/proxy-agents) several http/https/socks proxy agents for typescript
    - [socks-proxy-agent](https://github.com/TooTallNate/proxy-agents/tree/main/packages/socks-proxy-agent)
* [socksio](https://github.com/sethmlarson/socksio) socks client lib for python
* [h11w socks](https://github.com/h12w/socks) socks client-lib for go-lang
* [txthinking socks5](https://github.com/txthinking/socks5) socks5 server and client lib for go-lang

##### Socks 5 authentication

Socks 5 authentication is not common.

* [code socks 5 auth in java](https://stackoverflow.com/questions/51335051/java-how-to-setup-socks-proxy-with-credentials)
  + [socks 5 auth with apache http client](https://stackoverflow.com/questions/22937983/how-to-use-socks-5-proxy-with-apache-http-client-4)
  + [socks _without_ auth is supported](https://stackoverflow.com/questions/5697371/how-to-use-socks-in-java)

##### Socksify

* https://github.com/emsal0/Socksify
  + https://linux.die.net/man/1/socksify

### straight SOCKS5 implementations

* [fast-socks5](https://github.com/dizda/fast-socks5) rust
* [merino](https://github.com/ajmwagar/merino) rust
* [3proxy](https://github.com/3proxy/3proxy) C-lang
* [spp](https://github.com/esrrhs/spp) socks5 and more, go-lang
* [serjs socks5 server](https://github.com/serjs/socks5-server) socks5 server using go-socks5 with authentication, allowed ips list in go-lang
* [hev-socks5-tproxy](https://github.com/heiher/hev-socks5-tproxy) socks5, tproxy, transparent proxy in C-lang
* [agentx](https://github.com/ZhangJiupeng/AgentX netty-based
* [squid](http://www.squid-cache.org/) socks5 can be compiled in
  + https://wiki.squid-cache.org/Features/Socks
* [dante](https://www.inet.no/dante/status.html) socks5 server in c-lang, tools (includes socksify implementation)
  + [dante ipv6 support](https://www.inet.no/dante/doc/latest/config/ipv6.html)
  + [client usage](https://www.inet.no/dante/doc/latest/config/client.html)
* [ssf - Secure Socket Funneling](https://github.com/securesocketfunneling/ssf) tunnel udp, tcp and socks5 through TLS connection (includes socks5 server) in C++
* [ssh as socks5 proxy](https://catonmat.net/linux-socks5-proxy)
* [historic implementation and instructions](https://einstein.informatik.uni-oldenburg.de/rechnernetze/socks.htm)
* [explanation of historic features and evolution](https://fineproxy.de/knowledge-base/was-sind-socks-proxys/)

## Public Proxy Lists

* [hidemy proxy search](https://hidemy.io/de/proxy-list/)
* [proxynova list](https://www.proxynova.com/)
* [proxysite proxy search](https://www.proxysite.com/)
* https://github.com/TheSpeedX/PROXY-List
* https://github.com/hookzof/socks5_list
* https://github.com/jetkai/proxy-list includes links to scraper and validators

## (Public) Proxy Validation

* [mubeng](https://github.com/kitabisa/mubeng) validator, rotator and implementation in go-lang, featured!
* [ProxyBroker](https://github.com/constverum/ProxyBroker) scrape and validate in python (includes public proxy lists)
* [socker](https://github.com/TheSpeedX/socker) validates SOCKS4 & SOCKS5 proxies (in python)
* [proxy scraper](https://github.com/iw4p/proxy-scraper) scrape and validate in python (includes public proxy lists)

### GFW (china) related proxies

* [sing-box](https://sing-box.sagernet.org/manual/proxy/server/)  Shadowsocks, Trojan, TUIC, Hysteria2 
  + [sing-box-subscribe](https://github.com/Toperlock/sing-box-subscribe/blob/main/instructions/README.md) generate `config.json` for sing-box
    - https://github.com/Toperlock/sing-box-subscribe/tree/main/instructions
    - https://sing-box-subscribe.vercel.app/
  + [sing-box-geosite](https://github.com/Toperlock/sing-box-geosite) qx，surge，loon，clash rules for sing-box
  + [sing-box-tls](https://codeberg.org/l0Ye2sE/sing-box-stls) sing-box server install script
  + [nekoray](https://github.com/Matsuridayo/nekoray) QT based UI for sing-box and v2ray
* [Hiddify-Manager](https://github.com/hiddify/Hiddify-Manager) all-in-one UI for anti-censorship toolbox, featured!
* [goproxy](https://github.com/snail007/goproxy) http proxy, https proxy, socks5 proxy, ss proxy, websocket proxies, tcp proxies, udp proxies, game shield, game proxies
  + [proxy admin free](https://github.com/snail007/proxy_admin_free) web UI for goproxy
* [Xray core](https://github.com/XTLS/Xray-core) go-lang
  + [Android Xray UI](https://github.com/SaeedDev94/Xray)
  + [v2rayA](https://github.com/v2rayA/v2rayA) Xray client (supports VMess, VLess, SS, SSR, Trojan (trojan-go), Tuic and Juicity protocols)
* [reality](https://github.com/XTLS/REALITY) successor of Xray?
  + [reality tutorial](https://cscot.pages.dev/2023/03/02/Xray-REALITY-tutorial/)

## Transparent Proxy (tproxy)

* [tproxy as linux kernel feature](https://docs.kernel.org/networking/tproxy.html)
  + https://serverfault.com/questions/1056072/what-is-the-purpose-of-tproxy-how-should-you-use-it-and-what-happens-internally
* [tproxy support in squid](https://wiki.squid-cache.org/Features/Tproxy4)

## TUN and TAP - alternative to tproxy (for VPN like use cases)

TAP = Bridging (all same subnet), mostly obsolete
TUN = Routing (2 virtual subnets)

* https://www.thomas-krenn.com/de/wiki/OpenVPN_Grundlagen#Netzwerkmodi
* https://de.wikipedia.org/wiki/TUN/TAP

### TUN Implementations

* [tun2socks](https://github.com/xjasonlyu/tun2socks) proxy traffic, HTTP/Socks4/Socks5/Shadowsocks, based on [gvisor](https://gvisor.dev/) network parts

## Proxy sellers

* https://rateproxy.com/en/
* https://scoktw.com/us/best_exclusive_socks5_proxy.html

* https://proxy6.net/en/
* https://fineproxy.de/
* https://proxyline.net/en/ceny/
* https://proxysocks5.com/product/socks5/
* https://proxy-seller.com/
* https://proxys.io/en/#pricing

## Testing proxies and MTM

* [Burp Suite](https://portswigger.net/burp/communitydownload)
  + [Burp Install Docs](https://portswigger.net/burp/documentation/desktop/getting-started/download-and-install)
  + [Burp Getting Started](https://portswigger.net/burp/documentation/desktop/getting-started)
* [proxify](https://github.com/projectdiscovery/proxify) go-lang

## self-hosted proxis

### .. as anti-ad proxies

* [compare pi hole with other ad blockers](https://pihole.de/pi-hole-vs-top-werbeblocker-ein-detaillierter-vergleich/)

* [pi hole](https://pi-hole.net/) complete blocking solution (http proxy and DNS) for an private subnet, featured!
  + https://discourse.pi-hole.net/about
  + [pi-hole docker image](https://github.com/pi-hole/docker-pi-hole?tab=readme-ov-file)
* [squid blocks adservers](https://blog.cyberfront.org/index.php/2021/12/10/squid-block-adservers/)
  + [used plaintext list](https://pgl.yoyo.org/adservers/#plaintext)
* [privoxy](https://www.privoxy.org/)
  + [quickstart ad blocking](https://www.privoxy.org/user-manual/quickstart.html)
  + [privoxy blocklist](https://github.com/Andrwe/privoxy-blocklist)
  + [easylist pac privoxy](https://github.com/essandess/easylist-pac-privoxy) old
* [blocky](https://0xerr0r.github.io/blocky/) DNS proxy and ad blocker
  + https://github.com/0xERR0R/blocky
* [AdAway](https://adaway.org/) android ad blocker, /etc/hosts based
  + https://github.com/AdAway/AdAway?tab=readme-ov-file

