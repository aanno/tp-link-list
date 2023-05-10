# GPU support

You normally _need_ GPU support for neural network training. 

Generally speaking, you need opencv and CUDA on NVidia, and opencl and sycl on AMD for hard stuff.

Currently, GPU AMD support is only realistic on an ubuntu linux (as it compiles a kernel module and uses many special
deb packages). 

* https://missinglink.ai/guides/computer-vision/complete-guide-deep-learning-gpus/
* https://timdettmers.com/2019/04/03/which-gpu-for-deep-learning/

To find out if your toolset is working on GPU, see 

* https://stackoverflow.com/questions/44544766/how-do-i-check-if-keras-is-using-gpu-version-of-tensorflow

## Keras

Keras support Tensorflow (default), Theano, and CNTK as backends. See the specific sections for more details.

* https://keras.io/backend/
* [Switch GPU device](https://github.com/keras-team/keras/issues/4613)
* https://towardsdatascience.com/train-neural-networks-using-amd-gpus-and-keras-37189c453878

## Tensorflow

Tensorflow supports CUDA out of the box (https://www.tensorflow.org/install/).

* [Switch GPU device](https://www.tensorflow.org/guide/using_gpu)
* [Get list of devices](https://stackoverflow.com/questions/38559755/how-to-get-current-available-gpus-in-tensorflow)
* [install tensorflow on conda](https://docs.anaconda.com/anaconda/user-guide/tasks/tensorflow/)

Getting Tensorflow with AMD is difficult:

* https://www.tensorflow.org/install/source
* https://stackoverflow.com/questions/37892784/using-keras-tensorflow-with-amd-gpu
* https://github.com/hughperkins/tf-coriander

### Checking if tensorflow is working

Currently, tensorflow does not work on python 3.7, see https://github.com/tensorflow/tensorflow/issues/20517 .

To find out if tensorflow is using GPU use the following test program:

```python3
from tensorflow.python.client import device_lib

print(device_lib.list_local_devices())
```

This is a list of (quick) tensorflow examples:

* https://gpuopen.com/rocm-tensorflow-1-8-release/
* https://github.com/maxpumperla/deep_learning_and_the_game_of_go

### Tensorflow language bindings

* [tensorflow go(https://pgaleone.eu/tensorflow/go/2017/05/29/understanding-tensorflow-using-go/)
  + https://docs.photoprism.app/developer-guide/technologies/tensorflow/

### Tensorflow articles

* https://aws.amazon.com/de/blogs/machine-learning/how-to-deploy-deep-learning-models-with-aws-lambda-and-tensorflow/

### Remote tensorflow

* https://www.tensorflow.org/guide/keras/training_keras_models_on_cloud
* https://www.tensorflow.org/guide/distributed_training
* https://www.tensorflow.org/cloud

### Tensorflow in containers

* https://discussion.fedoraproject.org/t/how-to-run-tensorflow-gpu-in-podman/74060/9
* https://www.tensorflow.org/install/docker
* https://hub.docker.com/r/tensorflow/tensorflow/

## Theano

Theano will use (python's?) `libgpuarray` aka `pygpu`.

* http://deeplearning.net/software/theano/tutorial/using_gpu.html
* http://deeplearning.net/software/libgpuarray/installation.html

## BLAS

Sometimes you (also) need a implementation of BLAST (linear algebra). This is could be tricky as well, but is not 
considered any further here (Hint: use OpenBlast, or even better an GPU implementation like clBlas odr clBlast).

* https://github.com/clMathLibraries/clBLAS
* https://github.com/CNugteren/CLBlast

### Intel MKL and CO

Intel MKL seems to have vastly the same performance than openBLAS, so why bother?

* http://markus-beuckelmann.de/blog/boosting-numpy-blas.html
* https://discourse.julialang.org/t/openblas-is-faster-than-intel-mkl-on-amd-hardware-ryzen/8033
* https://software.intel.com/en-us/articles/performance-comparison-of-openblas-and-intel-math-kernel-library-in-r

To install:

* https://www.r-bloggers.com/2020/10/installing-and-switching-to-mkl-on-fedora/
* https://www.intel.com/content/www/us/en/developer/tools/oneapi/onemkl.html

#### Related intel technology

* https://www.oneapi.io/
* [DAAL - Data Analytics Acceleration Library](https://www.intel.com/content/www/us/en/developer/articles/guide/intel-daal-2020-install-guide.html)
  + https://www.intel.com/content/www/us/en/developer/tools/oneapi/onedal.html
* [IPP - Integrated Performance Primitives](https://www.intel.com/content/www/us/en/developer/tools/oneapi/ipp.html)
* [PST - parallel C++ STL](https://www.intel.com/content/www/us/en/developer/articles/guide/get-started-with-parallel-stl.html)
* [DPL - Data Parallel C++](https://github.com/oneapi-src/oneDPL)
* [TBB - Threading Building Blocks](https://github.com/oneapi-src/oneTBB)
* [Intel MPI](https://www.intel.com/content/www/us/en/developer/tools/oneapi/mpi-library.html)
* [Intel parallel studio xe](https://www.intel.com/content/www/us/en/developer/articles/release-notes/intel-parallel-studio-xe-supported-and-unsupported-product-versions.html)
* [Intel distribution for python](https://www.intel.com/content/www/us/en/developer/tools/oneapi/distribution-for-python.html)
  + [install on conda](https://www.intel.com/content/www/us/en/developer/articles/technical/using-intel-distribution-for-python-with-anaconda.html)

## Graphic Cards

### NVidia grahic cards

NVidia GPU support is currently based on CUDA (and much easier to enable than the support for AMD). Normally 
CUDA is wrapped by `opencv` _or_ used directly.

* https://developer.nvidia.com/deep-learning
* https://developer.nvidia.com/deep-learning-frameworks
* https://developer.nvidia.com/deep-learning-examples

#### Cuda and Co

* [howto install CUDA on RPM linux systems](https://rpmfusion.org/Howto/CUDA)
* https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html
* [requirements for tf](https://www.tensorflow.org/install/gpu)
* [CUDA toolkit](https://developer.nvidia.com/cuda-toolkit)
* [CUDNN - NN library needed](https://developer.nvidia.com/cudnn)
* [CUDA 11](https://developer.nvidia.com/blog/cuda-11-features-revealed/)
* [CUPTI - CUDA profiling](https://docs.nvidia.com/cuda/cupti/)

##### Cuda tools

* https://unix.stackexchange.com/questions/38560/gpu-usage-monitoring-cuda
* https://flathub.org/apps/details/com.leinardi.gwe

#### Nvidia GPU Cloud (NGC)

* https://towardsdatascience.com/deep-learning-with-docker-container-from-ngc-nvidia-gpu-cloud-58d6d302e4b2 

### AMD graphic cards

* https://www.amd.com/en/support Find amdpro driver

#### OpenCL

The first thing to check is

```
clinfo
```

if you have opencl support _and_ if it really stems from the graphic card.  

##### Ubuntu

The are a couple of opencl implementation _but_ only *one* can be install at any given time (otherwise `clinfo` will
error out). There are the following deb packages:

* *`mesa-opencl-icd`* (this is the one you need and want for AMD)
* `nvidia-opencl-icd-\<number\>` (if you need opencl on an NVidia, hardly ever used)
* `pocl-opencl-icd` (an open implementation of opencl based on CPUs)
  + http://portablecl.org/
* `beignet-opencl-icd` (an implementation of opencl for Intel (integrated) graphic cards; 
  hardly useful for big data stuff)
  
While `mesa-opencl-icd` is good and can run in parallel with AMDGPU (the open source X11 driver for AMD), it is also
possible to use the 'headless' part of AMDGPU-PRO (AMD closed source X11 driver):

```
amdgpu-pro-install --opencl=legacy,pal --headless
```

See [OpenCL with the open-source AMDGPU driver](https://math.dartmouth.edu/~sarunas/amdgpu.html) for more information.

#### Alternatives to OpenCL

##### ROCm

Tip: Your ROCm support is working, when there is the device `/dev/kfd`. If you have ROCm support using the
[ROCm Docker Tensorflow]https://github.com/RadeonOpenCompute/ROCm-docker/blob/master/quick-start.md is by
far the simpliest way to get accelerated tensorflow on AMD.

* [GPU Open](https://gpuopen.com/professional-compute/)
* [ROCm](https://rocm.github.io/index.html)
  + [Supported Cards](https://github.com/RadeonOpenCompute/ROCm/blob/master/README.md)
  + [ROCm Installation](https://rocm.github.io/ROCmInstall.html)
  + [ROCm Tensorflow](https://rocm.github.io/dl.html)
  + [github](https://github.com/RadeonOpenCompute/ROCm)
  + [ROCm on CentOS](https://rocm.github.io/ROCmInstall.html#centosrhel-7-both-74-and-75-support)
* [MIOpen](https://gpuopen.com/compute-product/miopen/)
  + [ROCm using MIOpen](https://github.com/ROCmSoftwarePlatform/MIOpen)

###### ROCm tensorflow support

This is what to do:
  
* [Install](https://rocm.github.io/ROCmInstall.html) ROCm. Set LD_LIBRARY_PATH and PATH accoringly.
* Use `rocminfo` and `clinfo` to check your installation.
* Install `bazel`
* Install dependencies mentioned [here](https://rocm.github.io/dl.html): 
  + rocm-libs 
  + miopen-hip 
  + cxlactivitylogger
* [Checkout rocm tf](https://github.com/ROCmSoftwarePlatform/tensorflow-upstream/blob/develop-upstream/rocm_docs/tensorflow-install-basic.md) 
  from github 
* Change branch (I used 'r1.11-rocm-update')
* Compile (and install) with `./build_rocm_python3`

###### ComputeCpp

* https://developer.codeplay.com/computecppce/latest/overview
* https://developer.codeplay.com/computecppce/latest/getting-started-with-tensorflow
* https://developer.codeplay.com/computecppce/v1.0.2/supported-platforms#Amd-1AmdOpenclPlatformDriverForGpuDevices <br/>
  Supported AMD are _OLD_ amdgpu-pro drivers, hence expect nothing. Newer drivers does not support SPIR 1.2.

###### triSYCL

* https://github.com/triSYCL/triSYCL
* [Status](https://www.khronos.org/assets/uploads/developers/library/2017-supercomputing/Xilinx-triSYCL-complete_Nov17.pdf) <br/>
  No support for graphic cards at present?!?

###### tf-coriander: tensorflow on opencl 1.2

* https://github.com/hughperkins/tf-coriander

# Standards

* https://www.khronos.org/spir/
* https://www.khronos.org/sycl/
* https://www.khronos.org/opencl/
