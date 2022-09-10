#!/usr/bin/env python3

"""Test script for automl-in-action-notebooks readiness
"""

import lightgbm as lgb
import autokeras as ak
from tensorflow.python.client import device_lib
print(device_lib.list_local_devices())

