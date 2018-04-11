#script (python)

import math

def is_behind(x1, y1, o1, x2, y2, o2):
"""
Returns 1 if oriented point (x1, y1, o1) is behind 
(x2, y2, o2), -1 otherwise.
"""
    ANG_TOLERANCE = 5
    if (o1 != o2 and o1 not in range(o2 - ANG_TOLERANCE, o2 + ANG_TOLERANCE)):
        return str(-1)

    if (o1 in range(0, 90)):
        if (x1 < x2 || y1 < y2):
            return str(1)
    if (o1 in range(90, 180)):
        if (x1 > x2 || y1 < y2):
            return str(1)
    if (o1 in range(-180, -90)):
        if (x1 > x2 || y1 > y2):
            return str(1)
    if (o1 in range(-90, 0)):
        if (x1 < x2 || y1 > y2):
            return str(1)

#end.
