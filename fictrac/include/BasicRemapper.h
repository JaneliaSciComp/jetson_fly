///
/// Saul Thurrowgood, 2008.
///

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

#ifndef _BASIC_REMAPPER_H
#define _BASIC_REMAPPER_H


#include "Remapper.h"
#include <vector>
#include <cstdio>

///
/// Bare minimum for a remapper. The mapX and mapY images are the size
/// of the destination image, and contain the X,Y pixel location of
/// the source image pixel to place in each destination pixel.
///
class BasicRemapper : public Remapper
{
public:
	BasicRemapper(
		int srcW, int srcH,
		const cv::Mat& mapX, const cv::Mat& mapY)
		: Remapper(srcW, srcH, mapX.cols, mapX.rows)
	{
		if (mapX.rows != mapY.rows || mapX.cols != mapY.cols) {
			printf("BasicRemapper: map dimensions don't match\n");
			abort();
		}
		int w = mapX.cols;
		int h = mapX.rows;
		_mapX.resize(w*h);
		_mapY.resize(w*h);
		cv::Mat mx(h, w, CV_32FC1, &_mapX[0]);
		cv::Mat my(h, w, CV_32FC1, &_mapY[0]);
		mapX.copyTo(mx);
		mapY.copyTo(my);
	}

private:
	std::vector<float> _mapX, _mapY;
	float * _getMapX() { return &_mapX[0]; }
	float * _getMapY() { return &_mapY[0]; }
};


#endif // _BASIC_REMAPPER_H

