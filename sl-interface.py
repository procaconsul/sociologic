#script (python)

import math
from scipy import arange


DEBUG = False
ANG_TOLERANCE = 20

def is_behind(_x1, _y1, _o1, _x2, _y2, _o2):
    # Returns 1 if oriented point (x1, y1, o1) is behind 
    # (x2, y2, o2); -1 otherwise.

    # following the convention in spatial.lp
    x1 = float(_x1.string)
    y1 = float(_y1.string)
    o1 = float(_o1.string)
    x2 = float(_x2.string)
    y2 = float(_y2.string)
    o2 = float(_o2.string)

    return is_behind_vals(x1, y1, o1, x2, y2, o2)

def is_behind_vals(x1, y1, o1, x2, y2, o2):
	 
    if DEBUG:
        print "{}, {}, {} | {}, {}, {}".format(x1, y1, o1, x2, y2, o2)	

    if (o1 != o2 and o1 not in arange(o2 - ANG_TOLERANCE, o2 + ANG_TOLERANCE)):
        return 1

    # I probably need to refine this to avoid presence of incorrect/redundant
    # elements in the solution
    if o1 in range(-45, 45):
      if (x1 < x2):
        return 0
    if (o1 in range(45, 135)):
    	if (y1 < y2):
  	    return 0
    if (o1 in range(135, 225)):
        if (x1 > x2):
            return 0
    if (o1 in range(225, 315)):
        if (y1 > y2):
            return 0
    return 1

def is_collinear(_x1, _y1, _x2, _y2, _x3, _y3):
   
    if DEBUG:
        print "{}, {} | {}, {} | {}, {}".format(_x1, _y1, _x2, _y2, _x2, _y3)	
        

    x1 = float(_x1.string)
    y1 = float(_y1.string)
    x2 = float(_x2.string)
    y2 = float(_y2.string)
    x3 = float(_x3.string)
    y3 = float(_y3.string)

    return is_collinear_vals(x1, y1, x2, y2, x3, y3)

def is_collinear_vals(x1, y1, x2, y2, x3, y3):
    if x2 == x3 and y2 == y3:
        if x1 == x2 or y1 == y2:
            return 0
        return 1

    a = abs((x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2)) / 2)
    
    if a == 0:
        if DEBUG:	
            print "  Collinear"
        return 0
    return 1

def in_bounds(_x1, _y1, _x2, _y2, _x3, _y3):
    x1 = float(_x1.string)
    y1 = float(_y1.string)
    x2 = float(_x2.string)
    y2 = float(_y2.string)
    x3 = float(_x3.string)
    y3 = float(_y3.string)

    return in_bounds_vals(x1, y1, x2, y2, x3, y3)

def in_bounds_vals(x1, y1, x2, y2, x3, y3):
    lb_x = min(x2, x3)
    ub_x = max(x2, x3)
    lb_y = min(y2, y3)
    ub_y = max(y2, y3)
    
    if (x1 >= lb_x and x1 <= ub_x and y1 >= lb_y and y1 <= ub_y):
	return 0
    return 1

def mid_point_x(_x1, _x2):
    x1 = float(_x1.string)
    x2 = float(_x2.string)
    return str(mid_point_x_vals(x1, x2))

def mid_point_x_vals(x1, x2):
    return (x1 + x2) / 2

def mid_point_y(_y1, _y2):
    y1 = float(_y1.string)
    y2 = float(_y2.string)
    return str(mid_point_y_vals(y1, y2))

def mid_point_y_vals(y1, y2):
    return (y1 + y2) / 2

def point_inside_polygon(_x, _y, vertices):
    
    x = float(_x.string)
    y = float(_y.string)

    vs = vertices.arguments
    
    v_xs = map(lambda x: float(x.string), vs[::2])
    v_ys = map(lambda y: float(y.string), vs[1::2])
    
    return point_inside_polygon_vals(x, y, v_xs, v_ys)

def point_inside_polygon_vals(x, y, v_xs, v_ys):
    
    assert len(v_xs) == len(v_ys)
    vs_n = len(v_xs)

    if x < min(v_xs) or x > max(v_xs) or y < min(v_ys) or y > max(v_ys):
        return 1

    c = False
    j = vs_n - 1

    for i in range(vs_n):
        if ((v_ys[i] > y) is not (v_ys[j] > y)) and \
                (x < (v_xs[j] - v_xs[i]) * (y - v_ys[i]) / (v_ys[j] - v_ys[i]) +
                        v_xs[i]):
                    c = not c
        j = i
    if c:
        # inside
        return 0
    #outside
    return 1

def opposite_directions(_o1, _o2):
    o1 = float(_o1.string)
    o2 = float(_o2.string)

    return opposite_directions_vals(o1, o2)

def opposite_directions_vals(o1, o2):
    OPPOSITE = 180
    diff =  abs(o1 - o2)
    if diff <= (OPPOSITE + ANG_TOLERANCE) and diff >= (OPPOSITE -
            ANG_TOLERANCE):
        return 0
    return 1

# PRE: the points are ordered from first to last in the queue
# IDEA: if path of agent intersects any of the invisible line between two people 
# queueing, then agent is going through queue
def intersect_queue(_x1, _y1, _x2, _y2, points_in_queue):
    x1 = float(_x1.string)
    y1 = float(_y1.string)
    x2 = float(_x2.string)
    y2 = float(_y2.string)
    
    pts = points_in_queue.arguments
    pts_xs = map(lambda x: float(x.string), pts[::2])
    pts_ys = map(lambda y: float(y.string), pts[1::2])

    return intersect_queue_vals(x1, y1, x2, y2, pts_xs, pts_ys)
    

def intersect_queue_vals(x1, y1, x2, y2, pts_xs, pts_ys):
    assert len(pts_xs) == len(pts_ys)
    n = len(pts_xs)

    for i in range(n-1):
        if intersects(x1, y1, x2, y2, pts_xs[i], pts_ys[i], pts_xs[i+1],
                pts_ys[i+1]:
                return True
    return False

def counter_clockwise(x1, y1, x2, y2, x3, y3):
    return (y3 - y1) * (x2 - x1) > (y2 - y1) * (x3 - x1)

# from the idea of Bryce Boe 
# at http://bryceboe.com/2006/10/23/line-segment-intersection-algorithm/
def intersects(x_a, y_a, x_b, y_b, x_c, y_c, x_d, y_d):
    return not is_collinear_vals(x_a, y_a, x_b, y_b, x_c, y_c) or \
        not is_collinear_vals(x_a, y_a, x_b, y_b, x_d, y_d) or \
        (counter_clockwise(x_a, y_a, x_c, y_c, x_d, y_d) != \
            counter_clockwise(x_b, y_b, x_c, y_c, x_d, y_d) and \
            counter_clockwise(x_a, y_a, x_b, y_b, x_c, y_c) != \
            counter_clockwise(x_a, y_a, x_b, y_b, x_d, y_d)) 

def here(m):
    print m
    return 0

#end.
