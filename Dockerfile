# syntax=docker/dockerfile:1

FROM python:3.10-alpine

RUN apk add bash
RUN adduser --disabled-password --uid 1000 python

USER python

RUN mkdir /home/python/app

ENV MY_VENV_PATH=/home/python/app/venv
ENV PIP_TARGET=${MY_VENV_PATH}
ENV PYTHONPATH=${MY_VENV_PATH}
ENV PATH=$PATH:${MY_VENV_PATH}/bin
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONFAULTHANDLER=1
ENV PYTHONUNBUFFERED=1

WORKDIR /home/python/app
