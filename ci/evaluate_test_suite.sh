#!/bin/bash

echo "Scanning code via pytest..."
source ../ci/pytest/script.sh

echo "Evaluate test coverage..."
source ../ci/coverage/script.sh