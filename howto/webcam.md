# Webcam under Linux

## Basics

```
sudo dnf  install v4l-utils guvcview

$ v4l2-ctl --list-devices
OBS Virtual Camera (platform:v4l2loopback-000):
        /dev/video1

Droidcam (platform:v4l2loopback_dc-000):
        /dev/video0

Microsoft® LifeCam Studio(TM): (usb-0000:00:14.0-9):
        /dev/video2
        /dev/video3
        
$ lsusb
Bus 001 Device 006: ID 045e:0811 Microsoft Corp. Microsoft® LifeCam Studio(TM)
... 


$ v4l2-ctl -d /dev/video2 --list-ctrls
                     brightness 0x00980900 (int)    : min=30 max=255 step=1 default=133 value=133
                       contrast 0x00980901 (int)    : min=0 max=10 step=1 default=5 value=5
                     saturation 0x00980902 (int)    : min=0 max=200 step=1 default=103 value=103
 white_balance_temperature_auto 0x0098090c (bool)   : default=1 value=1
           power_line_frequency 0x00980918 (menu)   : min=0 max=2 default=2 value=2
      white_balance_temperature 0x0098091a (int)    : min=2500 max=10000 step=1 default=4500 value=4500 flags=inactive
                      sharpness 0x0098091b (int)    : min=0 max=50 step=1 default=25 value=25
         backlight_compensation 0x0098091c (int)    : min=0 max=10 step=1 default=0 value=0
                  exposure_auto 0x009a0901 (menu)   : min=0 max=3 default=3 value=3
              exposure_absolute 0x009a0902 (int)    : min=1 max=10000 step=1 default=156 value=156 flags=inactive
                   pan_absolute 0x009a0908 (int)    : min=-529200 max=529200 step=3600 default=0 value=0
                  tilt_absolute 0x009a0909 (int)    : min=-432000 max=432000 step=3600 default=0 value=0
                 focus_absolute 0x009a090a (int)    : min=0 max=40 step=1 default=0 value=15 flags=inactive
                     focus_auto 0x009a090c (bool)   : default=1 value=1
                  zoom_absolute 0x009a090d (int)    : min=0 max=317 step=1 default=0 value=0


```

### Other Apps

* https://webcamoid.github.io/
* https://github.com/webcamoid/webcamoid/wiki/Virtual-camera-support

### Using Loopback

* https://askubuntu.com/questions/1230107/microsoft-lifecam-studio-worked-in-16-04-no-longer-working-in-ubuntu-18-04

### References Basics

* https://linuxundich.de/gnu-linux/microsoft-lifecam-cinema-unter-ubuntu/
* https://wiki.archlinux.org/index.php/webcam_setup

## akvcam kernel module

```
$ sudo insmod /lib/modules/5.11.16-300.fc34.x86_64/extra/akvcam.ko.xz

$ lsmod | grep -E 'v4l|akv|uvc'
akvcam                204800  0
uvcvideo              114688  1
videobuf2_vmalloc      20480  2 uvcvideo,akvcam
videobuf2_v4l2         36864  2 uvcvideo,akvcam
videobuf2_common       65536  3 videobuf2_v4l2,uvcvideo,akvcam
v4l2loopback           45056  0
v4l2loopback_dc        32768  1
videodev              278528  8 videobuf2_v4l2,v4l2loopback_dc,v4l2loopback,uvcvideo,videobuf2_common,akvcam
mc                     65536  5 videodev,snd_usb_audio,videobuf2_v4l2,uvcvideo,videobuf2_common

$ v4l2-ctl --list-devices
akvcam 1/output (platform:akvcam-7):
        /dev/video7

akvcam 2/capture (platform:akvcam-8):
        /dev/video8

OBS Virtual Camera (platform:v4l2loopback-000):
        /dev/video1

Droidcam (platform:v4l2loopback_dc-000):
        /dev/video0

Microsoft® LifeCam Studio(TM): (usb-0000:00:14.0-9):
        /dev/video2
        /dev/video3

```

### References akvcam kernel module

* https://github.com/webcamoid/akvcam
* https://gist.github.com/okapies/550e541535d299717536f103802520a6 (akvcam config)

* https://github.com/umlaeute/v4l2loopback

## Webcam Parameter

from guvcview

### Microsoft Livecam Studia

```
resolution   1920x1080     1280x720     960x544      640x480
fps          30/1          30/1         30/1         30/1
color        RGB3          RGB3         RGB3         RGB3
real fps     15            15           15           15
```

### Oneplus 3t over droidcam

Hint: Resolution is fixed from ``:
```
$ cat /etc/modprobe.d/droidcam.conf 
options v4l2loopback_dc width=1280 height=720
options snd-aloop index=2
```

```
resolution   1280x720
fps          1/1
color        YU12
real fps     30/1
```

## Droidcam


### Droidcam sound

```
pacmd load-module module-alsa-source device=hw:Loopback,1,0
```


```
sudo modprobe snd-aloop
```

## References droidcam

* https://github.com/webcamoid/akvcam/blob/master/share/config_example.ini
* https://gitlab.freedesktop.org/pipewire/pipewire/-/issues/713


## Stream manipulation


### References stream manipulation

* https://www.hacknology.de/projekt/2020/pimpedwebcam/
* https://www.virtual-webcam.com/
* https://github.com/fangfufu/Linux-Fake-Background-Webcam
* https://unix.stackexchange.com/questions/528400/how-can-i-stream-my-desktop-screen-to-dev-video1-as-a-fake-webcam-on-linux

## More References

* 
