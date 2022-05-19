#!/bin/bash

# tail -f /dev/null

poetry install

source /home/python/app/.venv/bin/activate
pip install --upgrade pip

python manage.py runserver 0.0.0.0:8000
