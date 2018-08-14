/*
 * PGRSource.h
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

#ifdef PGR_CAMERA

#ifndef PGRSOURCE_H_
#define PGRSOURCE_H_

#include "ImgSource.h"

#include <opencv2/opencv.hpp>
#include <boost/shared_ptr.hpp>
#include <flycapture/FlyCapture2.h>

class PGRSource : public ImgSource {
public:
	PGRSource(int index=0);
	virtual ~PGRSource();

	virtual void setFPS(int fps);
	virtual void rewind();
//	virtual void skip(unsigned int frames);
	virtual bool grab(cv::Mat& frame);

private:
	boost::shared_ptr<FlyCapture2::Camera> _cap;
	FlyCapture2::Image _frame_cap;
};

#endif /* PGRSOURCE_H_ */

#endif
