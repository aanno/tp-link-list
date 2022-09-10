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

# https://unix.stackexchange.com/questions/4650/how-to-determine-the-path-to-a-sourced-tcsh-or-bash-shell-script-from-within-the
# python $HOME/bin/automl-test.py
SOURCE_DIR=`dirname ${BASH_SOURCE[${#BASH_SOURCE[@]} - 1]}`
python $SOURCE_DIR/automl-test.py


