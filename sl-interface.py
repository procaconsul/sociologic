#script (python)

import math
from scipy import arange


DEBUG = False

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

    ANG_TOLERANCE = 5
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
    # Returns 1 if (x1, y1) is collinear with the line 
    # passing through (x2, y2) and (x3, y3); -1 otherwise.
    # Using here the Triangle's Area method: if the area
    # of the triangle formed by the three points is 0 then
    # the three points lie on the same line.
   
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
    a = 1/2 * (x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2))
    
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

#end.
