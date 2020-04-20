#!/bin/bash

pytest \
    -c=../ci/pytest/pytest.ini \
    --cov=. \
    --cov-config=../ci/pytest/.coveragerc.ini \
    .
