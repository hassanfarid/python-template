#!/bin/bash

echo "Scanning all modules"
mypy --config-file ../ci/mypy/mypy_config.ini .