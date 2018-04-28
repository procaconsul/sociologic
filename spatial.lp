
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% /// Spatial Entities /// %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#const pi_= "3.14159265".

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% TYPES AND DEFAULT SPATIAL SYSTEM %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

type(point, E) :- spatial_system(id(default),  point2d(E, _,_)).
type(point, E) :- spatial_system(id(default),  point3d(E, _,_,_)).
type(line, E) :- spatial_system(id(default),  line2d(E, _,_,_,_)).
type(region, E) :- spatial_system(id(default),  circle(E, _,_,_)).
type(region, E) :- spatial_system(id(default),  sphere(E, _,_,_,_)).
type(region, E) :- spatial_system(id(default),  box2d(E, _,_,_,_)).
type(region, E) :- spatial_system(id(default),  box3d(E, _,_,_,_,_,_)).
type(region, E) :- spatial_system(id(default),  polygon(E, _)).

%%%
%% default spatial system entities if not specified

spatial_system(id(default),  point2d(P, X,Y)) :- point2d(P, X,Y).
spatial_system(id(default),  point3d(P, X,Y,Z)) :- point3d(P, X,Y,Z).
spatial_system(id(default),  line2d(L, X1,Y1,X2,Y2)) :- line2d(L, X1,Y1,X2,Y2).
spatial_system(id(default),  circle(C, X,Y,R)) :- circle(C, X,Y,R).
spatial_system(id(default),  sphere(S, X,Y,Z,R)) :- sphere(S, X,Y,Z,R).
spatial_system(id(default),  box2d(B, X,Y,W,H)) :- box2d(B, X,Y,W,H).
spatial_system(id(default),  box3d(B, X,Y,Z,W,H,D)) :- box3d(B, X,Y,Z,W,H,D).
spatial_system(id(default),  polygon(E, V)) :- polygon(E, V).

%%%
%% default spatial system relations if not specified

spatial_system(id(default),  spatial(R, A, B)) :- spatial(R,A,B).

spatial_system(id(default),  size(R, A, B)) :- size(R,A,B).
spatial_system(id(default),  topology(R, A, B)) :- topology(R,A,B).
spatial_system(id(default),  incidence(R, A, B)) :- incidence(R,A,B).
spatial_system(id(default),  orientation(R, A, B)) :- orientation(R,A,B).

-spatial_system(id(default),  size(R, A, B)) :- -size(R,A,B).
-spatial_system(id(default),  topology(R, A, B)) :- -topology(R,A,B).
-spatial_system(id(default),  incidence(R, A, B)) :- -incidence(R,A,B).
-spatial_system(id(default),  orientation(R, A, B)) :- -orientation(R,A,B).


%%%%%%%%%%%%
%%% POINT 2D %%%
%%%%%%%%%%%%

sgn_distance(System, Distance, Line, Point) :-
  spatial_system(System, spatial(_,Line,Point)),  %% TODO: include derived_from(Family, sgn_distance),
  spatial_system(System, line2d(Line, X1, Y1, X2, Y2)),
  spatial_system(System, point2d(Point, X3, Y3)),
  Distance = @distance2d_point_segment_(X3,Y3,X1,Y1,X2,Y2).

o_distance(System, Distance, Point, Line) :-
  spatial_system(System, spatial(_,Point,Line)), 
  spatial_system(System, point2d(Point, X1, Y1)),
  spatial_system(System, line2d(Line, X2, Y2, X3, Y3)),
  Distance = @mult_(@orientation_sign_(X1,Y1,X2,Y2,X3,Y3), @distance2d_point_line_(X1,Y1,X2,Y2,X3,Y3)).

%%%%%%%%%%%%
%%% POINT 3D %%%
%%%%%%%%%%%%


%%%%%%%%%%%%
%%% LINE 2D %%%
%%%%%%%%%%%%

sgn_distance(System, Distance, Line1, Line2) :-
  spatial_system(System, spatial(_,Line1,Line2)),
  spatial_system(System, line2d(Line1, X1, Y1, X2, Y2)),
  spatial_system(System, line2d(Line2, X3, Y3, X4, Y4)),
  Distance = @distance2d_segment_segment_(X1,Y1,X2,Y2,X3,Y3,X4,Y4).


%%%%%%%%%%%%
%%% CIRCLES %%%
%%%%%%%%%%%%


extent(System, Extent, Circle) :-
  spatial_system(System, circle(Circle, _, _, Radius)),
  Extent = @mult_(pi_, @sqr_(Radius)).

sgn_distance(System, Distance, Line, Circle) :-
  spatial_system(System, spatial(_,Line,Circle)), 
  spatial_system(System, line2d(Line, X1, Y1, X2, Y2)),
  spatial_system(System, circle(Circle, X3, Y3, Radius)),
  Distance = @subtract_(@distance2d_point_segment_(X3,Y3,X1,Y1,X2,Y2), Radius).


o_distance(System, Distance, Circle, Line) :-
  spatial_system(System, spatial(_,Circle,Line)),
  spatial_system(System, circle(Circle, X1, Y1, Radius)),
  spatial_system(System, line2d(Line, X2, Y2, X3, Y3)),
  Distance = @mult_(@orientation_sign_(X1,Y1,X2,Y2,X3,Y3),
                                 @max_("0", @subtract_(@distance2d_point_line_(X1,Y1,X2,Y2,X3,Y3), Radius))).
  

sgn_distance(System, Distance, Point, Circle) :-
  spatial_system(System, spatial(_,Point,Circle)), 
  spatial_system(System, point2d(Point, X1, Y1)),
  spatial_system(System, circle(Circle, X2, Y2, R2)),
  Distance = @subtract_(@distance2d_(X1,Y1,X2,Y2), R2).

minkowski_sum_diff_distance(System, SumDistance, DiffDistance, Circle1, Circle2) :-
  spatial_system(System, spatial(_,Circle1,Circle2)), 
  spatial_system(System, circle(Circle1, X1, Y1, R1)),
  spatial_system(System, circle(Circle2, X2, Y2, R2)),
  SumDistance = @subtract_(@distance2d_(X1,Y1,X2,Y2), @add_(R1,R2)),
  DiffDistance = @subtract_(@distance2d_(X1,Y1,X2,Y2), @abs_subtract_(R1,R2)).


%%%%%%%%%%%%
%%% SPHERES %%%
%%%%%%%%%%%%


extent(System, Radius, Sphere) :-
  spatial_system(System, sphere(Sphere, _, _, _, Radius)),
  Extent = @mult3_(@div_("4","3"), pi_, @cube_(Radius)).

sgn_distance(System, Distance, Point, Sphere) :-
  spatial_system(System, spatial(_,Point,Sphere)), 
  spatial_system(System, point3d(Point, X1, Y1, Z1)),
  spatial_system(System, sphere(Sphere, X2, Y2, Z2, R2)),
  Distance = @subtract_(@distance3d_(X1,Y1,Z1,X2,Y2,Z2), R2).

minkowski_sum_diff_distance(System, SumDistance, DiffDistance, Sphere1, Sphere2) :-
  spatial_system(System, spatial(_,Sphere1,Sphere2)), 
  spatial_system(System, sphere(Sphere1, X1, Y1, Z1, R1)),
  spatial_system(System, sphere(Sphere2, X2, Y2, Z2, R2)),
  SumDistance = @subtract_(@distance3d_(X1,Y1,Z1,X2,Y2,Z2), @add_(R1,R2)),
  DiffDistance = @subtract_(@distance3d_(X1,Y1,Z1,X2,Y2,Z2), @abs_subtract_(R1,R2)).



%%%%%%%%%%%
%%% BOX 2D %%%
%%%%%%%%%%%


extent(System, Extent, Box) :-
  spatial_system(System, box2d(Box, _, _, Width, Height)),
  Extent = @mult_(Width, Height).


sgn_distance(System, Distance, Point, Box) :-
  spatial_system(System, spatial(_,Point,Box)), 
  spatial_system(System, point2d(Point, X1, Y1)),
  spatial_system(System, box2d(Box, X2,Y2, Width, Height)),
  Distance = @manhattan_distance2d_(X1,Y1,X2,Y2,Width,Height).


minkowski_sum_diff_distance(System, SumDistance, DiffDistance, Box1,Box2) :-
  spatial_system(System, spatial(_,Box1,Box2)), 
  spatial_system(System, box2d(Box1, X1,Y1, Width1, Height1)),
  spatial_system(System, box2d(Box2, X2,Y2, Width2, Height2)),
  SumDistance = @manhattan_distance2d_(X1,Y1,X2,Y2,@add_(Width1,Width2),@add_(Height1,Height2)),
  DiffDistance = @manhattan_distance2d_(X1,Y1,X2,Y2,@abs_subtract_(Width1,Width2),@abs_subtract_(Height1,Height2)).



%%%%%%%%%%%
%%% BOX 3D %%%
%%%%%%%%%%%


extent(System, Extent, Box) :-
  spatial_system(System, box3d(Box, _, _, _, Width, Height, Depth)),
  Extent = @mult3_(Width, Height, Depth).


sgn_distance(System, Distance, Point, Box) :-
  spatial_system(System, spatial(_,Point,Box)), 
  spatial_system(System, point3d(Point, X1, Y1, Z1)),
  spatial_system(System, box3d(Box, X2,Y2, Z2, Width, Height, Depth)),
  Distance = @manhattan_distance3d_(X1,Y1,Z1,X2,Y2,Z2,Width,Height,Depth).


minkowski_sum_diff_distance(System, SumDistance, DiffDistance, Box1,Box2) :-
  spatial_system(System, spatial(_,Box1,Box2)), 
  spatial_system(System, box3d(Box1, X1,Y1, Z1, Width1, Height1, Depth1)),
  spatial_system(System, box3d(Box2, X2,Y2, Z2, Width2, Height2, Depth2)),
  SumDistance = @manhattan_distance3d_(X1,Y1,Z1,X2,Y2,Z2,@add_(Width1,Width2),@add_(Height1,Height2),@add_(Depth1,Depth2)),
  DiffDistance = @manhattan_distance3d_(X1,Y1,Z1,X2,Y2,Z2,@abs_subtract_(Width1,Width2),@abs_subtract_(Height1,Height2),@abs_subtract_(Depth1,Depth2)).


%%%%%%%%%%%%%
%%% POLYGONS %%%
%%%%%%%%%%%%%


extent(System, Extent, Polygon) :-
  spatial_system(System, polygon(Polygon,Vertices)),
  Extent = @polygon_area_(Vertices).

sgn_distance(System, Distance, Point, Polygon) :-
  spatial_system(System, spatial(_,Point,Polygon)), 
  spatial_system(System, point2d(Point, X1, Y1)),
  spatial_system(System, polygon(Polygon, V)),
  Distance = @distance2d_point_polygon_(X1,Y1,V).


sgn_distance(System, Distance, Line, Polygon) :-
  spatial_system(System, spatial(_,Line,Polygon)), 
  spatial_system(System, line2d(Line, X1, Y1, X2, Y2)),
  spatial_system(System, polygon(Polygon, V)),
  Distance = @distance2d_line_polygon_(X1,Y1,X2,Y2,V).


minkowski_sum_diff_distance(System, SumDistance, DiffDistance, Polygon1,Polygon2) :-
  spatial_system(System, spatial(_,Polygon1,Polygon2)), 
  spatial_system(System, polygon(Polygon1, V1)),
  spatial_system(System, polygon(Polygon2, V2)),
  (SumDistance, DiffDistance) = @poly_minkow_sum_diff_distance_(V1,V2).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% /// Spatial Relations /// %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%
%%% REGION-REGION SIZE %%%
%%%%%%%%%v%%%%%%%%%


spatial_system(S, size(smaller, A, B))  :-  spatial_system(S, spatial(size, A, B)), extent(S, Ae, A), extent(S, Be, B), 1 == @lt_(Ae, Be).
-spatial_system(S, size(smaller, A, B)) :-   spatial_system(S, spatial(size, A, B)), extent(S,Ae, A), extent(S,Be, B), 1 == @leq_(Be, Ae).

spatial_system(S, size(equi_size, A, B))  :-   spatial_system(S,spatial(size, A, B)), extent(S,Ae, A), extent(S,Be, B), 1 == @eq_(Ae, Be).
-spatial_system(S, size(equi_size, A, B)) :-   spatial_system(S,spatial(size, A, B)), extent(S,Ae, A), extent(S,Be, B), 1 == @not_eq_(Be, Ae).

spatial_system(S, size(larger, A, B))  :-   spatial_system(S,spatial(size, A, B)), extent(S,Ae, A), extent(S,Be, B), 1 == @lt_(Be, Ae).
-spatial_system(S, size(larger, A, B)) :-   spatial_system(S,spatial(size, A, B)), extent(S,Ae, A), extent(S,Be, B), 1 == @leq_(Ae, Be).


%%%%%%%%%%%%%%%%%%%%%
%%% ENTITY-ENTITY INCIDENCE %%%
%%%%%%%%%%%%%%%%%%%%%


spatial_system(S,incidence(interior, A, B))  :-  spatial_system(S,spatial(incidence, A, B)), type(region,B), sgn_distance(S, D, A, B), 1 == @lt_(D, "0").
-spatial_system(S,incidence(interior, A, B))  :-  spatial_system(S,spatial(incidence, A, B)), type(region,B), sgn_distance(S, D, A, B), 1 == @leq_("0", D).

spatial_system(S,incidence(on_boundary, A, B))  :-  spatial_system(S,spatial(incidence, A, B)), type(region,B), sgn_distance(S, D, A, B), 1 == @eq_("0", D).
-spatial_system(S,incidence(on_boundary, A, B))  :-  spatial_system(S,spatial(incidence, A, B)), type(region,B), sgn_distance(S, D, A, B), 1 == @not_eq_("0", D).

spatial_system(S,incidence(exterior, A, B))  :-  spatial_system(S,spatial(incidence, A, B)), type(region,B), sgn_distance(S, D, A, B), 1 == @lt_("0", D).
-spatial_system(S,incidence(exterior, A, B))  :-  spatial_system(S,spatial(incidence, A, B)), type(region,B), sgn_distance(S, D, A, B), 1 == @leq_(D, "0").

spatial_system(S,incidence(intersects, A, B)) :- spatial_system(S,spatial(incidence, A, B)), sgn_distance(S, D, A, B), 1 == @leq_(D, "0").
-spatial_system(S,incidence(intersects, A, B)) :- spatial_system(S,spatial(incidence, A, B)), sgn_distance(S, D, A, B), 1 == @lt_("0", D).

%%%%%%%%%%%%%%%%%%%%%
%%% ENTITY-LINE ORIENTATION %%%
%%%%%%%%%%%%%%%%%%%%%

spatial_system(S,orientation(left, A, B))  :-  spatial_system(S,spatial(orientation, A, B)), o_distance(S, D, A, B), 1 == @lt_("0", D).
-spatial_system(S,orientation(left, A, B))  :-  spatial_system(S,spatial(orientation, A, B)), o_distance(S, D, A, B), 1 == @leq_(D, "0").

spatial_system(S,orientation(right, A, B))  :-  spatial_system(S,spatial(orientation, A, B)), o_distance(S, D, A, B), 1 == @lt_(D, "0").
-spatial_system(S,orientation(right, A, B))  :-  spatial_system(S,spatial(orientation, A, B)), o_distance(S, D, A, B), 1 == @leq_("0", D).

spatial_system(S,orientation(collinear, A, B))  :-  spatial_system(S,spatial(orientation, A, B)), o_distance(S, D, A, B), 1 == @eq_("0", D).
-spatial_system(S,orientation(collinear, A, B))  :-  spatial_system(S,spatial(orientation, A, B)), o_distance(S, D, A, B), 1 == @not_eq_("0", D).

%%%%%%%%%%%%%%%%%%%%%%
%%% REGION-REGION TOPOLOGY %%%
%%%%%%%%%%%%%%%%%%%%%%


spatial(size,A,B) :- spatial(topology,A,B).  %% topology requires size comparison

spatial_system(S,topology(c, A, B)) :- spatial_system(S,spatial(topology, A, B)), minkowski_sum_diff_distance(S,D,_,A,B), 1 == @leq_(D, "0").
-spatial_system(S,topology(c, A, B)) :- spatial_system(S,spatial(topology, A, B)), minkowski_sum_diff_distance(S,D,_,A,B), 1 == @lt_("0", D).

spatial_system(S,topology(o, A, B)) :- spatial_system(S,spatial(topology, A, B)), minkowski_sum_diff_distance(S,D,_,A,B), 1 == @lt_(D, "0").
-spatial_system(S,topology(o, A, B)) :- spatial_system(S,spatial(topology, A, B)), minkowski_sum_diff_distance(S,D,_,A,B), 1 == @leq_("0", D).

spatial_system(S,topology(p, A, B)) :- spatial_system(S,spatial(topology, A, B)), -spatial_system(S,size(larger, A, B)), minkowski_sum_diff_distance(S,_,D,A,B), 1 == @leq_(D, "0").
-spatial_system(S,topology(p, A, B)) :- spatial_system(S,spatial(topology, A, B)), spatial_system(S,size(larger, A, B)).
-spatial_system(S,topology(p, A, B)) :- spatial_system(S,spatial(topology, A, B)), minkowski_sum_diff_distance(S,_,D,A,B), 1 == @lt_("0", D).

spatial_system(S,topology(dc, A, B)) :- -spatial_system(S,topology(c, A, B)).
-spatial_system(S,topology(dc, A, B)) :- spatial_system(S,topology(c, A, B)).

spatial_system(S,topology(dr, A, B)) :- -spatial_system(S,topology(o, A, B)).
-spatial_system(S,topology(dr, A, B)) :- spatial_system(S,topology(o, A, B)).

spatial_system(S,topology(ec, A, B)) :- spatial_system(S,topology(c, A, B)), spatial_system(S,topology(dr, A, B)).
-spatial_system(S,topology(ec, A, B)) :- spatial_system(S,spatial(topology, A, B)), minkowski_sum_diff_distance(S,D,_,A,B), 1 == @not_eq_(D, "0").

spatial_system(S,topology(pp, A, B)) :- spatial_system(S,spatial(topology, A, B)), spatial_system(S,size(smaller, A, B)),spatial_system(S,topology(p, A, B)).
-spatial_system(S,topology(pp, A, B)) :- spatial_system(S,spatial(topology, A, B)), -spatial_system(S,size(smaller, A, B)).
-spatial_system(S,topology(pp, A, B)) :- spatial_system(S,spatial(topology, A, B)), -spatial_system(S,topology(p, A, B)).

spatial_system(S,topology(tpp, A, B)) :- spatial_system(S,spatial(topology, A, B)), spatial_system(S,topology(pp, A, B)), minkowski_sum_diff_distance(S,_,D,A,B), 1 == @eq_(D, "0").
-spatial_system(S,topology(tpp, A, B)) :- spatial_system(S,spatial(topology, A, B)), -spatial_system(S,topology(pp, A, B)).
-spatial_system(S,topology(tpp, A, B)) :- spatial_system(S,spatial(topology, A, B)), minkowski_sum_diff_distance(S,_,D,A,B), 1 == @not_eq_(D, "0").

spatial_system(S,topology(ntpp, A, B)) :- minkowski_sum_diff_distance(S,_,D,A,B).
% spatial_system(S,topology(ntpp, A, B)) :- spatial_system(S,spatial(topology, A, B)), spatial_system(S,topology(pp, A, B)), minkowski_sum_diff_distance(S,_,D,A,B), 1 == @lt_(D, "0").
% -spatial_system(S,topology(ntpp, A, B)) :- spatial_system(S,spatial(topology, A, B)), -spatial_system(S,topology(pp, A, B)).
% -spatial_system(S,topology(ntpp, A, B)) :- spatial_system(S,spatial(topology, A, B)), minkowski_sum_diff_distance(S,_,D,A,B), 1 == @leq_("0", D).

spatial_system(S,topology(po, A, B)) :- spatial_system(S,spatial(topology, A, B)), spatial_system(S,topology(o, A, B)), minkowski_sum_diff_distance(S,_,D,A,B), 1 == @lt_("0", D).



%%%%%%%%%%%%%
%%% ASP-Python interface %%%
%%%%%%%%%%%%%

#script (python)      
import math
import Polygon
import Polygon.IO
import Polygon.Shapes

#########
## Comparators
#########

def eq_tolerance():
  return 0.0001
  
def lt_(a, b):
  return float(a.string) + eq_tolerance() < float(b.string)

def leq_(a, b):
  return float(a.string) <= float(b.string) + eq_tolerance()

def eq_(a, b):
  return eq_vals_(float(a.string), float(b.string))

def eq_vals_(a, b):
  return abs(a - b) < eq_tolerance()

def not_eq_(a, b):
  return abs(float(a.string) - float(b.string)) >= eq_tolerance()

#########
## Arithmetic
#########

def mult_(a, b):
  return str(float(a.string) * float(b.string))

def mult3_(a, b, c):
  return str(float(a.string) * float(b.string) * float(c.string))

def div_(a, b):
  return str(float(a.string) / float(b.string))

def add_(a, b):
  return str(float(a.string) + float(b.string))

def subtract_(a, b):
  return str(float(a.string) - float(b.string))

def abs_subtract_(a, b):
  return str(abs(float(a.string) - float(b.string)))

def abs_(a):
  return str(abs(float(a.string)))

def sqr_(a):
  v = float(a.string)
  return str(v*v)

def cube_(a):
  v = float(a.string)
  return str(v*v*v)

def max_(a,b):
  return str(max(float(a.string), float(b.string)))

def min_(a,b):
  return str(min(float(a.string), float(b.string)))

#########
## Geom Utils
#########

def distance2d_(x1, y1, x2, y2):
  x1v = float(x1.string)
  x2v = float(x2.string)
  y1v = float(y1.string)
  y2v = float(y2.string)
  return str(distance2d_vals_(x1v, y1v, x2v, y2v))

#  dx = x1v - x2v
#  dy = y1v - y2v
#  return str(math.sqrt(dx*dx + dy*dy))

def distance2d_vals_(x1v, y1v, x2v, y2v):
  dx = x1v - x2v
  dy = y1v - y2v
  return math.sqrt(dx*dx + dy*dy)

def distance3d_(x1, y1, z1, x2, y2, z2):
  x1v = float(x1.string)
  x2v = float(x2.string)
  y1v = float(y1.string)
  y2v = float(y2.string)
  z1v = float(z1.string)
  z2v = float(z2.string)
  dx = x1v - x2v
  dy = y1v - y2v
  dz = z1v - z2v
  return str(math.sqrt(dx*dx + dy*dy + dz*dz))
  
def sum_positive2_(v1, v2):
  sum = 0
  if(v1 > 0): sum += v1
  if(v2 > 0): sum += v2
  return sum

def sum_positive3_(v1, v2, v3):
  sum = sum_positive2_(v1,v2)
  if(v3 > 0): sum += v3
  return sum

def manhattan_distance2d_(x1,y1,x2,y2,w,h):
  xv = abs(float(x1.string) - float(x2.string))
  yv = abs(float(y1.string) - float(y2.string))
  wv = float(w.string) / 2
  hv = float(h.string) / 2
  
  dx = xv - wv
  dy = yv - hv
  
  psum = sum_positive2_(dx,dy)
  
  if(psum > 0):
    return str(psum)
  else:
    return str(max(dx,dy))

def manhattan_distance3d_(x1,y1,z1,x2,y2,z2,w,h,d):
  xv = abs(float(x1.string) - float(x2.string))
  yv = abs(float(y1.string) - float(y2.string))
  zv = abs(float(z1.string) - float(z2.string))
  wv = float(w.string) / 2
  hv = float(h.string) / 2
  dv = float(d.string) / 2
  
  dx = xv - wv
  dy = yv - hv
  dz = zv - dv
  
  psum = sum_positive3_(dx,dy, dz)
  
  if(psum > 0):
    return str(psum)
  else:
    return str(max(dx,dy,dz))  

def distance2d_point_segment_(px,py,x1,y1,x2,y2):
    pxv = float(px.string)
    pyv = float(py.string)
    x1v = float(x1.string)
    y1v = float(y1.string)
    x2v = float(x2.string)
    y2v = float(y2.string)
    return str(distance2d_point_segment_vals_(pxv,pyv,x1v,y1v,x2v,y2v))
      
def distance2d_point_segment_vals_(px,py,x1,y1,x2,y2):
      ## adapted from wykobi geometry library
      vx = x2 - x1
      vy = y2 - y1
      wx = px - x1
      wy = py - y1

      c1 = vx * wx + vy * wy

      if (c1 <= 0):
         return distance2d_vals_(px,py,x1,y1)

      c2 = vx * vx + vy * vy

      if(c2 <= c1):
         return distance2d_vals_(px,py,x2,y2)

      ratio = c1 / c2;
      return distance2d_vals_(px,py,x1 + ratio * vx,y1 + ratio * vy)

def distance2d_segment_segment_(x1,y1,x2,y2,x3,y3,x4,y4):
    x1v = float(x1.string)
    y1v = float(y1.string)
    x2v = float(x2.string)
    y2v = float(y2.string)
    x3v = float(x3.string)
    y3v = float(y3.string)
    x4v = float(x4.string)
    y4v = float(y4.string)
    return str(distance2d_segment_segment_vals_(x1v,y1v,x2v,y2v,x3v,y3v,x4v,y4v))

def distance2d_segment_segment_vals_(x1,y1,x2,y2,x3,y3,x4,y4):
      ## adapted from wykobi geometry library
      ux = x2 - x1
      uy = y2 - y1

      vx = x4 - x3
      vy = y4 - y3

      wx = x1 - x3
      wy = y1 - y3

      a  = (ux * ux + uy * uy)
      b  = (ux * vx + uy * vy)
      c  = (vx * vx + vy * vy)
      d  = (ux * wx + uy * wy)
      e  = (vx * wx + vy * wy)
      dt = a * c - b * b

      sc = dt 
      sn = dt 
      tc = dt 
      tn = dt 
      sd = dt
      td = dt

      if(eq_vals_(dt,0)):
         sn = 0
         sd = 1
         tn = e
         td = c

      else:
         sn = (b * e - c * d)
         tn = (a * e - b * d)
         if (sn < 0):
            sn = 0
            tn = e
            td = c

         elif(sn > sd):
            sn = sd
            tn = e + b
            td = c

      if(tn < 0):
         tn = 0
         if(-d < 0):
            sn = 0
         elif(-d > a):
            sn = sd
         else:
            sn = -d
            sd = a

      elif(tn > td):
         tn = td
         if((-d + b) < 0):
            sn = 0
         elif((-d + b) > a):
            sn = sd
         else:
            sn = (-d + b)
            sd = a

      if (eq_vals_(sn,0)):
         sc = 0
      else:
         sc = sn / sd

      if (eq_vals_(tn,0)):
         tc = 0
      else:
         tc = tn / td

      dx = wx + (sc * ux) - (tc * vx)
      dy = wy + (sc * uy) - (tc * vy)

      # BUG
      # return dx * dx + dy * dy 
      return math.sqrt(dx * dx + dy * dy)

def distance2d_point_line_(px,py,x1,y1,x2,y2):
    pxv = float(px.string)
    pyv = float(py.string)
    x1v = float(x1.string)
    y1v = float(y1.string)
    x2v = float(x2.string)
    y2v = float(y2.string)
    return str(distance2d_point_line_vals_(pxv,pyv,x1v,y1v,x2v,y2v))

def distance2d_point_line_vals_(px,py,x1,y1,x2,y2):
      ## adapted from wykobi geometry library
      vx = x2 - x1
      vy = y2 - y1
      wx = px - x1
      wy = py - y1

      c1 = vx * wx + vy * wy
      c2 = vx * vx + vy * vy

      ratio = c1 / c2

      nx = x1 + ratio * vx
      ny = y1 + ratio * vy

      return distance2d_vals_(px,py,nx,ny)

      ## determine orientation
      ## vx/vy < wx/wy
      ## vx*wy < wx*vy
      
      #d = distance2d_vals_(px,py,nx,ny)
      #if(vx*wy < wx*vy):
      #  d = -d
        
      #return d

def orientation_sign_(px,py,x1,y1,x2,y2):
    pxv = float(px.string)
    pyv = float(py.string)
    x1v = float(x1.string)
    y1v = float(y1.string)
    x2v = float(x2.string)
    y2v = float(y2.string)

    vx = x2v - x1v
    vy = y2v - y1v
    wx = pxv - x1v
    wy = pyv - y1v

    if(vx*wy < wx*vy):
      return str(-1)
    else:
      return str(1)

### Polygon interface

def x_(vs, idx):
  return float(vs[idx*2].string)

def y_(vs, idx):
  return float(vs[idx*2 + 1].string)
  
def vcount_(vs):
  return len(vs) / 2

def polygon_area_(vertices):
      ## adapted from wykobi geometry library

      vs = vertices.arguments
      
      if(vcount_(vs) < 3):
        return str(0)
      result = 0
      j = vcount_(vs) - 1
      
      for i in range(vcount_(vs)):
        result += (x_(vs,j) * y_(vs,i)) - (y_(vs,j) * x_(vs,i))
        j = i
      
      return str(abs(result * 0.5))

def distance2d_point_polygon_(px,py,vertices):
      vs = vertices.arguments
      pxv = float(px.string)
      pyv = float(py.string)
      
      last = vcount_(vs) - 1
      min_dist = distance2d_point_segment_vals_(pxv,pyv,x_(vs,last), y_(vs,last), x_(vs,0), y_(vs,0))

      for i in range(0, last):
        d = distance2d_point_segment_vals_(pxv,pyv	,x_(vs,i),y_(vs,i), x_(vs,i+1), y_(vs,i+1))
        min_dist = min(min_dist, d)
      
      if(point_in_polygon_(px,py,vertices)):
        min_dist = -min_dist
        
      return str(min_dist)


def distance2d_point_contour_vals_(pxv,pyv,vs):
      last = len(vs) - 1
      min_dist = distance2d_point_segment_vals_(pxv,pyv,vs[last][0], vs[last][1],vs[0][0],vs[0][1])

      for i in range(0, last):
        d = distance2d_point_segment_vals_(pxv,pyv, vs[i][0], vs[i][1],vs[i+1][0],vs[i+1][1])
        min_dist = min(min_dist, d)
      
      return min_dist
      
      
def distance2d_line_polygon_(px1,py1,px2,py2,vertices):
      vs = vertices.arguments
      px1v = float(px1.string)
      py1v = float(py1.string)
      px2v = float(px2.string)
      py2v = float(py2.string)
      
      last = vcount_(vs) - 1
      min_dist = distance2d_segment_segment_vals_(px1v,py1v,px2v,py2v,x_(vs,last), y_(vs,last), x_(vs,0), y_(vs,0))

      for i in range(0, last):
        d = distance2d_segment_segment_vals_(px1v,py1v,px2v,py2v, x_(vs,i),y_(vs,i), x_(vs,i+1), y_(vs,i+1))
        min_dist = min(min_dist, d)
      
      if(point_in_polygon_(px1,py1,vertices) or point_in_polygon_(px2,py2,vertices) ):
        min_dist = -min_dist
        
      return str(min_dist)

      
def point_in_polygon_(px,py,vertices):
    ## adapted from: http://geospatialpython.com/2011/01/point-in-polygon.html
    ## (originally from Simple Machine Forum post but link is now broken)
    ## ray casting method  
    
    x = float(px.string)
    y = float(py.string)
    
    vs = vertices.arguments
    n = vcount_(vs)
    inside = False

    p1x = x_(vs,0)
    p1y = y_(vs,0)
    for i in range(n+1):
        p2x = x_(vs, i % n)
        p2y = y_(vs, i % n)

        if y > min(p1y,p2y):
            if y <= max(p1y,p2y):
                if x <= max(p1x,p2x):
                    if p1y != p2y:
                        xints = (y-p1y)*(p2x-p1x)/(p2y-p1y)+p1x
                    if p1x == p2x or x <= xints:
                        inside = not inside
        p1x,p1y = p2x,p2y

    if (inside):
      return str(0)
    return str(1)
         
#######         
## Minkowski sum for two polygons
##
## simple (inefficient) algorithm from tutorial: www.boost.org/doc/libs/1_45_0/libs/polygon/doc/gtl_minkowski_tutorial.htm

## all edges convolution

def convolve(a,b,add):
  if(add):
    return (a[0] + b[0], a[1] + b[1])
  else:
    return (- a[0] + b[0], - a[1] + b[1])


def convolve_edges(a1,a2,b1,b2, add):
  return [convolve(a1,b1,add), convolve(a2,b1,add), convolve(a2,b2,add), convolve(a1,b2,add)]

def all_pairs_convole(pl1,pl2,add):
  n = len(pl1)
  m = len(pl2)
  first = True
  finalPg = 0
  for i in range(n):
    for j in range(m):
      a1 = pl1[i % n]
      a2 = pl1[(i + 1) % n]
      b1 = pl2[j % m]
      b2 = pl2[(j + 1) % m]
      pg = Polygon.Polygon(convolve_edges(a1,a2,b1,b2,add))
      if(first):
        finalPg = pg
        first = False
      else:
        finalPg = finalPg + pg

  return finalPg
      
def to_float_pairs_(sl):
  fl = []
  for i in range(0, vcount_(sl)):
    fl.append((x_(sl,i), y_(sl,i)))
  return fl
  
def nearest_contour_(px,py,m,holes_only):
  first = True
  for i in range(0, len(m)):
    if(not holes_only or m.isHole(i)):
      d = distance2d_point_contour_vals_(px,py,m.contour(i))
      if(first):
        first = False
        min_dist = d
      else:
        min_dist = min(min_dist, d)
        
  if(first):
    return -1 ## error: no valid contours
  else:
    return min_dist
    


def poly_minkow_sum_diff_distance_(pg1, pg2):

  if(vcount_(pg1.arguments) < 3 or vcount_(pg2.arguments) < 3):
    print "Warning: trying to derive topological relation with degenerate polygon (less than 3 vertices)."
    return (str(0),str(0))

  ## convert string vertex lists into float vertex lists
  vs1 = to_float_pairs_(pg1.arguments)
  vs2 = to_float_pairs_(pg2.arguments)

  ## create GPC polygon from pg2
  t2 = Polygon.Polygon(vs2)
  
  ## convolve edges (subset of Minkowski sum)
  tc = all_pairs_convole(vs1,vs2,False)
  
  ## translate convolution according to reference point on first polygon
  px = vs1[0][0]
  py = vs1[0][1]
  tc.shift(px, py)
  
  ## generate Wallgrun regions
  Ma = t2 + tc
  Mb = t2 - tc

  ## error check
  if(len(Ma) == 0 or len(tc) == 0):
    print "Warning: when deriving topological relations between polygons, dilation was degenerate (empty set). Aborting."
    return (str(0),str(0))

  dist_a = nearest_contour_(px,py,Ma,False)
  
  if(dist_a == -1):
    print "Warning: when deriving topological relations between polygons, no nearest contour was found. Aborting."
    return (str(0),str(0))
  
  if(Ma.isInside(px,py)):
    dist_a = -dist_a

  ## hacky debugging prints ...
  #print "****", len(Mb)
  #print Ma.center(0)
  #print "distance to center: ", distance2d_vals_(px,py,Ma.center(0)[0], Ma.center(0)[1])
  #print "is Ma(0) a hole?", Ma.isHole(0)
  
  
  if(len(Mb) == 0 and len(Ma) == 1):
    ## Case: difference has no interior (e.g. polygons are similar size) and Ma has no holes (union of polygon 1 with convolution is one-piece)
    (cx,cy) = Ma.center(0)
    dist_b = distance2d_vals_(px,py,cx,cy)
  elif(len(Mb) == 0 and len(Ma) > 1):
    ## Case: difference has no interior (e.g. polygons are similar size) and Ma has at least one hole, need to find distance to closest hole 
    dist_b = nearest_contour_(px,py,Ma, True)
    if(dist_b == -1):
      ## TODO: need to handle this case
      dist_b = 0 ## an error has occurred, e.g. perhaps there's more then one non-hole contour
  else:
    ## Case: normal
    dist_b = distance2d_point_contour_vals_(px,py,Mb.contour(0))
    if(Mb.isInside(px,py)):
       dist_b = -dist_b
  
  ### some debugging output
  #t1 = Polygon.Polygon(vs1)
  #p1 = Polygon.Shapes.Circle(0.5, (px,py), 8)

  #Polygon.IO.writeSVG('test.svg', (t1,t2,p1,))
  #Polygon.IO.writeSVG('test1.svg', (Ma, t1,t2,p1,))
  #Polygon.IO.writeSVG('test2.svg', (Mb, t1,t2,p1,))
  
  #Polygon.IO.writeSVG('test3.svg', (tc, t1,t2,p1))
  
  #Polygon.IO.writeSVG('test4.svg', (Ma,p1))
  #Polygon.IO.writeSVG('test5.svg', (Mb,p1))

  #Polygon.IO.writeSVG('test2.svg', (Mb,))

  return (str(dist_a), str(dist_b))
  
#end.




