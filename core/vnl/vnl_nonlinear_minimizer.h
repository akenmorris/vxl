//-*- c++ -*-------------------------------------------------------------------
#ifndef vnl_nonlinear_minimizer_h_
#define vnl_nonlinear_minimizer_h_
#ifdef __GNUC__
#pragma interface
#endif
//
// Class : vnl_nonlinear_minimizer
//
// .SECTION Description
//    vnl_nonlinear_minimizer is a base class for nonlinear optimization.
//    It defines a few common abilities such as get_num_evaluations
//
// .NAME        vnl_nonlinear_minimizer - Base class for nonlinear optimization.
// .LIBRARY     vnl
// .HEADER	Numerics Package
// .INCLUDE     vnl/vnl_nonlinear_minimizer.h
// .FILE        vnl/vnl_nonlinear_minimizer.cxx
// .SECTION Author
//     Andrew W. Fitzgibbon, Oxford RRG, 22 Aug 99
//
//-----------------------------------------------------------------------------

#include <vnl/vnl_matrix.h>

class vnl_nonlinear_minimizer {
public:
  vnl_nonlinear_minimizer();

  virtual ~vnl_nonlinear_minimizer();
  
// -- Set the convergence tolerance on F (sum of squared residuals).  When the
// differences in successive RMS errors is less than this, the routine
// terminates.  So this is effectively the desired precision of your
// minimization.  Setting it too low wastes time, too high might cause early
// convergence.  The default of 1e-9 is on the safe side, but if speed is an
// issue, you can try raising it.
  void set_f_tolerance(double v) { ftol = v; }
  double get_f_tolerance() const { return ftol; }

// -- Set the convergence tolerance on X.  When the length of the steps taken in X
// are about this long, the routine terminates.  The default is 1e-8, which should
// work for many problems, but if you can get away with 1e-4, say, minimizations will
// be much quicker.
  void set_x_tolerance(double v) {
    xtol = v;
    epsfcn = xtol * 0.001;
  }
  double get_x_tolerance() const { return xtol; }
  
// -- Set the convergence tolerance on Grad(F)' * F.
  void set_g_tolerance(double v) { gtol = v; }
  double get_g_tolerance() const { return gtol; }

// -- Set the termination maximum number of iterations.
  void set_max_function_evals(int v) { maxfev = v; }
  double get_max_function_evals() const { return maxfev; }

// -- Set the step length for FD Jacobian.  Be aware that set_x_tolerance will reset this
// to xtol * 0.001.  The default is 1e-11.
  void set_epsilon_function(double v) { epsfcn = v; }
  double get_epsilon_function() const { return epsfcn; }

// -- Turn on per-iteration printouts.
  void set_trace(bool on) { trace = on; }
  double get_trace() const { return trace; }
  
// -- Set verbose flag
  void set_verbose(bool verb) { verbose_ = verb; }
  double get_verbose() const { return verbose_; }

// -- Set check_derivatives flag.  Negative values may mean fewer checks.
  void set_check_derivatives(int cd) { check_derivatives_ = cd; }
  double get_check_derivatives() const { return check_derivatives_; }

// -- Return the error of the function when it was evaluated at the start
// point of the last minimization. For minimizers driven by a vnl_least_squares_function
// (Levenberg-Marquardt, Conjugate Gradients) this is usually the RMS error.
// For those driven by a vnl_cost_function (LBFGS, Amoeba) it is simply the
// value of the vnl_cost_function at the start (usually the sum of squared residuals).
  double get_start_error() const { return start_error_; }

// -- Return the best error that was achieved by the last minimization,
// corresponding to the returned x.
  double get_end_error() const { return end_error_; }

// -- Return the total number of times the function was evaluated by
// the last minimization.
  int get_num_evaluations() const { return num_evaluations_; }

// -- Return the number of {\em iterations} in the last minimization.
// Each iteration may have comprised several function evaluations.
  int get_num_iterations() const { return num_iterations_; }

// -- Return the covariance of the estimate at the end.
  virtual vnl_matrix<double> const& get_covariance();

// -- Some generic return codes that apply to all minimizers.
  enum ReturnCodes {
    ERROR_FAILURE              =-1,
    ERROR_DODGY_INPUT          = 0,
    CONVERGED_FTOL     	       = 1,
    CONVERGED_XTOL     	       = 2,
    CONVERGED_XFTOL    	       = 3,
    CONVERGED_GTOL     	       = 4,
    FAILED_TOO_MANY_ITERATIONS = 5,
    FAILED_FTOL_TOO_SMALL      = 6,
    FAILED_XTOL_TOO_SMALL      = 7,
    FAILED_GTOL_TOO_SMALL      = 8
  };

// -- Return the failure code of the last minimization
  ReturnCodes get_failure_code() const { return failure_code_; }

protected:
  // Data Members--------------------------------------------------------------
  // Input variables
  double xtol;    // Termination tolerance on X (solution vector)
  int    maxfev;  // Termination maximum number of iterations.
  double ftol;    // Termination tolerance on F (sum of squared residuals)
  double gtol;    // Termination tolerance on Grad(F)' * F = 0
  double epsfcn;  // Step length for FD Jacobian

  // Output variables
  unsigned num_iterations_;
  int    num_evaluations_;
  double start_error_;
  double end_error_;

  bool trace;

  // Verbose flag.
  bool verbose_;
  int check_derivatives_;
  ReturnCodes failure_code_;

};

#endif   // DO NOT ADD CODE AFTER THIS LINE! END OF DEFINITION FOR CLASS vnl_nonlinear_minimizer.

