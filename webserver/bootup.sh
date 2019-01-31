#!/bin/bash

cd /home/nvidia/github_jetson/jetson_fly/webserver
. venv/bin/activate
export FLASK_APP=/home/nvidia/github_jetson/jetson_fly/webserver/auto/webhooks.py
export YOURAPPLICATION_SETTINGS=/home/nvidia/github_jetson/jetson_fly/webserver/auto/config.cfg
python -m flask run --host=0.0.0.0
