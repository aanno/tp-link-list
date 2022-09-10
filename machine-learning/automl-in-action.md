# Automated Machine Learning in Action
author: Qingquan Song, Haifeng Jin, and Xia Hu

* https://www.manning.com/books/automated-machine-learning-in-action
* https://github.com/datamllab/automl-in-action-notebooks

## Notes

I wrote a enable for bash sourcing that will also print if GPU acceleration is enabled. See `automl-in-action` folder. Useage:

```bash
$ . automl-source.sh
...
17:28:41.643290: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1525] Created device /device:GPU:0 with 3107 MB memory:  -> device: 0, name: NVIDIA GeForce RTX 2060, pci bus id: 0000:01:00.0, compute capability: 7.5
[name: "/device:CPU:0"
device_type: "CPU"
memory_limit: 268435456
locality {
}
incarnation: 15878398125324221053
xla_global_id: -1
, name: "/device:GPU:0"
device_type: "GPU"
memory_limit: 3258712064
locality {
  bus_id: 1
  links {
  }
}
incarnation: 14593963604321237982
physical_device_desc: "device: 0, name: NVIDIA GeForce RTX 2060, pci bus id: 0000:01:00.0, compute capability: 7.5"
xla_global_id: 416903419
]
```
