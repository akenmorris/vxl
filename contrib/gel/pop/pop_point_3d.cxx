#include <pop/pop_point_3d.h>
#include <vcl_fstream.h>
#include <vcl_cmath.h>


//: constructor
pop_point_3d::pop_point_3d(pop_vertex *coordinate_system,vcl_vector<pop_parameter*> &params):
  vgl_point_3d<double>(params[0]->value_,params[1]->value_,params[2]->value_),
  pop_geometric_object(coordinate_system,params)
{
  this->update();
}

//: constructor
pop_point_3d::pop_point_3d(pop_vertex *coordinate_system,double x, double y, double z):
  vgl_point_3d<double>(x,y,z),
  pop_geometric_object(coordinate_system)
{

}
  

//: destructor
pop_point_3d::~pop_point_3d()
{

}

//: this is the update method 

void pop_point_3d::update()
{
	vgl_point_3d<double>::set(params_[0]->value_,params_[1]->value_,params_[2]->value_);
}


//: compute the cost between to geometric objects 
double pop_point_3d::cost(pop_geometric_object *other)
{
  pop_point_3d *p = other->cast_to_pop_point_3d();

  if(p->coordinate_system_ != this->coordinate_system_){
    vcl_cout << "Warning the systems do not match" << vcl_endl;
  }
  
  if(p){
    // the cost is the square distance between the two points
    

    double dx = (this->x() - p->x());
    double dy = (this->y() - p->y());
    double dz = (this->z() - p->z());
   
	
    
	double residule = dx*dx + dy*dy + dz*dz;
	return residule;
  }
  return 0;

}
