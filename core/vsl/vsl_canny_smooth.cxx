/*
  fsm@robots.ox.ac.uk
*/
#ifdef __GNUC__
#pragma implementation
#endif

// see vsl_canny_smooth.txx for template functions.

#include "vsl_canny_smooth.h"
#include <vcl/vcl_cassert.h>
#include <vcl/vcl_cstdlib.h> // abort()
#include <vcl/vcl_cmath.h>
#include <vcl/vcl_iostream.h>
#include <vil/vil_rgb_byte.h>
#include <vil/vil_pixel.h>

// #include <vil/vil_save.h>
// void debug_save(float const * const *image_out, int w, int h, char const *file) {
//   vil_memory_image_of<unsigned char> debug(w, h);
//   for (unsigned i=0; i<h; ++i)
//     for (unsigned j=0; j<w; ++j)
//       debug[i][j] = (unsigned char) image_out[i][j];
//   cerr << "save to " << file << endl;
//   vil_save(debug, file, "png");
// }


//"vsl_canny_smooth.cxx", line 37: Error: Overloading ambiguity between
// "vsl_canny_smooth_rothwell<unsigned char>(const vil_memory_image_of<unsigned char>&, const float*, int, int, float**)"
// and
// "vsl_canny_smooth_rothwell<unsigned char>(const vil_memory_image_of<unsigned char>&, const float*, int, int, float**)".

void vsl_canny_smooth_rothwell(vil_image const &image_in,
			       float const *_kernel, int _width, int _k_size,
			       float * const *_smooth)
{
  if (false) { }
#define macro(pt, st) \
  else if (vil_pixel_type(image_in) == pt) { \
    vil_memory_image_of<st > sec(image_in); \
    vsl_canny_smooth_rothwell(const_cast<st const *const*>(sec.row_array()), sec.height(), sec.width(), \
                              _kernel, _width, _k_size, _smooth); \
  }
  macro(VIL_BYTE, vil_byte)
  macro(VIL_UINT16, unsigned short)
  macro(VIL_RGB_BYTE, vil_rgb_byte)
  macro(VIL_FLOAT, float)
#undef macro
  else {
    cerr << "Image must be either UBYTE, SHORT, RGB or FLOAT." << endl;
    abort();
  }
}

void vsl_canny_smooth_rothwell_adaptive(vil_image const &image_in, 
					int x0, int y0, int image_size, 
					float const *_kernel, int _width, int _k_size,
					float * const *dx, float * const *dy, float * const *grad)
{
  if (false) { }
#define macro(pt, st) \
  else if (vil_pixel_type(image_in) == pt) { \
    vil_memory_image_of<st> sec(image_in); \
    vsl_canny_smooth_rothwell_adaptive(const_cast<st const * const *>(sec.row_array()), sec.height(), sec.width(), \
                                       x0, y0, image_size, _kernel, _width, _k_size, dx, dy, grad); \
  }
  macro(VIL_BYTE, vil_byte)
  macro(VIL_UINT16, unsigned short)
  macro(VIL_RGB_BYTE, vil_rgb_byte)
  macro(VIL_FLOAT, float)
#undef macro
  else {
    cerr << "Image must be either UBYTE, SHORT, RGB or FLOAT." << endl;
    abort();
  }
}

void vsl_canny_smooth(vil_image const &image_in, 
		      float const *_kernel, int _width, float const *_sub_area_OX,
		      float * const * image_out) 
{
  if (false) { }
#define macro(pt, st) \
  else if (vil_pixel_type(image_in) == pt) { \
    vil_memory_image_of<st> sec(image_in); \
    vsl_canny_smooth(const_cast<st const * const *>(sec.row_array()), sec.height(), sec.width(), \
                     _kernel, _width, _sub_area_OX, image_out); \
  }
  macro(VIL_BYTE, vil_byte)
  macro(VIL_UINT16, unsigned short)
  macro(VIL_RGB_BYTE, vil_rgb_byte)
  macro(VIL_FLOAT, float)
#undef macro
  else {
    cerr << "Image must be either UBYTE, SHORT, RGB or FLOAT." << endl;
    abort();
  }
}
