///
/// Saul Thurrowgood, Mar 2010.
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

#ifndef _SHARED_POINTERS_H
#define _SHARED_POINTERS_H 1


///
/// A shared pointer is typedef'd for each TypeName as TypeNamePtr.
///
/// Usage within a header file:
///    1. #include this file after other includes, but before class declaration
///    2. write SHARED_PTR(TypeName); for each forward declaration used in
///       the header file
///

#include <boost/shared_ptr.hpp>

///
/// Use this in cases where the forward or full declaration is already given,
/// or where that declaration is more complicated than "class TypeName"
/// i.e. you will provide it yourself.
///
#define SHARED_PTR_NO_DEC(TypeName) \
	typedef boost::shared_ptr<TypeName> TypeName ## Ptr

///
/// Assumes the type is a class so forward declares it as "class TypeName".
///
#define SHARED_PTR(TypeName) \
	class TypeName; \
	SHARED_PTR_NO_DEC(TypeName)


#endif // _SHARED_POINTERS_H

