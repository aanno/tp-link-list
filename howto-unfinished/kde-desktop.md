# KDE Plasma Desktop

## akonadi

* Search engine behind https://community.kde.org/KDE_PIM
* Config file: `/home/USER/.config/akonadi/akonadiserverrc`

* https://wiki.ubuntuusers.de/Akonadi/ featured!
* [akonadi mysql bug work around](https://gist.github.com/aldolat/e8066baf8a390e5d5f5ed6e0849ec78c)
* https://userbase.kde.org/Akonadi/de
* https://techbase.kde.org/KDE_PIM/Akonadi

#### kio (io framework)

* [kio source](https://invent.kde.org/network?filter=kio)
* [kio-extra](https://invent.kde.org/network/kio-extras) included with fedora
* [kio-zeroconf](https://invent.kde.org/network/kio-zeroconf) included with fedora (other name)
* [kio-s3](https://invent.kde.org/network/kio-s3) beta, must be compiled on your own
  + [credentials setup](https://docs.aws.amazon.com/sdkref/latest/guide/file-format.html)
  + [aws-sdk-cpp](https://github.com/aws/aws-sdk-cpp) must be compiled on your own
    - [build parameters](https://github.com/aws/aws-sdk-cpp/blob/main/docs/CMake_Parameters.md)

kio-s3 currently only supports AWS S3, as no endpoint URL could be given, see
https://bugs.kde.org/show_bug.cgi?id=480942

#### Development

* [kdesrc-build](https://community.kde.org/Get_Involved/development/Build_software_with_kdesrc-build) build helper for plasma/kde
  + [kdesrc-build](https://invent.kde.org/sdk/kdesrc-build) source code
* https://community.kde.org/Get_Involved/development
* [kxmlgui](https://develop.kde.org/docs/getting-started/kxmlgui/hello_world/)

## QT

### Language bindings

* [PySide6](https://pypi.org/project/PySide6/) python to QT6
  + [PySide Docs](https://doc.qt.io/qtforpython-6/)
* [qtah](https://gitlab.com/khumba/qtah) haskell bindings
* [QtJambi](https://github.com/OmixVisualization/qtjambi) Java Bindings for Qt

