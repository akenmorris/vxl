#ifndef vnl_determinant_h_
#define vnl_determinant_h_
#ifdef __GNUC__
#pragma interface
#endif
/*
  fsm@robots.ox.ac.uk
*/

// purpose:
// direct evaluation of determinants.
// (no netlib routines required).

// 2x2 matrix
template <class T> T vnl_determinant(T const *row0, 
				     T const *row1);

// 3x3 matrix
template <class T> T vnl_determinant(T const *row0, 
				     T const *row1,
				     T const *row2);

// 4x4 matrix
template <class T> T vnl_determinant(T const *row0, 
				     T const *row1,
				     T const *row2,
				     T const *row3);

#endif
