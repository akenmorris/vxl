#ifndef vsl_vertex_h_
#define vsl_vertex_h_
#ifdef __GNUC__
#pragma interface "vsl_vertex"
#endif
/*
  fsm@robots.ox.ac.uk
*/

#include <vsl/vsl_topology.h>


class vsl_vertex : public vsl_topology_base {
public:
  float x, y;
  vsl_vertex(float x_, float y_, int id_ = 0);
  ~vsl_vertex();
  float GetX() const { return x; }
  float GetY() const { return y; }
};

bool operator==(vsl_vertex const &a, vsl_vertex const &b);

// urgh
typedef vsl_vertex vsl_Vertex;

#endif
