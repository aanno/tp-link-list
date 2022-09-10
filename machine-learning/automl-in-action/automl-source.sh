#!/bin/bash -x

# set -e

if [ -z "$AUTOML" ]; then
  # source ~/.bashrc
  export LD_LIBRARY_PATH=/opt/cuda/lib64
  #:$LD_LIBRARY_PATH
  export AUTOML=1
fi

export TF_GPU_ALLOCATOR=cuda_malloc_async

conda activate automl

# python $HOME/bin/automl-test.py
SOURCE_DIR="$(cd "$(dirname "$BASH_SOURCE")"; pwd)"
python $SOURCE_DIR/automl-test.py


