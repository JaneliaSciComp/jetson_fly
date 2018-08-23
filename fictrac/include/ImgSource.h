/*
 * ImgSource.h
 *
 *  Created on: May 25, 2013
 *      Author: rjdmoore@uqconnect.edu.au
 */

/*#####################################################################
# This work is licensed under the Creative Commons                    #
# Attribution-NonCommercial-ShareAlike 3.0 Unported License.          #
# To view a copy of this license, visit                               #
# http://creativecommons.org/licenses/by-nc-sa/3.0/                   #
#                                                                     #
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY           #
# KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE          #
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR             #
# PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR       #
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER         #
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,     #
# ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE      #
# USE OR OTHER DEALINGS IN THE SOFTWARE.                              #
#####################################################################*/

#ifndef IMGSOURCE_H_
#define IMGSOURCE_H_

#include <opencv2/opencv.hpp>

enum BAYER_TYPE { BAYER_NONE, BAYER_RGGB, BAYER_GRBG, BAYER_GBRG, BAYER_BGGR };

class ImgSource {
public:
	ImgSource();
	virtual ~ImgSource();

	virtual void setFPS(int fps)=0;
	virtual void rewind()=0;
//	virtual void skip(unsigned int)=0;
	virtual bool grab(cv::Mat& frame)=0;

	bool isOpen() { return _open; }
	int getWidth() { return _width; }
	int getHeight() { return _height; }
	double getTimestamp() { return _timestamp; }
	void setBayerType(BAYER_TYPE bayer_type) { _bayerType = bayer_type; }
        cv::VideoCapture getConnection() {
              return NULL;
        }

protected:
	bool _open;
	BAYER_TYPE _bayerType;
	int _width, _height;
	double _timestamp;
};

#endif /* IMGSOURCE_H_ */
