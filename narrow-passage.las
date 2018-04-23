#include "sl-interface.py".
#include "spatial.lp".

%%%% Same direction in narrow alley, space enough for two people

%%%% Environment
%
% wall 1
% ----------------------------------------------
%        	^
%        	|
%        	|-- space for two entities to walk 
%        	|   side by side
%        	|
% wall 2 	v
% ----------------------------------------------
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



 %%%%%%%%%%%%%%%%%%%
% P-INTERPRETATIONS %%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%%%%%%%%%%%%%%%%%

%%% 1. 
% - same direction
% - overtaking
% - following behind
%
%
 
#pos(p1, {}, {}, {

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(agent1).
agent(agent2).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "10.0", "20.0").
point(w1_e, "10.0", "20.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "10.0", "10.0").
point(w2_e, "60.0", "10.0").

% Agent 1 overtakes agent 2 on the right, both moving East (<--)
pos(agent1, 1, p1_1).
pos(agent1, 2, p1_2).
pos(agent1, 3, p1_3).
pos(agent1, 4, p1_4).
pos(agent1, 5, p1_5).
pos(agent1, 6, p1_5).
pos(agent1, 7, p1_5).
pos(agent1, 8, p1_5).
pos(agent1, 9, p1_5).
pos(agent1, 10, p1_5).

pos(agent2, 1, p2_1).
pos(agent2, 2, p2_2).
pos(agent2, 3, p2_3).
pos(agent2, 4, p2_4).
pos(agent2, 5, p2_5).
pos(agent2, 6, p2_5).
pos(agent2, 7, p2_5).
pos(agent2, 8, p2_5).
pos(agent2, 9, p2_5).
pos(agent2, 10, p2_5).

o_point(p1_1, "40.551", "12.880", "180.0").
o_point(p1_2, "39.551", "12.800", "180.0"). 
o_point(p1_3, "38.551", "12.800", "180.0").
o_point(p1_4, "37.551", "12.800", "180.0"). 
o_point(p1_5, "36.551", "12.800", "180.0").
o_point(p1_6, "35.551", "12.800", "180.0").
o_point(p1_7, "34.551", "12.800", "180.0").
o_point(p1_8, "33.551", "12.800", "180.0").
o_point(p1_9, "32.551", "12.800", "180.0").
o_point(p1_10, "31.551", "12.800", "180.0").

o_point(p2_1, "42.551", "12.800", "180.0").
o_point(p2_2, "40.760", "12.800", "180.0").
o_point(p2_3, "39.763", "13.150", "170.0"). 
o_point(p2_4, "37.551", "14.000", "180.0").
o_point(p2_5, "35.551", "14.000", "180.0").
o_point(p2_6, "33.551", "14.000", "180.0").
o_point(p2_7, "32.551", "13.100", "190.0").
o_point(p2_8, "30.551", "12.800", "180.0").
o_point(p2_9, "28.551", "12.800", "180.0").
o_point(p2_10, "26.551", "12.800", "180.0").

}).

#pos(p2, {}, {}, {

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(agent1).
agent(agent2).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "10.0", "20.0").
point(w1_e, "10.0", "20.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "10.0", "10.0").
point(w2_e, "60.0", "10.0").



% agent 2 (faster) slows down and stays behind agent 1 (respecting ps)
pos(agent1, 1, p1_1).
pos(agent1, 2, p1_2).
pos(agent1, 3, p1_3).
pos(agent1, 4, p1_4).
pos(agent1, 5, p1_5).
pos(agent1, 6, p1_5).
pos(agent1, 7, p1_5).
pos(agent1, 8, p1_5).
pos(agent1, 9, p1_5).
pos(agent1, 10, p1_5).

pos(agent2, 1, p2_1).
pos(agent2, 2, p2_2).
pos(agent2, 3, p2_3).
pos(agent2, 4, p2_4).
pos(agent2, 5, p2_5).
pos(agent2, 6, p2_5).
pos(agent2, 7, p2_5).
pos(agent2, 8, p2_5).
pos(agent2, 9, p2_5).
pos(agent2, 10, p2_5).

o_point(p1_1, "40.551", "12.880", "180.0").
o_point(p1_2, "39.551", "12.800", "180.0"). 
o_point(p1_3, "38.551", "12.800", "180.0").
o_point(p1_4, "37.551", "12.800", "180.0"). 
o_point(p1_5, "36.551", "12.800", "180.0").
o_point(p1_6, "35.551", "12.800", "180.0").
o_point(p1_7, "34.551", "12.800", "180.0").
o_point(p1_8, "33.551", "12.800", "180.0").
o_point(p1_9, "32.551", "12.800", "180.0").
o_point(p1_10, "31.551", "12.800", "180.0").

o_point(p2_1, "43.551", "12.800", "180.0").
o_point(p2_2, "41.640", "12.800", "180.0").
o_point(p2_3, "40.553", "12.800", "180.0"). 
o_point(p2_4, "39.000", "12.800", "180.0").
o_point(p2_5, "38.000", "12.800", "180.0").
o_point(p2_6, "37.000", "12.800", "180.0").
o_point(p2_7, "36.000", "12.800", "180.0").
o_point(p2_8, "35.000", "12.800", "180.0").
o_point(p2_9, "34.000", "12.800", "180.0").
o_point(p2_10, "33.000", "12.800", "180.0").

}).

#pos(p3, {}, {}, {

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(agent1).
agent(agent2).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "10.0", "20.0").
point(w1_e, "10.0", "20.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "10.0", "10.0").
point(w2_e, "60.0", "10.0").



% agent 2 (faster) slows down and stays behind agent 1 (respecting ps)
pos(agent1, 1, p1_1).
pos(agent1, 2, p1_2).
pos(agent1, 3, p1_3).
pos(agent1, 4, p1_4).
pos(agent1, 5, p1_5).
pos(agent1, 6, p1_5).
pos(agent1, 7, p1_5).
pos(agent1, 8, p1_5).
pos(agent1, 9, p1_5).
pos(agent1, 10, p1_5).

pos(agent2, 1, p2_1).
pos(agent2, 2, p2_2).
pos(agent2, 3, p2_3).
pos(agent2, 4, p2_4).
pos(agent2, 5, p2_5).
pos(agent2, 6, p2_5).
pos(agent2, 7, p2_5).
pos(agent2, 8, p2_5).
pos(agent2, 9, p2_5).
pos(agent2, 10, p2_5).

o_point(p1_1, "40.051", "12.880", "180.0").
o_point(p1_2, "39.051", "12.800", "180.0"). 
o_point(p1_3, "38.051", "12.800", "180.0").
o_point(p1_4, "37.051", "12.800", "180.0"). 
o_point(p1_5, "36.051", "12.800", "180.0").
o_point(p1_6, "35.051", "12.800", "180.0").
o_point(p1_7, "34.051", "12.800", "180.0").
o_point(p1_8, "33.051", "12.800", "180.0").
o_point(p1_9, "32.051", "12.800", "180.0").
o_point(p1_10, "31.051", "12.800", "180.0").

o_point(p2_1, "41.551", "12.800", "180.0").
o_point(p2_2, "40.640", "12.800", "180.0").
o_point(p2_3, "39.553", "12.800", "180.0"). 
o_point(p2_4, "38.000", "12.800", "180.0").
o_point(p2_5, "37.000", "12.800", "180.0").
o_point(p2_6, "36.000", "12.800", "180.0").
o_point(p2_7, "35.000", "12.800", "180.0").
o_point(p2_8, "34.000", "12.800", "180.0").
o_point(p2_9, "33.000", "12.800", "180.0").
o_point(p2_10, "32.000", "12.800", "180.0").

}).

#brave_ordering(p1, p2).
#brave_ordering(p1, p3).
#brave_ordering(p2, p3).

%%% Background %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 120cm is the proxemic boundary of the personal space
#const personal_distance = "1.200". 

point(P, X, Y) :- o_point(P, X, Y, _).

behind(E1, E2, T) :- E1 != E2, pos(E1, T, P1), pos(E2, T, P2), o_point(P1, X1, Y1, O1), o_point(P2, X2, Y2, O2), pos(E2, T+1, P3), point(P3, X3, Y3), @is_behind(X1, Y1, O1, X2, Y2, O2) == 0, @is_collinear(X1, Y1, X2, Y2, X3, Y3) == 0. 

in_front(E1, E2, T) :- behind(E2, E1, T).

overtake(E1, E2, T1) :- behind(E1, E2, T1), in_front(E1, E2, T2), after(T2, T1).

after(T1, T2) :- pos(_, T1, _), pos(_, T2, _), T1 > T2.

path(E, T, line(E, T)) :- pos(E, T, _), pos(E, T+1, _).

line2d(line(E, T), X1, Y1, X2, Y2) :- pos(E, T, P1), pos(E, T+1, P2), point(P1, X1, Y1), point(P2, X2, Y2).
line2d(line(E), X1, Y1, X2, Y2) :- wall(E, P1, P2), point(P1, X1, Y1), point(P2, X2, Y2).

spatial(incidence, L1, L2) :- line2d(L1, _, _, _, _), line2d(L2, _, _, _, _).
incidence(INC, L1, L2) :- spatial_system(id(default), incidence(INC, L1, L2)).

invades_personal_space(E1, E2, T) :- pos(E1, T, P1), point(P1, X1, Y1), pos(E2, T, P2), point(P2, X2, Y2), @distance2d_(X1, Y1, X2, Y2) < personal_distance. 

%%% Constraints %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% entity cannot be in two places at the same time point
:- pos(E, T, P1), pos(E, T, P2), P1 != P2.

% entity can be located on a wall (covered by constraint below)
% :- pos(E, _, P1), wall(_, P2, P3), point(P1, X1, Y1), point(P2, X2, Y2), point(P3, X3, Y3), @in_bounds(X1, Y1, X2, Y2, X3, Y3) == 0, @is_collinear(X1, Y1, X2, Y2, X3, Y3) == 0.

% entities cannot "go through" walls
:- incidence(intersects, line(W), L), wall(W, _, _), path(_, _, L).

%%% Hypothesis Space %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#modeo(1, overtake(var(ent), var(ent), var(time))).
#modeo(1, invades_personal_space(var(ent), var(ent), var(time))).
#maxp(2).
#weight(-1).
#weight(1).
#weight(2).

%%% Display %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% #show overtake/3.
% #show behind/3.
% #show in_front/3.

