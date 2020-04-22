#!/bin/bash

if [ ! -f .coverage ]
then
    source ../ci/pytest/script.sh
fi
coverage html --rcfile=../ci/coverage/.coveragerc.ini
