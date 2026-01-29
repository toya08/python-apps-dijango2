#!/bin/bash
export PYTHONPATH=./vendor
python3 manage.py migrate --noinput
python3 -m gunicorn --workers 2 apprunner_0129 .wsgi --bind 0.0.0.0:8000