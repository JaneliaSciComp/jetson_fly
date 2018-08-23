/*
 * CVSource.h
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

#ifndef CVSOURCE_H_
#define CVSOURCE_H_

#include "ImgSource.h"

#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <boost/shared_ptr.hpp>

#include <cstdio>

class CVSource : public ImgSource {
public:
        CVSource(float fps, int input_width, int input_height);
	CVSource(std::string filename);
	virtual ~CVSource();

        virtual void setFPS(int fps);
	virtual void rewind();
//	virtual void skip(unsigned int frames);
	virtual bool grab(cv::Mat& frame);
        virtual cv::VideoCapture getConnection();

private:
	cv::VideoCapture _cap;
	cv::Mat _frame_cap;
};

#endif /* CVSOURCE_H_ */
