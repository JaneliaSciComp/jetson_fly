/*
 * CVSource.cpp
 *
 *  Created on: May 25, 2013
 *      Author: rjdmoore@uqconnect.edu.au
 */

#include "CVSource.h"

CVSource::CVSource(float fps)
{
        std::string gstreamer = "nvcamerasrc ! video/x-raw(memory:NVMM), width=(int)1920, height=(int)1080, format=(string)I420, framerate=(fraction)30/1  ! nvvidconv flip-method=0 ! video/x-raw, format=(string)BGRx ! videoconvert ! video/x-raw, format=(string)BGR ! appsink";
        cv::VideoCapture cap(gstreamer, cv::CAP_GSTREAMER);
	_open = cap.isOpened();

	if( _open ) {
	    _width = cap.get(CV_CAP_PROP_FRAME_WIDTH);
	    _height = cap.get(CV_CAP_PROP_FRAME_HEIGHT);
	} 
        _cap = cap;
}

CVSource::CVSource(std::string filename)
{
	printf("%s: reading from %s...\n", __func__, filename.c_str());
	_cap = cv::VideoCapture(filename.c_str());
	_open = _cap.isOpened();

	if( _open ) {
		_width = _cap.get(CV_CAP_PROP_FRAME_WIDTH);
		_height = _cap.get(CV_CAP_PROP_FRAME_HEIGHT);
	}
}

void CVSource::setFPS(int fps) {
}

// ignored by non-file source?
void CVSource::rewind()
{
	if( !_open ) { return; }
	_cap.set(CV_CAP_PROP_POS_FRAMES, 0);
}

//// ignored by non-file source?
//void CVSource::skip(unsigned int frames)
//{
//	if( !_open ) { return; }
//	_cap->set(CV_CAP_PROP_POS_FRAMES, frames);
//}

bool CVSource::grab(cv::Mat& frame)
{
	if( !_open ) { return false; }
	if( !_cap.read(_frame_cap) ) {
		fprintf(stderr, "%s: Error grabbing image frame!\n", __func__);
		return false;
	}
	_timestamp = _cap.get(CV_CAP_PROP_POS_MSEC);
	if( _frame_cap.channels() == 1 ) {
		switch( _bayerType ) {
			case BAYER_BGGR:
				cv::cvtColor(_frame_cap, frame, CV_BayerBG2BGR);
				break;
			case BAYER_GBRG:
				cv::cvtColor(_frame_cap, frame, CV_BayerGB2BGR);
				break;
			case BAYER_GRBG:
				cv::cvtColor(_frame_cap, frame, CV_BayerGR2BGR);
				break;
			case BAYER_RGGB:
				cv::cvtColor(_frame_cap, frame, CV_BayerRG2BGR);
				break;
			case BAYER_NONE:
			default:
				cv::cvtColor(_frame_cap, frame, CV_GRAY2BGR);
				break;
		}
	} else {
		_frame_cap.copyTo(frame);
	}
	return true;
}

CVSource::~CVSource() {}
