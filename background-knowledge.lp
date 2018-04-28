#include "spatial.lp".
#include "sl-interface.py".

%%% Background %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% CONSTANTS ##############################
%                                        #
% 120cm is the proxemic boundary         #
% of the personal space                  # 
#const personal_distance = "1.200".      
#const squeezing_threshold = "0.100".  

% indicative width of space for          #
% two people to walk side by side        #
#const two_people_width = "2.0".                                       
#const mid_length_tolerance = "2.0".
%#########################################

% #####################
% GEOMETRICAL ENTITIES
%######################

mid_point(mid_p(W), X, Y) :- wall(W, P1, P2),
  point(P1, X1, Y1),
  point(P2, X2, Y2),
  X = @mid_point_x(X1, X2),
  Y = @mid_point_y(Y1, Y2).
  
point(P, X, Y) :- o_point(P, X, Y, _).
point2d(P, X, Y) :- point(P, X, Y).

line2d(L, X1, Y1, X2, Y2) :- path(_, _, P1, P2, L), point(P1, X1, Y1), point(P2, X2, Y2).
line2d(line(E), X1, Y1, X2, Y2) :- wall(E, P1, P2), point(P1, X1, Y1), point(P2, X2, Y2).

% s                    e
% +--------------------+
%                      | 
%                      | <-- this (virtual) line here
%                      |
% +--------------------+
% s                    e
line2d(line(C, end), X1, Y1, X2, Y2) :- corridor(C, W1, W2),
  wall(W1, _, P1),
  wall(W2, _, P2), 
  point(P1, X1, Y1),
  point(P2, X2, Y2).

% same as above but for the starting points
line2d(line(C, start), X1, Y1, X2, Y2) :- corridor(C, W1, W2),
  wall(W1, P1, _),
  wall(W2, P2, _), 
  point(P1, X1, Y1),
  point(P2, X2, Y2).

line2d(line(P1, P2), X1, Y1, X2, Y2) :- mid_point(P1, X1, Y1), mid_point(P2, X2, Y2).
line_ent(L) :- line2d(L, _, _, _, _).

spatial(incidence, L1, L2) :- line_ent(L1), line_ent(L2).
incidence(INC, L1, L2) :- spatial_system(id(default), incidence(INC, L1, L2)).

% Vertices are stored in clockwise order.
polygon(C, VS) :- corridor(C, W1, W2),
  wall(W1, P1, P2),
  wall(W2, P3, P4),
  point(P1, X1, Y1),
  point(P2, X2, Y2),
  point(P3, X3, Y3),
  point(P4, X4, Y4),
  VS = vs(X1, Y1, X2, Y2, X4, Y4, X3, Y3).

% ######################
% POSITIONAL AND TEMPORAL RELATIONS
% ######################

behind(E1, E2, T) :- E1 != E2, pos(E1, T, P1), 
  path(E2, T, P2, P3, _), 
  o_point(P1, X1, Y1, O1), 
  o_point(P2, X2, Y2, O2), 
  point(P3, X3, Y3), 
  @is_behind(X1, Y1, O1, X2, Y2, O2) == 0, 
  @is_collinear(X1, Y1, X2, Y2, X3, Y3) == 0. 

in_front(E1, E2, T) :- behind(E2, E1, T).

distance(P1, P2, D) :-  point(P1, X1, Y1), 
  point(P2, X2, Y2), 
  D = @distance2d_(X1, Y1, X2, Y2).

inside(E, C, T) :- pos(E, T, P), 
  point(P, X, Y),
  polygon(C, VS),
  @point_inside_polygon(X, Y, VS) == 0.

after(T1, T2) :- pos(_, T1, _), pos(_, T2, _), T1 > T2.

% #############
% ACTIONS
% #############

overtake(E1, E2, T1) :- behind(E1, E2, T1), 
  in_front(E1, E2, T2), 
  after(T2, T1).

invades_personal_space(E1, E2, T) :- pos(E1, T, P1), 
  point(P1, X1, Y1), 
  pos(E2, T, P2), 
  point(P2, X2, Y2), 
  @distance2d_(X1, Y1, X2, Y2) < personal_distance.

squeeze_by_wall(E, W, T) :- pos(E, T, P), 
  point(P, X1, Y1), 
  wall(W, P2, P3), 
  point(P2, X2, Y2), 
  point(P3, X3, Y3), 
  @distance2d_point_segment_(X1, Y1, X2, Y2, X3, Y3) < squeezing_threshold.
  
step_out_and_wait(E1, E2, C, T) :- corridor(C, _, _),
  inside(E1, C, T),
  inside(E2, C, T),
  not inside(E1, C, T+1),
  after(T1, T+1),
  not inside(E2, C, T1),
  inside(E1, C, T1).

% ############
% OTHERS
% ############

path(E, T, P1, P2, line(E, T)) :- pos(E, T, P1), pos(E, T+1, P2).

one_person_width(C) :- corridor(C, W1, W2),
  line_ent(line(W1)), 
  line_ent(line(W2)), 
  sgn_distance(id(default), D, line(W1), line(W2)), 
  D < two_people_width, W1 != W2.

% assuming corridors are made of walls of the same length
past_mid(E, C, T) :- path(E, Tb, _, _, L1),
  after(T, Tb),
  corridor(C, W1, W2),
  mid_point(mid_p(W1), X1, Y1),
  mid_point(mid_p(W2), X2, Y2),
  line2d(L2, X1, Y1, X2, Y2),
  incidence(intersects, L1, L2).

%%% Constraints %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% entity cannot be in two places at the same time point
:- pos(E, T, P1), pos(E, T, P2), P1 != P2.

% entities cannot "go through" walls
:- incidence(intersects, line(W), L), wall(W, _, _), path(_, _, _, _, L).


