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

## snapclient

```bash
snapclient --player pulse
```

## snapweb

Use the following URL to control the output.

* http://localhost:1780/

## Links

* https://ritiek.github.io/2023/06/11/capturing-and-piping-audio-output-from-a-process-in-linux/
