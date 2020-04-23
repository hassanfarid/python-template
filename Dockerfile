ARG TARGET="ci"

FROM python:3.8.2 as base

WORKDIR /app/src

FROM base as ci

COPY requirements-ci.txt /app

RUN pip install -r /app/requirements-ci.txt

COPY ./src /app/src
COPY ./ci /app/ci
COPY ./tests /app/tests
COPY ./docs /app/docs

FROM base as prod

COPY ./src /app/src

FROM $TARGET