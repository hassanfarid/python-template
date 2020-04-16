#!/bin/bash

echo "Generating reStructuresText..."
sphinx-apidoc --full -o docs/ .

cd docs/
echo "Generating HTML output..."
make clean html
