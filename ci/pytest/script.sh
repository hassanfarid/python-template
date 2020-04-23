#!/bin/bash

pytest \
    -c=../ci/pytest/pytest.ini \
    --cov=. \
    --cov-config=../ci/coverage/.coveragerc.ini \
    ..
