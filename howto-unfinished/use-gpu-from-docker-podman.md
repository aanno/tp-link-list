$ podman run --gpus all -it --rm tensorflow/tensorflow:latest-gpu   python -c "import tensorflow as tf; print(tf.reduce_sum(tf.random.normal([1000, 1000])))"
Error: OCI runtime error: crun: error executing hook `/usr/bin/nvidia-container-runtime-hook` (exit code: 1)

Running as root:
nvidia-smi -i 0 -pm ENABLED
does not help

Similiar bugs:

* https://github.com/containers/podman/issues/16094
* https://github.com/containers/podman/discussions/16101


References:

* https://hub.docker.com/r/tensorflow/tensorflow/tags?page=1&name=gpu (docker images)
* https://gist.github.com/bernardomig/315534407585d5912f5616c35c7fe374 
   setup of nvidia-container-runtime
   (config files are not needed any more)
* https://discussion.fedoraproject.org/t/how-to-run-tensorflow-gpu-in-podman/74060/7
   no-cgroups = true
   
* https://github.com/xuan-wei/nvidia-pytorch-tensorflow-conda-jupyter-ssh
* https://github.com/jupyter/docker-stacks


## Other CLI

docker run --gpus all -it --rm tensorflow/tensorflow:latest-gpu \ python -c "import tensorflow as tf; print(tf.reduce_sum(tf.random.normal([1000, 1000])))"

podman run -it --rm --security-opt=label=disable nvidia/cuda:12.1.1-base-ubi8 nvidia-smi

podman run -it  -e NVIDIA_VISIBLE_DEVICES=0 centos:8 nvidia-smi

* https://github.com/containers/podman/issues/10420
* https://discussion.fedoraproject.org/t/how-to-run-tensorflow-gpu-in-podman/74060/9

## Solution

* set no-cgroups=true
* podman run --security-opt=label=disable --gpus all -it --rm tensorflow/tensorflow:latest-gpu python3 -c "import tensorflow as tf; print(tf.reduce_sum(tf.random.normal([1000, 1000])))"
* podman run --security-opt=label=disable --gpus all -it --rm tensorflow/tensorflow:latest-gpu \ python -c "import tensorflow as tf; print(tf.reduce_sum(tf.random.normal([1000, 1000])))"

## Solution for fcos-gpu

see also 
* https://docs.nvidia.com/datacenter/cloud-native/driver-containers/overview.html
* https://gitlab.com/container-toolkit-fcos/container-runtime
* https://container-toolkit-fcos.gitlab.io/container-runtime/

sudo podman run --security-opt=label=disable --gpus all -it  --name nvidia-driver -d --privileged --pid=host   -v /run/nvidia:/run/nvidia:shared,z   -v /var/log:/var/log   --restart=unless-stopped   nvidia/driver:450.80.02-ubuntu18.04
Error: OCI runtime error: crun: error executing hook `/usr/bin/nvidia-container-toolkit` (exit code: 1)

podman run -it --rm --security-opt=label=disable nvidia/cuda:12.1.1-base-ubi8 nvidia-smi
Error: OCI runtime error: crun: error executing hook `/usr/bin/nvidia-container-toolkit` (exit code: 1)


----

sudo docker run --name nvidia-driver -d --privileged --pid=host \
  -v /run/nvidia:/run/nvidia:shared \
  -v /var/log:/var/log \
  --restart=unless-stopped \
  nvidia/driver:450.80.02-ubuntu18.04
  
530.30.02
460.73.01-ubuntu20.04

# https://catalog.ngc.nvidia.com/orgs/nvidia/containers/driver/tags
sudo docker run --name nvidia-driver -d --privileged --pid=host \
  -v /run/nvidia:/run/nvidia:shared \
  -v /var/log:/var/log \
  --restart=unless-stopped \
  nvcr.io/nvidia/driver:525-5.15.0-69-generic-ubuntu22.04
  
sudo docker run --gpus all nvidia/cuda:12.1.1-base-ubi8 nvidia-smi
docker: Error response from daemon: failed to create shim task: OCI runtime create failed: runc create failed: unable to start container process: error during container init: error running hook #0: error running hook: exit status 1, stdout: , stderr: Auto-detected mode as 'legacy'
nvidia-container-cli: initialization error: load library failed: libnvidia-ml.so.1: cannot open shared object file: no such file or directory: unknown.
ERRO[0011] error waiting for container: context canceled 

perhaps missing: (see https://github.com/NVIDIA/libnvidia-container/issues/135)
nvidia-container-toolkit 
libnvidia-container-tools
nvidia-docker????


It seems that there are no up-to-date driver images - you have to build that on your own.
https://gitlab.com/nvidia/container-images/driver 

Or use the official repo at
https://catalog.ngc.nvidia.com/orgs/nvidia/containers/driver/tags
https://github.com/NVIDIA/nvidia-docker/wiki/

## New try

for driver versions, see https://catalog.ngc.nvidia.com/orgs/nvidia/containers/driver/tags
fcos driver: https://gitlab.com/container-toolkit-fcos/driver/-/tree/fedora/coreos

cd tmp
mkdir nvidia log
podman run --name nvidia-driver -d --privileged --pid=host   -v ./nvidia:/run/nvidia:shared   -v ./log:/var/log   --restart=unless-stopped   nvcr.io/nvidia/driver:525-5.15.0-69-generic-ubuntu22.04
podman logs nvidia-driver


$ sudo podman run -it --rm --security-opt=label=disable nvidia/cuda:12.1.1-base-ubi8 nvidia-smi
Error: OCI runtime error: crun: error executing hook `/usr/bin/nvidia-container-toolkit` (exit code: 1)




podman run --name nvidia-driver -d --privileged --pid=host   -v ./nvidia:/run/nvidia:shared   -v ./log:/var/log   \
  --restart=unless-stopped   docker.io/aanno/coreos:525.116.04 nvidia-driver init -a

