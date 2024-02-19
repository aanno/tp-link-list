# Kernel ops f39

## rtw_8821cu, nvidia-nvlink

[ 4241.434062] nvidia-nvlink: Nvlink Core is being initialized, major device number 510
[ 4241.434068] NVRM: The NVIDIA probe routine was not called for 1 device(s).
[ 4241.435063] NVRM: This can occur when a driver such as:
               NVRM: nouveau, rivafb, nvidiafb or rivatv
               NVRM: was loaded and obtained ownership of the NVIDIA device(s).
[ 4241.435065] NVRM: Try unloading the conflicting kernel module (and/or
               NVRM: reconfigure your kernel without the conflicting
               NVRM: driver(s)), then try loading the NVIDIA kernel module
               NVRM: again.
[ 4241.435066] NVRM: No NVIDIA devices probed.
[ 4241.435465] nvidia-nvlink: Unregistered Nvlink Core, major device number 510
[ 5413.400032] nvidia-nvlink: Nvlink Core is being initialized, major device number 510
[ 5413.400038] NVRM: The NVIDIA probe routine was not called for 1 device(s).
[ 5413.401068] NVRM: This can occur when a driver such as:
               NVRM: nouveau, rivafb, nvidiafb or rivatv
               NVRM: was loaded and obtained ownership of the NVIDIA device(s).
[ 5413.401070] NVRM: Try unloading the conflicting kernel module (and/or
               NVRM: reconfigure your kernel without the conflicting
               NVRM: driver(s)), then try loading the NVIDIA kernel module
               NVRM: again.
[ 5413.401071] NVRM: No NVIDIA devices probed.
[ 5413.401434] nvidia-nvlink: Unregistered Nvlink Core, major device number 510
[ 7208.511382] nvidia-nvlink: Nvlink Core is being initialized, major device number 510
[ 7208.511394] NVRM: The NVIDIA probe routine was not called for 1 device(s).
[ 7208.512354] NVRM: This can occur when a driver such as:
               NVRM: nouveau, rivafb, nvidiafb or rivatv
               NVRM: was loaded and obtained ownership of the NVIDIA device(s).
[ 7208.512356] NVRM: Try unloading the conflicting kernel module (and/or
               NVRM: reconfigure your kernel without the conflicting
               NVRM: driver(s)), then try loading the NVIDIA kernel module
               NVRM: again.
[ 7208.512357] NVRM: No NVIDIA devices probed.
[ 7208.512481] nvidia-nvlink: Unregistered Nvlink Core, major device number 510
[ 7769.726026] nvidia-nvlink: Nvlink Core is being initialized, major device number 510
[ 7769.726032] NVRM: The NVIDIA probe routine was not called for 1 device(s).
[ 7769.727054] NVRM: This can occur when a driver such as:
               NVRM: nouveau, rivafb, nvidiafb or rivatv
               NVRM: was loaded and obtained ownership of the NVIDIA device(s).
[ 7769.727055] NVRM: Try unloading the conflicting kernel module (and/or
               NVRM: reconfigure your kernel without the conflicting
               NVRM: driver(s)), then try loading the NVIDIA kernel module
               NVRM: again.
[ 7769.727056] NVRM: No NVIDIA devices probed.
[ 7769.727411] nvidia-nvlink: Unregistered Nvlink Core, major device number 510
[ 7919.827362] rtw_8821cu 1-8.4:1.2: read register 0x5 failed with -110
[ 7920.851348] rtw_8821cu 1-8.4:1.2: read register 0x20 failed with -110
[ 7951.251143] rtw_8821cu 1-8.4:1.2: write register 0x20 failed with -110
[ 7952.276175] rtw_8821cu 1-8.4:1.2: read register 0x7c failed with -110
[ 7982.482924] rtw_8821cu 1-8.4:1.2: write register 0x7c failed with -110
[ 7983.506874] rtw_8821cu 1-8.4:1.2: read register 0x1080 failed with -110
[ 8013.714632] rtw_8821cu 1-8.4:1.2: write register 0x1080 failed with -110
[ 8044.946355] rtw_8821cu 1-8.4:1.2: write register 0x3 failed with -110


### journalctl

Dez 27 20:41:08 blacksnapper NetworkManager[2320]: <info>  [1703706068.6183] device (wlp0s20f0u8u4i2): set-hw-addr: set MAC address to 0E:F9:F1:CA:80:B6 (scanning)
Dez 27 20:41:09 blacksnapper kernel: rtw_8821cu 1-8.4:1.2: read register 0x5 failed with -110
Dez 27 20:41:10 blacksnapper kernel: rtw_8821cu 1-8.4:1.2: read register 0x20 failed with -110
Dez 27 20:41:41 blacksnapper kernel: rtw_8821cu 1-8.4:1.2: write register 0x20 failed with -110
Dez 27 20:41:42 blacksnapper kernel: rtw_8821cu 1-8.4:1.2: read register 0x7c failed with -110
Dez 27 20:41:56 blacksnapper plasmashell[17590]: [34:39:1227/204156.944555:ERROR:url_request.cc(604)] Block URL in URLRequest: https://chrome.9oo91e.qjz9zk/webstore?hl>
Dez 27 20:41:56 blacksnapper plasmashell[17590]: [34:39:1227/204156.944756:ERROR:trk_protocol_handler.cc(17)] Blocked URL in TrkProtocolHandler: trk:https://chrome.9oo>
Dez 27 20:41:56 blacksnapper plasmashell[17792]: Fontconfig error: Cannot load default config file: No such file: (null)
Dez 27 20:42:12 blacksnapper kernel: rtw_8821cu 1-8.4:1.2: write register 0x7c failed with -110
Dez 27 20:42:13 blacksnapper kernel: rtw_8821cu 1-8.4:1.2: read register 0x1080 failed with -110
Dez 27 20:42:17 blacksnapper pipewire[3194]: mod.client-node: 0x558ff893eed0: unknown peer 0x558ff89933e0 fd:43
Dez 27 20:42:17 blacksnapper pipewire[3194]: mod.client-node: 0x558ff893eed0: unknown peer 0x558ff89933e0 fd:43
Dez 27 20:42:43 blacksnapper kernel: rtw_8821cu 1-8.4:1.2: write register 0x1080 failed with -110
Dez 27 20:42:51 blacksnapper plasmashell[17586]: Warning: vkCreateInstance: Found no drivers!
Dez 27 20:42:51 blacksnapper plasmashell[17586]: Warning: vkCreateInstance failed with VK_ERROR_INCOMPATIBLE_DRIVER
Dez 27 20:42:51 blacksnapper plasmashell[17586]:     at CheckVkSuccessImpl (../../third_party/dawn/src/dawn/native/vulkan/VulkanError.cpp:101)
Dez 27 20:42:51 blacksnapper plasmashell[17586]:     at CreateVkInstance (../../third_party/dawn/src/dawn/native/vulkan/BackendVk.cpp:493)
Dez 27 20:42:51 blacksnapper plasmashell[17586]:     at Initialize (../../third_party/dawn/src/dawn/native/vulkan/BackendVk.cpp:379)
Dez 27 20:42:51 blacksnapper plasmashell[17586]:     at Create (../../third_party/dawn/src/dawn/native/vulkan/BackendVk.cpp:301)
Dez 27 20:42:51 blacksnapper plasmashell[17586]:     at operator() (../../third_party/dawn/src/dawn/native/vulkan/BackendVk.cpp:556)
Dez 27 20:43:14 blacksnapper kernel: rtw_8821cu 1-8.4:1.2: write register 0x3 failed with -110
Dez 27 20:43:40 blacksnapper kwin_wayland[3192]: kwin_libinput: Libinput: client bug: timer event4 debounce: scheduled expiry is in the past (-35ms), your system is to>
Dez 27 20:45:25 blacksnapper kwin_wayland[3192]: kwin_core: XCB error: 3 (BadWindow), sequence: 20636, resource id: 39846040, major code: 129 (SHAPE), minor code: 6 (I>
Dez 27 20:45:25 blacksnapper kwin_wayland[3192]: kwin_core: XCB error: 3 (BadWindow), sequence: 20638, resource id: 39846043, major code: 129 (SHAPE), minor code: 6 (I>
Dez 27 20:45:25 blacksnapper kwin_wayland[3192]: kwin_core: XCB error: 3 (BadWindow), sequence: 20640, resource id: 39846046, major code: 129 (SHAPE), minor code: 6 (I>
Dez 27 20:46:19 blacksnapper pipewire[3194]: mod.client-node: 0x558ff893eed0: unknown peer 0x558ff89933e0 fd:43
Dez 27 20:46:20 blacksnapper pipewire[3194]: mod.client-node: 0x558ff893eed0: unknown peer 0x558ff89933e0 fd:43
Dez 27 20:46:20 blacksnapper pipewire[3194]: mod.client-node: 0x558ff89c5690: unknown peer 0x558ff8b1f9f0 fd:53
Dez 27 20:46:20 blacksnapper pipewire[3194]: mod.client-node: 0x558ff89c5690: unknown peer 0x558ff8b1f9f0 fd:53

## nvidia from rpmfusion

[  107.545148] NVRM: API mismatch: the client has the version 545.29.06, but
               NVRM: this kernel module has the version 545.23.08.  Please
               NVRM: make sure that this kernel module and all NVIDIA driver
               NVRM: components have the same version.

## ## rtw_8821cu (alone, in conjunction with firebird freeze)

[  541.313009] usb 1-3.5.3: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[  541.313017] usb 1-3.5.3: Product: wired keyboard
[  541.313022] usb 1-3.5.3: Manufacturer:
[  541.329871] input:   wired keyboard as /devices/pci0000:00/0000:00:14.0/usb1/1-3/1-3.5/1-3.5.3/1-3.5.3:1.0/0003:046A:0180.000B/input/input28
[  541.382761] hid-generic 0003:046A:0180.000B: input,hidraw2: USB HID v1.11 Keyboard [  wired keyboard] on usb-0000:00:14.0-3.5.3/input0
[  541.390254] input:   wired keyboard Consumer Control as /devices/pci0000:00/0000:00:14.0/usb1/1-3/1-3.5/1-3.5.3/1-3.5.3:1.1/0003:046A:0180.000C/input/input29
[  541.442194] input:   wired keyboard System Control as /devices/pci0000:00/0000:00:14.0/usb1/1-3/1-3.5/1-3.5.3/1-3.5.3:1.1/0003:046A:0180.000C/input/input30
[  541.442453] hid-generic 0003:046A:0180.000C: input,hidraw3: USB HID v1.11 Device [  wired keyboard] on usb-0000:00:14.0-3.5.3/input1
[ 2099.683984] rtw_8821cu 1-8.4:1.2: read register 0x5 failed with -110
[ 2100.708594] rtw_8821cu 1-8.4:1.2: read register 0x20 failed with -110
[ 2131.171288] rtw_8821cu 1-8.4:1.2: write register 0x20 failed with -110
[ 2132.195259] rtw_8821cu 1-8.4:1.2: read register 0x7c failed with -110
[ 2162.403202] rtw_8821cu 1-8.4:1.2: write register 0x7c failed with -110
[ 2163.427273] rtw_8821cu 1-8.4:1.2: read register 0x1080 failed with -110
[ 2193.634702] rtw_8821cu 1-8.4:1.2: write register 0x1080 failed with -110
[ 2224.866831] rtw_8821cu 1-8.4:1.2: write register 0x3 failed with -110




