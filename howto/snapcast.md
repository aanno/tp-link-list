# Howto Snapcast

Look for right alsa device output

```bash
pw-cli list-objects | grep node.name
```

Create fifo and pipe audio output to it.

```bash
sudo modprobe snd-aloop
mkfifo /tmp/audio.pcm
pw-record -P stream.capture.sink=true --target alsa_output.platform-snd_aloop.0.analog-stereo - >/tmp/audio.pcm
```

## snapserver

`/etc/snapserver.conf`

```ini
source = pipe:///tmp/snapfifo?name=default
source = pipe:///tmp/audio.pcm?name=vsnd
source = tcp://127.0.0.1:1703?name=tcpserver&mode=server
source = meta://default/vsnd/tcpserver?name=meta
```

```bash
snapserver
```

### snapserver plugins

* [snapserver stream plugins](https://github.com/badaix/snapcast/blob/develop/doc/json_rpc_api/stream_plugin.md)
* https://github.com/badaix/snapcast/tree/develop/server/etc/plug-ins
  contains meta_librespot-java.py, meta_mopidy.py, meta_mpd.py, plex_bridge.py
* [volimio server plugin](https://github.com/Saiyato/volumio-snapserver-plugin)
  + [volumio client plugin](https://github.com/Saiyato/volumio-snapclient-plugin)

## snapclient

```bash
snapclient --player pulse -i <instance#>
```

<instance#> defaults to 1. Can be set to 2, 3, 4, etc. to run multiple instances.

## snapweb

Use the following URL to control the output.

* http://localhost:1780/

## Links

* https://ritiek.github.io/2023/06/11/capturing-and-piping-audio-output-from-a-process-in-linux/
