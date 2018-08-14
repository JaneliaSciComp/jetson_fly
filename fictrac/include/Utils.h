///
/// Richard Moore, 2008.
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

#ifndef UTILS_H_
#define UTILS_H_

#include <boost/shared_array.hpp>

#include <string>
#include <deque>
#include <stdint.h>
#include <cstdio>

class Utils
{
	public:
		static void				SET_PROCESS_PRIORITY(int priority);

//		static bool				READ_FILE_TO_STRING(const std::string fn, std::string& ret);
		static std::string		GET_TOKEN(std::string& str, std::string dlim = "\t\n, ");
		static void				TOKENISE(const std::string& str,
										std::deque<std::string>& tokens,
										std::string dlim = "\t\n, ");

		static double			STR2NUM(std::string str);
		static std::string		NUM2STR(double num);

		static double			GEN_RAND_DBL(double min, double max);
		static double			GEN_RAND_GSN(double sigma, double mean=0);
		
		static double			GET_CLOCK();
		static std::string		GET_DATE_STRING();
};

#endif /*UTILS_H_*/

