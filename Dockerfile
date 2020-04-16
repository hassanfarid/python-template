FROM python:3.8.2

WORKDIR /app/src

COPY requirements.txt /app

RUN pip install -r /app/requirements.txt

COPY ./src /app/src
COPY ./ci /app/ci
COPY ./docs /app/docs

CMD python3 src/game.py