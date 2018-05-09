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
        warning_msg("Behind check,", [x1, y1, o1, x2, y2, o2])	

    if (o1 != o2 and o1 not in arange(o2 - ANG_TOLERANCE, o2 + ANG_TOLERANCE)):
        return False

    # I probably need to refine this to avoid presence of incorrect/redundant
    # elements in the solution
    if o1 in range(-45, 45):
        return (x1 < x2)
    if (o1 in range(45, 135)):
    	return (y1 < y2)
    if (o1 in range(135, 225)):
        return (x1 > x2)
    if (o1 in range(225, 315)):
        return (y1 > y2)
    return False

def is_collinear(_x1, _y1, _x2, _y2, _x3, _y3):

    x1 = float(_x1.string)
    y1 = float(_y1.string)
    x2 = float(_x2.string)
    y2 = float(_y2.string)
    x3 = float(_x3.string)
    y3 = float(_y3.string)

    return is_collinear_vals(x1, y1, x2, y2, x3, y3)

def is_collinear_vals(x1, y1, x2, y2, x3, y3):
    
    if DEBUG:
        warning_msg("Collinearity check,", [x1, y1, x2, y2, x2, y3])	
    
    if x2 == x3 and y2 == y3:
        if x1 == x2 or y1 == y2:
            return True
        return False

    t_area = abs((x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2)) / 2)
    
    return t_area == 0

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
    
    return (x1 >= lb_x and x1 <= ub_x and y1 >= lb_y and y1 <= ub_y)

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
    return c

def opposite_directions(_o1, _o2):
    o1 = float(_o1.string)
    o2 = float(_o2.string)

    return opposite_directions_vals(o1, o2)

def opposite_directions_vals(o1, o2):
    OPPOSITE = 180
    diff =  abs(o1 - o2)
    return diff <= (OPPOSITE + ANG_TOLERANCE) and \
            diff >= (OPPOSITE - ANG_TOLERANCE)

def counter_clockwise(x1, y1, x2, y2, x3, y3):
    return (y3 - y1) * (x2 - x1) > (y2 - y1) * (x3 - x1)

def intersects(_x_a, _y_a, _x_b, _y_b, _x_c, _y_c, _x_d, _y_d):
    x_a = float(_x_a.string)
    y_a = float(_y_a.string)
    x_b = float(_x_b.string)
    y_b = float(_y_b.string)
    x_c = float(_x_c.string)
    y_c = float(_y_c.string)
    x_d = float(_x_d.string)
    y_d = float(_y_d.string)
    return intersects_vals(x_a, y_a, x_b, y_b, x_c, y_c, x_d, y_d)

# from the idea of Bryce Boe 
# at http://bryceboe.com/2006/10/23/line-segment-intersection-algorithm/
def intersects_vals(x_a, y_a, x_b, y_b, x_c, y_c, x_d, y_d):
    if (x_a == x_b and y_a == y_b) or \
            (x_c == x_d and y_c == y_d):
                if DEBUG:
                    warning_msg("Degenerate Segment!",\
                            [x_a, y_a, x_b, y_b, x_c, y_c, x_d, y_d])
                return False

    if (is_collinear_vals(x_c, y_c, x_a, y_a, x_b, y_b) and
        in_bounds_vals(x_c, y_c, x_a, y_a, x_b, y_b)) or \
            (is_collinear_vals(x_d, y_d, x_a, y_a, x_b, y_b) and \
            in_bounds_vals(x_d, y_d, x_a, y_a, x_b, y_b)):
                return True

    return (counter_clockwise(x_a, y_a, x_c, y_c, x_d, y_d) != \
            counter_clockwise(x_b, y_b, x_c, y_c, x_d, y_d) and \
            counter_clockwise(x_a, y_a, x_b, y_b, x_c, y_c) != \
            counter_clockwise(x_a, y_a, x_b, y_b, x_d, y_d)) 

def warning_msg(msg, vals):
    print msg + " values: " + str(map(lambda e: "%.3f" % e, vals))  

#end.
