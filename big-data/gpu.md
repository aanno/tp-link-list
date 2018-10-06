# GPU support

You normally _need_ GPU support for neural network training. 

Generally speaking, you need opencv and CUDA on NVidia, and opencl on AMD for hard stuff.

## Keras

Keras support Tensorflow (default), Theano, and CNTK as backends. See the specific sections for more details.

* https://keras.io/backend/

## Tensorflow

Tensorflow supports CUDA out of the box (https://www.tensorflow.org/install/).

Getting Tensorflow with AMD is difficult:

* https://stackoverflow.com/questions/37892784/using-keras-tensorflow-with-amd-gpu
* https://github.com/hughperkins/tf-coriander

## Theano

Theano will use (python's?) `libgpuarray` aka `pygpu`.

* http://deeplearning.net/software/theano/tutorial/using_gpu.html
* http://deeplearning.net/software/libgpuarray/installation.html

## BLAS

Sometimes you (also) need a implementation of BLAST (linear algebra). This is could be tricky as well, but is not 
considered any further here (Hint: use OpenBlast, or even better an GPU implementation like clBlas odr clBlast).

* https://github.com/clMathLibraries/clBLAS
* https://github.com/CNugteren/CLBlast

## Graphic Cards

### NVidia grahic cards

NVidia GPU support is currently based on CUDA (and much easier to enable than the support for AMD). Normally 
CUDA is wrapped by `opencv` _or_ used directly.

Currently I did not own a NVidia card, hence no more information is given.

### AMD graphic cards 

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
* `beignet-opencl-icd` (an implementation of opencl for Intel (integrated) graphic cards; 
  hardly useful for big data stuff)
  
While `mesa-opencl-icd` is good and can run in parallel with AMDGPU (the open source X11 driver for AMD), it is also
possible to use the 'headless' part of AMDGPU-PRO (AMD closed source X11 driver):

```
amdgpu-pro-install --opencl=legacy,pal --headless
```

See [OpenCL with the open-source AMDGPU driver](https://math.dartmouth.edu/~sarunas/amdgpu.html) for more information.

#### Alternatives to OpenCL

* [ROCm](https://rocm.github.io/index.html)
  + [ROCm Installation](https://rocm.github.io/ROCmInstall.html)
  + [ROCm Tensorflow](https://rocm.github.io/dl.html)
* [MIOpen](https://gpuopen.com/compute-product/miopen/)
  + [ROCm using MIOpen](https://github.com/ROCmSoftwarePlatform/MIOpen)
