FROM python:3.8.2

WORKDIR /app

COPY requirements.txt /app

RUN pip install -r /app/requirements.txt

COPY ./gamedemo /app/gamedemo
COPY ./olddemo /app/olddemo
COPY ./ci /app/ci
COPY ./game.py /app/

CMD python3 game.py