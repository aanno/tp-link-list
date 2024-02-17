# Proxy and firewall avoidance

## Tunneling

* [udp-in-tcp](https://github.com/wangyu-/udp2raw-tunnel)
* [tun2socks](https://github.com/xjasonlyu/tun2socks)
* [chisel](https://github.com/jpillora/chisel)
* [wstunnel](https://github.com/erebe/wstunnel) tcp-over-ws in rust
  + https://github.com/mhzed/wstunnel tcp-over-ws in JS/Browser

## Proxy Implementations (mostly camouflage proxies)

* [hysteria](https://github.com/apernet/hysteria) SOCKS5, HTTP proxy, TCP/UDP forwarding, Linux TProxy and more
* [hysteria2](https://v2.hysteria.network/) censorship resistant proxy, featured!
* [outline](https://getoutline.org/de/) alternative to tor (?)
  + https://github.com/Jigsaw-Code/outline-server
  + https://github.com/Jigsaw-Code/outline-sdk
* [shadowsocks](https://shadowsocks.org/)
  + [server and client implementations](https://shadowsocks.org/doc/getting-started.html)
  + [shadowsocks-rust](https://github.com/shadowsocks/shadowsocks-rust) rust implementation of shadowsocks
  + [go-shadowsocks2](https://github.com/shadowsocks/go-shadowsocks2) go-lang implementation of shadowsocks
* [trojan](https://trojan-gfw.github.io/trojan/overview) old
  + https://github.com/trojan-gfw/trojan C++
  + https://github.com/p4gefau1t/trojan-go go-lang
* [juicity](https://github.com/juicity/juicity) quic/http3 proxy camouflage (successor of tuic)

### straight SOCKS5 implementations

* [fast-socks5](https://github.com/dizda/fast-socks5) rust
* [merino](https://github.com/ajmwagar/merino) rust
* [3proxy](https://github.com/3proxy/3proxy) C-lang
* [spp](https://github.com/esrrhs/spp) socks5 and more, go-lang
* [hev-socks5-tproxy](https://github.com/heiher/hev-socks5-tproxy) socks5, tproxy, transparent proxy in C-lang

## Public Proxy Lists

* https://github.com/TheSpeedX/PROXY-List
* https://github.com/hookzof/socks5_list
* https://github.com/jetkai/proxy-list includes links to scraper and validators

## (Public) Proxy Validation

* [mubeng](https://github.com/kitabisa/mubeng) validator, rotator and implementation in go-lang, featured!
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

## Proxy sellers

* https://proxy6.net/en/

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

