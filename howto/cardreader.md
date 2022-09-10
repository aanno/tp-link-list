# Cardreader

* https://de.opensuse.org/HBCI-Kartenleser#SCM
* https://willuhn.de/wiki/doku.php?id=support:list:kartenleser

## SCL010 / SCL011 Contactless Smart Card Reader

* https://support.identiv.com/scl010-scl011/
* https://bugzilla.opensuse.org/show_bug.cgi?id=1189308

```bash
$ lsusb
Bus 001 Device 009: ID 04e6:5292 SCM Microsystems, Inc. SCL011 RFID reader

$ sudo dnf install libusb-devel pcsc-lite-devel pcsc-tools pcsc-lite-acsccid pcsc-lite-asekey pcsc-lite-ccid
$ unzip Linux_Driver_Ver2.09.zip
$ cd Linux Driver Ver2.09/sclgeneric_2.09_linux_64bit
$ sudo ./install.sh 
$ tree -l /usr/lib64/pcsc/drivers/
/usr/lib64/pcsc/drivers/
├── ifd-acsccid.bundle
│   └── Contents
│       ├── Info.plist
│       └── Linux
│           └── libacsccid.so
├── ifd-ASEKey.bundle
│   └── Contents
│       ├── Info.plist
│       └── Linux
│           └── libASEKey.so
├── ifd-ccid.bundle
│   └── Contents
│       ├── Info.plist
│       └── Linux
│           └── libccid.so
├── SCLGENERIC.bundle
│   └── Contents
│       ├── Info.plist
│       └── Linux
│           └── libSCLGENERIC.so.2.09
└── serial
    └── libccidtwin.so
$ sudo systemctl stop pcscd
$ sudo pcscd -adf
# Now plug in reader
00000132 [139667234813504] hotplug_libudev.c:300:get_driver() Looking for a driver for VID: 0x04E6, PID: 0x5292, path: /dev/bus/usb/001/010
```

File `/usr/lib64/pcsc/drivers/SCLGENERIC.bundle/Contents/Info.plist` has to be edited. See separate file.

```bash
$ pcsc_scan 
Using reader plug'n play mechanism
Scanning present readers...
Waiting for the first reader... found one
Scanning present readers...
0: SCM Microsystems, Inc. SCL011 RFID reader [SCL01x Contactless Reader] (21161045208718) 00 00
 
Sat Sep 10 10:56:35 2022
 Reader 0: SCM Microsystems, Inc. SCL011 RFID reader [SCL01x Contactless Reader] (21161045208718) 00 00
  Event number: 0
  Card state: Card inserted, 
  ATR: 3B 81 80 01 80 80

ATR: 3B 81 80 01 80 80
+ TS = 3B --> Direct Convention
+ T0 = 81, Y(1): 1000, K: 1 (historical bytes)
  TD(1) = 80 --> Y(i+1) = 1000, Protocol T = 0 
-----
  TD(2) = 01 --> Y(i+1) = 0000, Protocol T = 1 
-----
+ Historical bytes: 80
  Category indicator byte: 80 (compact TLV data object)
+ TCK = 80 (correct checksum)

Possibly identified card (using /usr/share/pcsc/smartcard_list.txt):
3B 81 80 01 80 80
        RFID - ISO 14443 Type A - NXP DESFire or DESFire EV1 or EV2
        "Reiner LoginCard" (or "OWOK", how they name it) - they have been distributed by a german computer magazine ("Computer BILD")
        https://cardlogin.reiner-sct.com/
        Belgium A-kaart (Antwerp citycard)
        Oyster card - Transport for London (second-gen "D")
        https://en.wikipedia.org/wiki/Oyster_card
        Kaba Legic Advant 4k
        Sydney Opal card public transport ticket (Transport)
        https://www.opal.com.au
        TH Köln (University of Applied Sciences Cologne) - Student Identity Card
        https://www.th-koeln.de/en/academics/multica_5893.php
        German red cross blood donation service
        http://www.blutspende-nordost.de/
        Greater Toronto/Hamilton/Ottawa PRESTO contactless fare card
        http://en.wikipedia.org/wiki/Presto_card
        Electic vehicle charging card of the EMSP EnBW Energie Baden-Württemberg AG, Tarif ADAC e-Charge, Germany
```

Attention: Using the systemctl does _not_ work!

```bash
$ sudo systemctl restart pcscd
$ sudo systemctl enable pcscd
```

## ePA (elektronische Patientenakte)

### hkk app (linux)

TODO: Installation

```bash
# 32-bit trash
$ file .wine/dosdevices/c\:/Program\ Files/ePA/ePA.exe 
.wine/dosdevices/c:/Program Files/ePA/ePA.exe: PE32+ executable (GUI) x86-64, for MS Windows
``` 

Start: 

```bash
$ cd /home/tpasch/.wine/dosdevices/c:/Program Files/ePA
$ wine wineconsole
# in wineconsole
ePA.exe
```

TODO: pcsc for 32-bit wine

## HBCI

* https://willuhn.de/








