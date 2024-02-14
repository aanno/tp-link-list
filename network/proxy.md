# Proxy and firewall avoidance

## Tunneling

* [udp-in-tcp](https://github.com/wangyu-/udp2raw-tunnel)
* [tun2socks](https://github.com/xjasonlyu/tun2socks)
* [chisel](https://github.com/jpillora/chisel)

## Proxy Implementations

* [hysteria](https://github.com/apernet/hysteria) SOCKS5, HTTP proxy, TCP/UDP forwarding, Linux TProxy and more
* [hysteria2](https://v2.hysteria.network/) censorship resistant proxy, featured!
* [outline](https://getoutline.org/de/) alternative to tor (?)
  + https://github.com/Jigsaw-Code/outline-server
  + https://github.com/Jigsaw-Code/outline-sdk

### GFW (china) related proxies

* [sing-box](https://sing-box.sagernet.org/manual/proxy/server/)  Shadowsocks, Trojan, TUIC, Hysteria2 
  + [sing-box-subscribe](https://github.com/Toperlock/sing-box-subscribe/blob/main/instructions/README.md) generate `config.json` for sing-box
    - https://github.com/Toperlock/sing-box-subscribe/tree/main/instructions
    - https://sing-box-subscribe.vercel.app/
  + [sing-box-geosite](https://github.com/Toperlock/sing-box-geosite) qx，surge，loon，clash rules for sing-box
  + [sing-box-tls](https://codeberg.org/l0Ye2sE/sing-box-stls) sing-box server install script
* [Hiddify-Manager](https://github.com/hiddify/Hiddify-Manager) all-in-one UI for anti-censorship toolbox, featured!

## self-hosted proxis

### .. as anti-ad proxies

* [pi hole](https://pi-hole.net/) complete blocking solution (http proxy and DNS) for an private subnet, featured!
  + https://discourse.pi-hole.net/about
  + [pi-hole docker image](https://github.com/pi-hole/docker-pi-hole?tab=readme-ov-file)
* [squid blocks adservers](https://blog.cyberfront.org/index.php/2021/12/10/squid-block-adservers/)
  + [used plaintext list](https://pgl.yoyo.org/adservers/#plaintext)
* [blocky](https://0xerr0r.github.io/blocky/) DNS proxy and ad blocker
  + https://github.com/0xERR0R/blocky
* [AdAway](https://adaway.org/) android ad blocker, /etc/hosts based
  + https://github.com/AdAway/AdAway?tab=readme-ov-file

