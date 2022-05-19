FROM python:3.9.7-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONFAULTHANDLER=1
ENV PYTHONUNBUFFERED=1

ENV MY_VENV=/home/python/app/.venv
ENV PATH=$PATH:${MY_VENV}/bin

RUN apt update && apt install -y --no-install-recommends gcc
RUN pip install poetry

RUN useradd -ms /bin/bash python
USER python

RUN echo "source /home/python/app/.venv/bin/activate" >> /home/python/.bashrc     # remote container

WORKDIR /home/python/app
