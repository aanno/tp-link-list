# nvidia-container-toolkit

The nvidia container toolkit is used to get CUDA (AI, ANN) support in (docker, podman) containers.

## Remarks and Gotchas

### xorg-x11-drv-nvidia-cuda

xorg-x11-drv-nvidia-cuda among other, contains `nvidia-smi` that could potential be used to
check it CUDA is working inside the container. However:

* Install is huge and contains a lot of stuff completely unneeded
* You first have to install the [RPM Fusion nonfree repo](https://docs.fedoraproject.org/en-US/quick-docs/rpmfusion-setup/)

## Host install

Install the container toolkit, see [Installing the NVIDIA Container Toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html) for details.

See [Podman and the NVIDIA Container Toolkit](https://docs.nvidia.com/ai-enterprise/deployment/rhel-with-kvm/latest/podman.html) for _rootful_ container support.


## Host config

```bash
sudo nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
sudo chmod a+r /etc/cdi/nvidia.yaml
```

### rootless

* Set `no-cgroups = true` in `/etc/nvidia-container-runtime/config.toml`

## Image install/build

## Image start and runtime

### Rootless containers

## Tests

### podman rootful

Single GPU:

```bash
#### Test nvidia-smi with the latest official CUDA image
sudo podman run --rm --device nvidia.com/gpu=all docker.io/nvidia/cuda:12.9.1-base-ubi9 nvidia-smi
Thu Jul 24 12:34:44 2025       
+-----------------------------------------------------------------------------------------+
| NVIDIA-SMI 575.64.03              Driver Version: 575.64.03      CUDA Version: 12.9     |
|-----------------------------------------+------------------------+----------------------+
| GPU  Name                 Persistence-M | Bus-Id          Disp.A | Volatile Uncorr. ECC |
| Fan  Temp   Perf          Pwr:Usage/Cap |           Memory-Usage | GPU-Util  Compute M. |
|                                         |                        |               MIG M. |
|=========================================+========================+======================|
|   0  NVIDIA GeForce RTX 2060        Off |   00000000:01:00.0  On |                  N/A |
| 30%   34C    P8             12W /  160W |    1762MiB /   6144MiB |      0%      Default |
|                                         |                        |                  N/A |
+-----------------------------------------+------------------------+----------------------+
                                                                                         
+-----------------------------------------------------------------------------------------+
| Processes:                                                                              |
|  GPU   GI   CI              PID   Type   Process name                        GPU Memory |
|        ID   ID                                                               Usage      |
|=========================================================================================|
|  No running processes found                                                             |
+-----------------------------------------------------------------------------------------+
```

This has work for rootless podman as well for me (f42).


Multiple GPU:

```bash
#### Test nvidia-smi with the latest official CUDA image on two GPUs
sudo podman run --rm --gpus 2 docker.io/nvidia/cuda:12.9.1-base-ubi9 nvidia-smi
```

Pytorch
```bash
python3 -c "import torch; print('CUDA Available:', torch.cuda.is_available()); print('GPU Count:', torch.cuda.device_count()); print('GPU Name:', torch.cuda.get_device_name(0) if torch.cuda.is_available() else 'None')"
```

Reference:

* https://docs.nvidia.com/ai-enterprise/deployment/rhel-with-kvm/latest/podman.html

### podman rootless

Danger zone. Pretty much impossible.

* https://forums.developer.nvidia.com/t/help-with-rootless-podman-or-rootless-docker-and-nvidia-gpu/205644 of 2022
* https://github.com/Sinop97/Podman---Run-Rootless-GPU-Container of 2020
