# audio and music apps

## gonic

1. https://github.com/sentriz/gonic
   https://github.com/sentriz/gonic/wiki/installation#from-source
2. `sudo dnf install taglib-extras-devel sqlite-devel`
3. `sudo dnf install ffmpeg-devel mpv-devel vlc-devel` (seems to be optional)
4. Before rebuild: `go clean -r -x -cache`
5. `go build --buildmode=pie --linkshared cmd/gonic/gonic.go`
6. Minimal config: `./gonic -music-path music/ -podcast-path podcasts/ -cache-path cache/ -playlists-path playlists/`
7. No config file, use ENV or CLI args.
8. Default login: admin/admin
9. http://localhost:4747
10. Jukeboxmode needs settings, see https://github.com/sentriz/gonic/issues/481

```sh
$ ldd gonic 
        linux-vdso.so.1 (0x00007fa15331a000)
        libresolv.so.2 => /lib64/libresolv.so.2 (0x00007fa153302000)
        libstdc++.so.6 => /lib64/libstdc++.so.6 (0x00007fa151760000)
        libtag.so.1 => /lib64/libtag.so.1 (0x00007fa15165e000)
        libz.so.1 => /lib64/libz.so.1 (0x00007fa15163b000)
        libm.so.6 => /lib64/libm.so.6 (0x00007fa15154d000)
        libgcc_s.so.1 => /lib64/libgcc_s.so.1 (0x00007fa151521000)
        libc.so.6 => /lib64/libc.so.6 (0x00007fa15132f000)
        /lib64/ld-linux-x86-64.so.2 (0x00007fa15331c000)
```

* https://www.adityathebe.com/how-to-clean-go-build-cache/
* https://stackoverflow.com/questions/67201708/go-update-all-modules
* https://go.dev/doc/modules/managing-dependencies

```sh
go get -u
go get -u ./...
go mod tidy
go clean -r -x -cache
```

## navidrome

1. https://github.com/navidrome/navidrome
  https://www.navidrome.org/docs/installation/build-from-source/
2. Add `--buildmode=pie --linkshared` to Makefile where `go build`
3. Remove `--tags=netgo` from Makefile
4. `make setup`
5. `make build`
6. navidrome _needs_ configuration in `/etc/navidrome/navidrome.toml`, see 
   + https://www.navidrome.org/docs/installation/linux/
   + https://www.navidrome.org/docs/usage/configuration-options/
7. http://localhost:4533
8. first user created will be admin user
9. navidrome collects (anonymous) data, see https://www.navidrome.org/docs/getting-started/insights/
10. Jukebox mode needs settings, see https://www.navidrome.org/docs/usage/jukebox/

* Build problems with dsffile.h: https://github.com/navidrome/navidrome/issues/3990

```sh
$ ldd navidrome
        linux-vdso.so.1 (0x00007fa7984ed000)
        libtag.so.1 => /lib64/libtag.so.1 (0x00007fa7983bb000)
        libresolv.so.2 => /lib64/libresolv.so.2 (0x00007fa7983a9000)
        libstdc++.so.6 => /lib64/libstdc++.so.6 (0x00007fa79478a000)
        libm.so.6 => /lib64/libm.so.6 (0x00007fa79469c000)
        libgcc_s.so.1 => /lib64/libgcc_s.so.1 (0x00007fa79837d000)
        libc.so.6 => /lib64/libc.so.6 (0x00007fa7944aa000)
        libz.so.1 => /lib64/libz.so.1 (0x00007fa798358000)
        /lib64/ld-linux-x86-64.so.2 (0x00007fa7984ef000)
```
