#include "common/spatial.lp".
#include "common/sl-interface.py".

%%% Background %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% CONSTANTS ##############################
%                                        #
% 120cm is the proxemic boundary         #
% of the personal space                  # 
#const personal_distance = "1.200".      %
#const squeezing_threshold = "0.100".    %
%                                        #
% indicative width of space for          #
% two people to walk side by side        #
#const two_people_width = "2.1".         %                             
%#########################################

% #####################
% GEOMETRICAL ENTITIES
%######################

path(E, T, P1, P2) :- pos(E, T, P1), pos(E, T+1, P2).

line_ent(L) :- line2d(L, _, _, _, _).

line2d(line(E, T), X1, Y1, X2, Y2) :- path(E, T, P1, P2), 
  point(P1, X1, Y1), 
  point(P2, X2, Y2).

line2d(line(E), X1, Y1, X2, Y2) :- wall(E, P1, P2), 
  point(P1, X1, Y1), 
  point(P2, X2, Y2).

spatial(incidence, L1, L2) :- line_ent(L1), line_ent(L2).
incidence(INC, L1, L2) :- spatial_system(id(default), incidence(INC, L1, L2)).

point(mid_p(W), X, Y) :- wall(W, P1, P2),
  point(P1, X1, Y1),
  point(P2, X2, Y2),
  X = @mid_point_x(X1, X2),
  Y = @mid_point_y(Y1, Y2).
  
point(P, X, Y) :- o_point(P, X, Y, _).
point2d(P, X, Y) :- point(P, X, Y).

% ######################
% POSITIONAL AND TEMPORAL RELATIONS
% ######################

behind(E1, E2, T) :- E1 != E2, pos(E1, T, P1), 
  path(E2, T, P2, P3), 
  o_point(P1, X1, Y1, O1), 
  o_point(P2, X2, Y2, O2), 
  point(P3, X3, Y3), 
  @is_behind(X1, Y1, O1, X2, Y2, O2) == 1, 
  @is_collinear(X1, Y1, X2, Y2, X3, Y3) == 1. 

in_front(E1, E2, T) :- behind(E2, E1, T).

distance(P1, P2, D) :- P1 != P2,
  point(P1, X1, Y1), 
  point(P2, X2, Y2), 
  D = @distance2d_(X1, Y1, X2, Y2).

inside(E, C, T) :- pos(E, T, P), 
  point(P, X, Y),
  polygon(C, VS),
  @point_inside_polygon(X, Y, VS) == 1.

after(T1, T2) :- time(T1), time(T2), T1 > T2.

% ###########
% ACTIONS
% ###########

overtake(E1, E2, T1) :- behind(E1, E2, T1), 
  not behind(E1, E2, T1+1), 
  in_front(E1, E2, T2), 
  after(T2, T1).

invades_personal_space(E1, E2, T) :- pos(E1, T, P1), 
  pos(E2, T, P2), 
  distance(P1, P2, D), 
  @lt_(D, personal_distance) == 1.

squeeze_by_wall(E1, E2, W, T) :- E1 != E2,
  pos(E1, T, P1), 
  point(P1, X1, Y1), 
  wall(W, P2, P3), 
  point(P2, X2, Y2), 
  point(P3, X3, Y3),
  pos(E2, T, P4),
  @distance2d_point_segment_(X1, Y1, X2, Y2, X3, Y3) < squeezing_threshold,
  distance(P1, P4, D), D < personal_distance.

% ############
% OTHERS
% ############

last_time_point(T) :- time(T), not time(T+1).

%%% Constraints %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% entity cannot be in two places at the same time point
:- pos(E, T, P1), pos(E, T, P2), P1 != P2.

% entities cannot "go through" walls
:- incidence(intersects, line(W), line(E, T)), wall(W, _, _), path(E, T, _, _).

% integrity constraints
:- pos(_, T, _), not time(T).
:- o_point(P, _, _, _), not pos(_, _, P).
