FROM python:3.9.7-alpine3.14

ENV PIPENV_VENV_IN_PROJECT=1
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONFAULTHANDLER=1
ENV PYTHONUNBUFFERED=1

ENV MY_VENV=/home/python/app/.venv
ENV PATH=$PATH:${MY_VENV}/bin

RUN apk add bash
RUN pip install pipenv

RUN adduser --disabled-password --uid 1000 python
USER python

RUN echo "source /home/python/app/.venv/bin/activate" >> /home/python/.bashrc     # remote container

WORKDIR /home/python/app
