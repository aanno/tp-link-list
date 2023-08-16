# Nvidia driver works with X11, but wayland resolution is only

## edid problem

Edit on `/sys` is empty:
```bash
$ cat /sys/class/drm/card0-Unknown-1/edid | edid-decode 
EDID of 'stdin' was empty.
```
 But `xrandr` has edid info
```bash
$ xrandr --props | edid-decode 
edid-decode (hex):

00 ff ff ff ff ff ff 00 1e 6d 07 77 2d a5 02 00
05 1d 01 04 b5 3c 22 78 9e 3e 31 ae 50 47 ac 27
0c 50 54 21 08 00 71 40 81 80 81 c0 a9 c0 d1 c0
81 00 01 01 01 01 4d d0 00 a0 f0 70 3e 80 30 20
65 0c 58 54 21 00 00 1a 28 68 00 a0 f0 70 3e 80
08 90 65 0c 58 54 21 00 00 1a 00 00 00 fd 00 38
3d 1e 87 38 00 0a 20 20 20 20 20 20 00 00 00 fc
00 4c 47 20 48 44 52 20 34 4b 0a 20 20 20 01 96

02 03 19 71 44 90 04 03 01 23 09 07 07 83 01 00
00 e3 05 c0 00 e3 06 05 01 02 3a 80 18 71 38 2d
40 58 2c 45 00 58 54 21 00 00 1e 56 5e 00 a0 a0
a0 29 50 30 20 35 00 58 54 21 00 00 1a 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 29

----------------

Block 0, Base EDID:
  EDID Structure Version & Revision: 1.4
  Vendor & Product Identification:
    Manufacturer: GSM
    Model: 30471
    Serial Number: 173357
    Made in: week 5 of 2019
  Basic Display Parameters & Features:
    Digital display
    Bits per primary color channel: 10
    DisplayPort interface
    Maximum image size: 60 cm x 34 cm
    Gamma: 2.20
    DPMS levels: Standby
    Supported color formats: RGB 4:4:4, YCrCb 4:4:4, YCrCb 4:2:2
    Default (sRGB) color space is primary color space
    First detailed timing includes the native pixel format and preferred refresh rate
  Color Characteristics:
    Red  : 0.6796, 0.3154
    Green: 0.2802, 0.6738
    Blue : 0.1523, 0.0498
    White: 0.3125, 0.3291
  Established Timings I & II:
    DMT 0x04:   640x480    59.940476 Hz   4:3     31.469 kHz     25.175000 MHz
    DMT 0x09:   800x600    60.316541 Hz   4:3     37.879 kHz     40.000000 MHz
    DMT 0x10:  1024x768    60.003840 Hz   4:3     48.363 kHz     65.000000 MHz
  Standard Timings:
    GTF     :  1152x864    60.000000 Hz   4:3     53.700 kHz     81.624000 MHz
    DMT 0x23:  1280x1024   60.019740 Hz   5:4     63.981 kHz    108.000000 MHz
    DMT 0x55:  1280x720    60.000000 Hz  16:9     45.000 kHz     74.250000 MHz
    DMT 0x53:  1600x900    60.000000 Hz  16:9     60.000 kHz    108.000000 MHz (RB)
    DMT 0x52:  1920x1080   60.000000 Hz  16:9     67.500 kHz    148.500000 MHz
    DMT 0x1c:  1280x800    59.810326 Hz  16:10    49.702 kHz     83.500000 MHz
  Detailed Timing Descriptors:
    DTD 1:  3840x2160   59.996625 Hz  16:9    133.312 kHz    533.250000 MHz (600 mm x 340 mm)
                 Hfront   48 Hsync  32 Hback   80 Hpol P
                 Vfront   54 Vsync   5 Vback    3 Vpol N
    DTD 2:  3840x2160   30.000000 Hz  16:9     66.660 kHz    266.640000 MHz (600 mm x 340 mm)
                 Hfront    8 Hsync 144 Hback    8 Hpol P
                 Vfront   54 Vsync   5 Vback    3 Vpol N
    Display Range Limits:
      Monitor ranges (GTF): 56-61 Hz V, 30-135 kHz H, max dotclock 560 MHz
    Display Product Name: 'LG HDR 4K'
  Extension blocks: 1
Checksum: 0x96

----------------

Block 1, CTA-861 Extension Block:
  Revision: 3
  Basic audio support
  Supports YCbCr 4:4:4
  Supports YCbCr 4:2:2
  Native detailed modes: 1
  Video Data Block:
    VIC  16:  1920x1080   60.000000 Hz  16:9     67.500 kHz    148.500000 MHz (native)
    VIC   4:  1280x720    60.000000 Hz  16:9     45.000 kHz     74.250000 MHz
    VIC   3:   720x480    59.940060 Hz  16:9     31.469 kHz     27.000000 MHz
    VIC   1:   640x480    59.940476 Hz   4:3     31.469 kHz     25.175000 MHz
  Audio Data Block:
    Linear PCM:
      Max channels: 2
      Supported sample rates (kHz): 48 44.1 32
      Supported sample sizes (bits): 24 20 16
  Speaker Allocation Data Block:
    FL/FR - Front Left/Right
  Colorimetry Data Block:
    BT2020YCC
    BT2020RGB
  HDR Static Metadata Data Block:
    Electro optical transfer functions:
      Traditional gamma - SDR luminance range
      SMPTE ST2084
    Supported static metadata descriptors:
      Static metadata type 1
  Detailed Timing Descriptors:
    DTD 3:  1920x1080   60.000000 Hz  16:9     67.500 kHz    148.500000 MHz (600 mm x 340 mm)
                 Hfront   88 Hsync  44 Hback  148 Hpol P
                 Vfront    4 Vsync   5 Vback   36 Vpol P
    DTD 4:  2560x1440   59.950550 Hz  16:9     88.787 kHz    241.500000 MHz (600 mm x 340 mm)
                 Hfront   48 Hsync  32 Hback   80 Hpol P
                 Vfront    3 Vsync   5 Vback   33 Vpol N
Checksum: 0x29  Unused space in Extension Block: 66 bytes
```

Monitor controls are found as well:
```bash
$ ddccontrol -p
ddccontrol version 0.5.1
Copyright 2004-2005 Oleg I. Vdovikin (oleg@cs.msu.su)
Copyright 2004-2006 Nicolas Boichat (nicolas@boichat.ch)
This program comes with ABSOLUTELY NO WARRANTY.
You may redistribute copies of this program under the terms of the GNU General Public License.

Detected monitors :
 - Device: dev:/dev/i2c-3
   DDC/CI supported: Yes
   Monitor Name: LG GSM770 Display Port
   Input type: Digital
  (Automatically selected)
Reading EDID and initializing DDC/CI at bus dev:/dev/i2c-3...

EDID readings:
        Plug and Play ID: GSM7707 [LG GSM770 Display Port]
        Input type: Analog

= LG GSM770 Display Port
> Color settings
        > Brightness and Contrast
                > id=brightness, name=Brightness, address=0x10, delay=-1ms, type=0
                  supported, value=21, maximum=100
                > id=contrast, name=Contrast, address=0x12, delay=-1ms, type=0
                  supported, value=50, maximum=100
                > id=sharpness, name=Sharpness, address=0x87, delay=-1ms, type=0
                  supported, value=50, maximum=100
        > LG Picture
                > id=lgmode, name=Picture Mode, address=0x15, delay=-1ms, type=2
                  Possible values:
                        > id=reader - name=Reader, value=1
                        > id=custom - name=Custom, value=11
                        > id=srgb - name=sRGB, value=15
                        > id=fps - name=FPS, value=30
                        > id=rts - name=RTS, value=31
                        > id=hdreffect - name=HDR Effect, value=39
                        > id=cinema - name=Cinema, value=48
                        > id=vivid - name=Vivid, value=49
                        > id=dcip3 - name=DCI-P3, value=25
                        > id=ebu - name=EBU, value=22
                        > id=rec709 - name=REC709, value=23
                  supported, value=11, maximum=255
        > Gamma
                > id=gammamode, name=Gamma, address=0xfe, delay=-1ms, type=2
                  Possible values:
                        > id=mode1 - name=Mode 1, value=2
                        > id=mode2 - name=Mode 2, value=3
                        > id=mode3 - name=Mode 3, value=4
                        > id=mode4 - name=Mode 4, value=16
                  supported, value=3, maximum=255
        > Color maximum level
                > id=red, name=Red maximum level, address=0x16, delay=-1ms, type=0
                  supported, value=62, maximum=100
                > id=green, name=Green maximum level, address=0x18, delay=-1ms, type=0
                  supported, value=50, maximum=100
                > id=blue, name=Blue maximum level, address=0x1a, delay=-1ms, type=0
                  supported, value=45, maximum=100
        > Various color settings
                > id=colorpreset, name=Color Preset, address=0x14, delay=-1ms, type=2
                  Possible values:
                        > id=6500k - name=6500K, value=5
                        > id=9300k - name=9300K, value=8
                        > id=user - name=User, value=11
                  supported, value=11, maximum=11
> Position and size
        > Automatic adjustments
                > id=ratio, name=Aspect Ratio, address=0xf5, delay=-1ms, type=2
                  Possible values:
                        > id=1to1 - name=1:1, value=0
                        > id=wide - name=Full Wide, value=1
                        > id=original - name=Original, value=2
                  supported, value=1, maximum=255
> Others
        > Restore defaults
                > id=defaults, name=Restore Factory Defaults, address=0x4, delay=2000ms, type=1
                  Possible values:
                        > id=default - name=Restore Factory Defaults, value=1
                  supported, value=0, maximum=255
                > id=defaultluma, name=Restore Brightness and Contrast, address=0x5, delay=2000ms, type=1
                  Possible values:
                        > id=default - name=Restore Brightness and Contrast, value=1
                  supported, value=0, maximum=1
                > id=defaultcolor, name=Restore Factory Default Color, address=0x8, delay=2000ms, type=1
                  Possible values:
                        > id=default - name=Restore Factory Default Color, value=1
                  supported, value=0, maximum=255
        > Audio
                > id=audiospeakervolume, name=Audio Speaker Volume Adjust, address=0x62, delay=-1ms, type=0
                  supported, value=30, maximum=100
                > id=audiospeakermute, name=Audio Speaker Mute, address=0x8d, delay=-1ms, type=2
                  Possible values:
                        > id=mute - name=Mute, value=1
                        > id=unmute - name=Unmute, value=2
                  supported, value=2, maximum=100
        > OSD
                > id=language, name=Language, address=0xcc, delay=-1ms, type=2
                  Possible values:
                        > id=english - name=English, value=0
                        > id=french - name=Français (French), value=2
                        > id=finnish - name=Suomi (Finnish), value=6
                        > id=german - name=Deutsch (German), value=1
                        > id=italian - name=Italiano (Italian), value=4
                        > id=korean - name=한국어 (Korean), value=16
                        > id=spanish - name=Castellano (Spanish), value=3
                        > id=russian - name=Русский (Russian), value=10
                        > id=swedish - name=Svenska (Swedish), value=5
                        > id=chinese_tw - name=繁體中文 (Traditional Chinese), value=14
                        > id=chinese - name=简体中文 (Simplified Chinese), value=13
                        > id=japanese - name=日本語 (Japanese), value=15
                        > id=polish - name=Polski (Polish), value=9
                        > id=czech - name=Český (Czech), value=11
                        > id=portuguese - name=Português (Portuguese), value=7
                        > id=finnish - name=Suomalainen (Finnish), value=6
                        > id=brazilian - name=Português do Brasil (Brazilian Portuguese), value=8
                        > id=ukrainian - name=українська (Ukrainian), value=12
                  supported, value=0, maximum=255
                > id=osdlock, name=OSD Lock, address=0xeb, delay=-1ms, type=2
                  Possible values:
                        > id=off - name=Off, value=0
                        > id=on - name=On, value=1
                  supported, value=0, maximum=1
        > Power control
                > id=power, name=Power control, address=0xd6, delay=-1ms, type=2
                  Possible values:
                        > id=off - name=Off, value=5
                        > id=on - name=On, value=1
                  supported, value=1, maximum=5
                > id=energysaving, name=Smart Energy Saving, address=0xf6, delay=-1ms, type=2
                  Possible values:
                        > id=off - name=Off, value=0
                        > id=low - name=Low, value=1
                        > id=high - name=High, value=2
                  supported, value=2, maximum=255
        > Game Adjust
                > id=freesync, name=FreeSync, address=0xf8, delay=-1ms, type=2
                  Possible values:
                        > id=off - name=Off, value=0
                        > id=base - name=Base, value=2
                        > id=extended - name=Extended, value=3
                  supported, value=0, maximum=255
                > id=responsetime, name=Response Time, address=0xf7, delay=-1ms, type=2
                  Possible values:
                        > id=off - name=Off, value=0
                        > id=high - name=High, value=1
                        > id=middle - name=Middle, value=2
                        > id=low - name=Low, value=3
                  supported, value=2, maximum=255
```

```bash
```

### Non-working solutions from internet

* https://davejansen.com/add-custom-resolution-and-refresh-rate-when-using-wayland-gnome/ <br/>
   Idea: Add something like `video=HDMI-A-1:1280x1024@85` to grub<br/>
   Problem: `dmesg` complains that mode is not supported: 
   + [    1.163006] simple-framebuffer simple-framebuffer.0: [drm] User-defined mode not supported: "3840x2160": 60 712254 3840 4152 4576 5312 2160 2161 2164 2235 0x20 0x6
* https://www.baeldung.com/linux/primary-monitor-x-wayland <br/>
   Problem: Not a solution, focus on primary monitor only
* https://forums.developer.nvidia.com/t/bug-report-for-fedora-37-with-wayland-rtx-2060-rev-1-x11-works-but-wayland-only-provides-1024x768-resolution/249329 <br/>
   My problem report on nvidia forum
* https://blogs.nologin.es/rickyepoderi/index.php?/archives/149-Custom-mode-lines-in-Wayland.html <br/>
    Idea: Generate your own edid and force kernel to use it


## wayland plasma cannot be choosen with gdm

* Adjust `/usr/lib/udev/rules.d/61-gdm.rules`
