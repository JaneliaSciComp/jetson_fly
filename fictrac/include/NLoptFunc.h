///
/// Saul Thurrowgood, Nov 2010.
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

#ifndef _NL_OPT_FUNC_H
#define _NL_OPT_FUNC_H


#include <nlopt.h>
#include <vector>


///
/// C++ wrapper of the NLopt library for nonlinear optimisation, v2.2+.
/// See:  http://ab-initio.mit.edu/nlopt
///
class NLoptFunc
{
public:
	NLoptFunc();
	virtual ~NLoptFunc();

	///
	/// Run the optimiser.  Default behaviour is to start the search at the
	/// position of the previous result.
	///
	virtual nlopt_result optimize(const double *xInit=0);

	///
	/// Sets the initial value used for the next call to optimize(),
	/// which assumes that call passes NULL as the xInit argument.
	///
	void setXInit(const double *xInit);

	///
	/// Get the optimised value.
	///
	void getOptX(float *x);
	void getOptX(double *x);
	double getOptF();

	///
	/// Returns the number of objective() evaluations by the last optimisation.
	///
	unsigned getNumEval();

	///
	/// Initialise the optimiser.  If 'minimise' is false then the objective
	/// function will be maximised.
	///
	void init(nlopt_algorithm algo, unsigned n, bool minimise=true);

	///
	/// Set initial step size.
	///
	void setInitialStep(const double *dx);

	///
	/// Set stopping criteria.
	///
	void setLowerBounds(const double *lb);
	void setUpperBounds(const double *ub);
	void setLowerBounds(double lb); /// convenience: sets all to same value
	void setUpperBounds(double ub);
	void setFtol(double tol);
	void setXtol(double tol);
	void setMaxEval(unsigned n);

	void getLowerBounds(double *lb);
	void getUpperBounds(double *ub);

	unsigned getDimension();


protected:
	unsigned _nEval;

	///
	/// Objective function executed during optimisation.
	///
	virtual double objective(unsigned n, const double *x, double *grad) = 0;


private:
	static double _cb(unsigned n, const double *x, double *grad, void *data);

	nlopt_opt _opt;
	std::vector<double> _x;
	double _optF;
};


#endif // _NL_OPT_FUNC_H
