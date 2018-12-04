#!/bin/bash

cd /home/nvidia/webserver
. venv/bin/activate
export FLASK_APP=/home/nvidia/webserver/auto/webhooks.py
export YOURAPPLICATION_SETTINGS=/home/nvidia/webserver/auto/config.cfg
flask run --host=0.0.0.0
