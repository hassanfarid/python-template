#!/bin/bash

echo "Scanning module: gamedemo/"
mypy --config-file ../ci/mypy/mypy_config.ini gamedemo/

echo "Scanning module: olddemo/"
mypy --config-file ../ci/mypy/mypy_config.ini olddemo/

echo "Scanning module: game.py"
mypy --config-file ../ci/mypy/mypy_config.ini game.py