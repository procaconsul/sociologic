
%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(agent1).
agent(agent2).

 %%%%%%%%%%%
% Example 1 %%%%%%%%%
 %%%%%%%%%%%

%pos(agent1, 1, p1_1).
%pos(agent1, 2, p1_2).
%pos(agent1, 3, p1_3).
%
%o_point(p1_1, "43.551", "12.800", "0.0").
%o_point(p1_2, "44.551", "12.800", "0.0").
%o_point(p1_3, "45.551", "12.800", "0.0").
%
%o_point(p2_1, "42.551", "12.800", "0.0").
%o_point(p2_2, "46.551", "12.800", "0.0").
%o_point(p2_3, "47.551", "12.800", "0.0").

%{ rule(1, 1..2, 2..3) }.

 %%%%%%%%%%%
% Example 2 %%%%%%%%%
 %%%%%%%%%%%

%pos(agent1, 1, p1_1).
%pos(agent1, 2, p1_2).
%pos(agent1, 3, p1_3).
%pos(agent1, 4, p1_4).
%pos(agent1, 5, p1_5).
%
%o_point(p1_1, "40.551", "12.880", "0.0").
%o_point(p1_2, "41.551", "12.800", "0.0").
%o_point(p1_3, "42.551", "12.800", "0.0").
%o_point(p1_4, "43.551", "12.800", "0.0").
%o_point(p1_5, "44.551", "12.800", "0.0").
%
%pos(agent2, 1, p2_1).
%pos(agent2, 2, p2_2).
%pos(agent2, 3, p2_3).
%pos(agent2, 4, p2_4).
%pos(agent2, 5, p2_5).
%
%o_point(p2_1, "38.551", "12.800", "0.0").
%o_point(p2_2, "40.540", "12.800", "0.0").
%o_point(p2_3, "42.463", "12.800", "0.0").
%o_point(p2_4, "44.508", "12.800", "0.0").
%o_point(p2_5, "46.551", "12.800", "0.0").
%
%{ rule(1, 1..4, 2..5) }.

 %%%%%%%%%%%
% Example 3 %%%%%%%%%
 %%%%%%%%%%%

%pos(agent1, 1, p1_1).
%pos(agent1, 2, p1_2).
%pos(agent1, 3, p1_3).
%pos(agent1, 4, p1_4).
%pos(agent1, 5, p1_5).
%
%o_point(p1_1, "40.551", "12.880", "0.0").
%o_point(p1_2, "41.551", "12.800", "0.0").
%o_point(p1_3, "42.551", "12.800", "0.0").
%o_point(p1_4, "43.551", "12.800", "0.0").
%o_point(p1_5, "44.551", "12.800", "0.0").
%
%pos(agent2, 1, p2_1).
%pos(agent2, 2, p2_2).
%pos(agent2, 3, p2_3).
%pos(agent2, 4, p2_4).
%pos(agent2, 5, p2_5).
%
%o_point(p2_1, "38.551", "12.800", "0.0").
%o_point(p2_2, "40.540", "12.800", "0.0").
%o_point(p2_3, "42.463", "13.800", "0.0"). % one step side-by-side
%o_point(p2_4, "44.508", "12.800", "0.0").
%o_point(p2_5, "46.551", "12.800", "0.0").
%
%{ rule(1, 1..4, 2..5) }.

 %%%%%%%%%%%
% Example 4 %%%%%%%%%
 %%%%%%%%%%%

% this example should lead to unsatisfibility 

pos(agent1, 1, p1_1).
pos(agent1, 2, p1_2).
pos(agent1, 3, p1_3).

o_point(p1_1, "43.551", "12.800", "0.0").
o_point(p1_2, "44.551", "12.800", "0.0").
o_point(p1_3, "45.551", "12.800", "0.0").

o_point(p2_1, "42.551", "12.800", "0.0").
o_point(p2_2, "43.551", "12.800", "0.0").
o_point(p2_3, "44.551", "12.800", "0.0").

{ rule(1, 1..2, 2..3) }.

%%% Background %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% entity can be in two places at the same time point
:- pos(E, T, P1), pos(E, T, P2), P1 != P2.

% from oriented point to point
point(P, X, Y) :- o_point(P, X, Y, _).

behind(E1, E2, T) 
	:- E1 != E2, pos(E1, T, P1), pos(E2, T, P2), o_point(P1, X1, Y1, O1),
	   o_point(P2, X2, Y2, O2), pos(E2, T+1, P3), point(P3, X3, Y3), 
	   @is_behind(X1, Y1, O1, X2, Y2, O2) == 0, @is_collinear(X1, Y1, X2, Y2, X3, Y3) == 0. 
		     		
in_front(E1, E2, T) :- behind(E2, E1, T).

%%% Hypothesis Space %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
overtake(V1, V2, C1) :- behind(V1, V2, C1), in_front(V1, V2, C2), rule(1, C1, C2).

%%% Goal %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
goal :- overtake(agent2, agent1, 1).
:- not goal.

% -----------------------------------------------------------------------------------------------
#script (python)

import math

DEBUG = True

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
   
	 
    if DEBUG:
        print "{}, {}, {} | {}, {}, {}".format(x1, y1, o1, x2, y2, o2)	

	    
    ANG_TOLERANCE = 5
    if (o1 != o2 and o1 not in range(o2 - ANG_TOLERANCE, o2 + ANG_TOLERANCE)):
        return 1

    # I probably need to refine this to avoid presence of incorrect/redundant
    # elements in the solution
    if (o1 in range(0, 90)):
    	if (x1 < x2 or y1 < y2):
  	    return 0
    if (o1 in range(90, 180)):
        if (x1 > x2 or y1 < y2):
            return 0
    if (o1 in range(-180, -90)):
        if (x1 > x2 or y1 > y2):
            return 0
    if (o1 in range(-90, 0)):
        if (x1 < x2 or y1 > y2):
            return 0
    return 1


def is_collinear(_x1, _y1, _x2, _y2, _x3, _y3):
    # Returns 1 if (x1, y1) is collinear with the line 
    # passing through (x2, y2) and (x3, y3); -1 otherwise.
    # Using here the Triangle's Area method: if the area
    # of the triangle formed by the three points is 0 then
    # the three points lie on the same line.

    x1 = float(_x1.string)
    y1 = float(_y1.string)
    x2 = float(_x2.string)
    y2 = float(_y2.string)
    x3 = float(_x3.string)
    y3 = float(_y3.string)

    a = 1/2 * (x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2))
    
    if a == 0:
        if DEBUG:	
            print "  Collinear"
        return 0
    return 1

#end.
