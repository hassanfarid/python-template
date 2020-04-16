#!/bin/bash

# Scan code modules for code quality check

echo "Running Code Style Checking..."

echo "Scanning all modules"
source ci/pylint/script.sh

echo "Running Type Checking..."

source ci/mypy/script.sh
