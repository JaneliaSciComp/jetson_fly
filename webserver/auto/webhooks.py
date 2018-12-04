from flask import Flask, request, jsonify, send_file
import threading
import logging
from logging.handlers import RotatingFileHandler
import subprocess
import signal
import smtpd
import asyncore
import string
import random
import fileinput 
import datetime
import os
import shutil

app = Flask(__name__)
app.config.from_envvar('YOURAPPLICATION_SETTINGS')
handler = RotatingFileHandler('/home/nvidia/webserver/log/server.log',
    maxBytes=10000000, backupCount=3)
handler.setLevel(logging.INFO)
app.logger.addHandler(handler)

t = "global"
class ficThread (threading.Thread):
    def __init__(self, config_file):
        threading.Thread.__init__(self)
        self.config_file = config_file
    def run(self):
        app.logger.info ("Starting command line")
        global childproc
        childproc = subprocess.Popen ("exec " + app.config["PATH_TO_FICTRAC"] + "build/fictrac " + self.config_file, stdout=subprocess.PIPE, shell=True)
        streamdata = childproc.communicate()[0]

@app.route('/fictrac/start',methods=['GET', 'POST'])
def start_fictrac():
    # read in configuration template  
    fictrac_config_template = os.path.join(app.config["FICTRAC_CONFIG_DIR"],'config_template.txt')
    with open(fictrac_config_template,'r') as file:
        filedata = file.read()
 
    # generate name for output files based on date-time
    datetimestamp = '{:%Y%m%d_%H_%M_%S}'.format(datetime.datetime.now()) 
    output_home = app.config["FICTRAC_OUTPUT_DIR"]
    output_dir = os.path.join(output_home, datetimestamp)

    # if post, use values in post to override values in config file
    if request.method == 'POST':
        content = request.json
        if content['display'] is not None:
            filedata = filedata.replace('$display', content['display'])
        if content['trial_name'] is not None:
            output_dir = os.path.join(output_home,content['trial_name'])
    else:
        filedata = filedata.replace('$display', '1')

    # write out new config file in temp directory
    os.mkdir (output_dir)
    shutil.copy(os.path.join(app.config["FICTRAC_CONFIG_DIR"],'mask.jpg'),os.path.join(output_dir,'mask.jpg'))
    shutil.copy(os.path.join(app.config["FICTRAC_CONFIG_DIR"],'transform.dat'),os.path.join(output_dir,'transform.dat'))
    config_file = os.path.join(output_dir, "config.txt") 
    with open(config_file, 'w') as file:
        file.write(filedata)

    t = ficThread(config_file)
    t.start()
    return 'Fictrac started with configuration'

@app.route('/fictrac/stop')
def kill_fictrac():
    childproc.terminate()
    return "Fictrac stopped" 

@app.route('/fictrac/results')
def get_fictrac_results():
   return "true"

@app.route('/capture', methods = ['GET','POST'])
def capture_photo():
    resolution = request.form.get("resolution")
    cmd = "gst-launch-1.0 nvcamerasrc num-buffers=1 flicker=0 auto-exposure=1 color-effect=1 wbmode=0 ! 'video/x-raw(memory:NVMM), width=(int)1280, height=(int)720, format=(string)I420, framerate=(fraction)60/1' ! nvjpegenc ! filesink location=/tmp/screengrab.jpg"
    snapshot = subprocess.Popen (cmd, shell=True)
    snapshot.wait()
    app.logger.info ("Captured image")
    return send_file("/tmp/screengrab.jpg",mimetype='image/jpeg')
