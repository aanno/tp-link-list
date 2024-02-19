# Build kf5-kio-s3

dnf install kf5-kio-devel git extra-cmake-modules kf5-kdoctools-devel kf5-ki18n-devel
# kf5-khtml-devel

# https://invent.kde.org/network/kio-s3
git clone https://invent.kde.org/network/kio-s3.git

cd kio-s3
cmake -B build

#### Build https://github.com/aws/aws-sdk-cpp

dnf install zlib-devel crypto-devel libcurl-devel openssl-devel pulseaudio-libs-devel pipewire-pulseaudio pipewire-devel
git clone --recurse-submodules https://github.com/aws/aws-sdk-cpp
cd aws-sdk-cpp/
cmake -B build

# https://github.com/aws/aws-sdk-cpp/blob/main/docs/CMake_Parameters.md
cmake -B build -DCMAKE_INSTALL_PREFIX=/usr -DBUILD_ONLY="s3;dynamodb;cognito-identity"

cd build
make

## https://invent.kde.org/network/kio-zeroconf

dnf install kf5-kdnssd-devel kf5-kdbusaddons-devel


## https://invent.kde.org/network/kio-extras

Build is currently impossibe on master, as:

-- Detecting CXX compile features - done
CMake Error at CMakeLists.txt:13 (find_package):
  Could not find a configuration file for package "ECM" that is compatible
  with requested version "5.246.0".

  The following configuration files were considered but not accepted:

    /usr/share/ECM/cmake/ECMConfig.cmake, version: 5.113.0


git checkout v23.08.4

dnf install qt5-qtsvg-devel kf5-syntax-highlighting-devel kf5-kguiaddons-devel kf5-karchive-devel kf5-libkexiv2-devel

# otherwise, will use /usr/local
cmake -DCMAKE_INSTALL_PREFIX=/usr -B build
cd build
make DESTDIR=/opt/owntone/kio-extra-install install

## https://invent.kde.org/plasma/krdp

dnf install git extra-cmake-modules kf5-kdoctools-devel kf5-ki18n-devel

* Modify version to 5.113.0 in CMakeLists.txt

Still errors:

CMake Error at /usr/lib64/cmake/Qt6Core/Qt6CoreVersionlessTargets.cmake:42 (message):
  Some (but not all) targets in this export set were already defined.

  Targets Defined: Qt::Core

  Targets not yet defined: Qt::CorePrivate

Call Stack (most recent call first):
  /usr/lib64/cmake/Qt6Core/Qt6CoreConfig.cmake:68 (include)
  /usr/lib64/cmake/Qt6/Qt6Config.cmake:166 (find_package)
  CMakeLists.txt:34 (find_package)

## https://github.com/kasmtech/KasmVNC

# needed?
dnf groupinstall "Development Tools" "Development Libraries"

dnf install cmake git g++ zlib-devel gnutls-devel libjpeg-turbo-devel libwebp-devel xorg-x11-server-devel xorg-x11-server-source

git clone https://github.com/kasmtech/KasmVNC.git

Proofed to be very difficult, even the docker build in builder...

## Twiking cmake

### Change installation path

cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr
cmake -DCMAKE_INSTALL_PREFIX=/usr

make DESTDIR=<installhere> install




* https://stackoverflow.com/questions/6003374/what-is-cmake-equivalent-of-configure-prefix-dir-make-all-install
