#!/bin/bash

# Scan code modules for code quality check

echo "Running Code Style Checking..."

echo "Scanning code via pylint..."
source ../ci/pylint/script.sh

echo "Scanning code via pycodestyle..."
source ../ci/pycodestyle/script.sh

echo "Scanning code via pydocstyle..."
source ../ci/pydocstyle/script.sh

echo "Running Type Checking..."

source ../ci/mypy/script.sh
