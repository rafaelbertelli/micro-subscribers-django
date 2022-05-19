FROM python:3.9.7-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONFAULTHANDLER=1
ENV PYTHONUNBUFFERED=1

ENV MY_PYTHON_PACKAGE=/home/python/app/__pypackages__/3.9
ENV PATH=$PATH:${MY_PYTHON_PACKAGE}/bin

RUN apt update && apt install -y --no-install-recommends gcc
RUN pip install pdm

RUN useradd -ms /bin/bash python
USER python

WORKDIR /home/python/app

RUN /bin/bash -c "pdm --pep582 >> ~/.bashrc"
