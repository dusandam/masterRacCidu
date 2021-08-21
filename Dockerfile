FROM python:3.8-slim

WORKDIR /usr/src/

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt update \
 && apt install -y gcc python3-dev build-essential \
 && pip install --upgrade pip \
 && rm -rf /var/lib/apt/lists/*

COPY ./requirements.txt /usr/src/requirements.txt

RUN pip install --upgrade setuptools
RUN pip install --exists-action w -r requirements.txt

EXPOSE 8000

COPY . /usr/src/

ENV PYTHONPATH "/usr/src/"