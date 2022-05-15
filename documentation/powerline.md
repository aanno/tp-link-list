# Powerline

* https://github.com/qca/open-plc-utils

## TP-LINK 1200Mbps

* https://www.tp-link.com/de/support/download/tl-pa8030p-kit/v1/#Firmware
* https://fitzcarraldoblog.wordpress.com/2020/07/22/updating-the-powerline-adapters-in-my-home-network/

### TL-PA8030p V1 

* https://community.tp-link.com/us/home/forum/topic/204238?replyId=542774


```bash
$ sudo ./plc/plcstat -t -i br0
[sudo] Passwort für tpasch: 
 P/L NET TEI ------ MAC ------ ------ BDA ------  TX  RX CHIPSET FIRMWARE
 LOC STA 000 A4:2B:B0:D5:70:23 76:18:16:97:7E:94 n/a n/a QCA7500 MAC-QCA7500-2.0.0.375-03-20141016-CS
```

```bash
$ sudo ./plc/plctool -i br0 -P ./tl-pa8030p/QCA7500-WallAdapter_CE-ClassB_8030P_160328_914.pib -N tl-pa8030p/MAC-7500-v2.0.0-05-X-CS.nvm -R A4:2B:B0:D5:70:23
...
br0 A4:2B:B0:D5:70:23 Close Session
br0 A4:2B:B0:D5:70:23 Reset Device
br0 A4:2B:B0:D5:70:23 Resetting ...
```

```bash
```

```bash
```

```bash
```
