gst-launch-1.0 -e nvcamerasrc fpsRange="120.0 120.0" ! 'video/x-raw(memory:NVMM), width=(int)1280, height=(int)720, format=(string)I420, framerate=(fraction)120/1' ! \
nvvidconv flip-method=2 ! 'video/x-raw(memory:NVMM), format=(string)I420' ! omxh264enc bitrate=8000000 \
! 'video/x-h264, stream-format=(string)byte-stream' ! filesink location=test.mp4 -e
