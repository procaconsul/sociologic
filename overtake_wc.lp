#include "sl-interface.py".

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


% wall 1 
wall(w1_s, w1_e).
point(w1_s, 10, 20).
point(w1_e, 60, 20).

% wall 2 
wall(w2_s, w2_e).
point(w2_s, 10, 10).
point(w2_e, 60, 10).


%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(agent1).
agent(agent2).

 %%%%%%%%%%%
% Example 1 %%%%%%%%%
 %%%%%%%%%%%

pos(agent1, 1, p1_1).
pos(agent1, 2, p1_2).
pos(agent1, 3, p1_3).

o_point(p1_1, "43.551", "12.800", "0.0") :- case(1).
o_point(p1_2, "44.551", "12.800", "0.0") :- case(1).
o_point(p1_3, "45.551", "12.800", "0.0") :- case(1).

o_point(p2_1, "42.551", "12.800", "0.0") :-  case(1).
o_point(p2_2, "46.551", "12.800", "0.0") :-  case(1).
o_point(p2_3, "47.551", "12.800", "0.0") :-  case(1).
% ------------------------------------------
o_point(p1_1, "43.551", "12.800", "0.0") :- case(2).
o_point(p1_2, "44.551", "12.800", "0.0") :- case(2).
o_point(p1_3, "45.551", "12.800", "0.0") :- case(2).

o_point(p2_1, "41.551", "12.800", "0.0") :- case(2).
o_point(p2_2, "43.551", "12.800", "0.0") :- case(2).
o_point(p2_3, "44.551", "12.800", "0.0") :- case(2).
%
{ case(1..2) }.

%%% Background %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

point(P, X, Y) :- o_point(P, X, Y, _).

behind(E1, E2, T) 
	:- E1 != E2, pos(E1, T, P1), pos(E2, T, P2), o_point(P1, X1, Y1, O1),
	   o_point(P2, X2, Y2, O2), pos(E2, T+1, P3), point(P3, X3, Y3), 
	   @is_behind(X1, Y1, O1, X2, Y2, O2) == 0, 
	   @is_collinear(X1, Y1, X2, Y2, X3, Y3) == 0. 
		     		
in_front(E1, E2, T) :- behind(E2, E1, T).

overtake(E1, E2, T1) :- behind(E1, E2, T1), in_front(E1, E2, T2), T2 > T1.

%%% Constraints %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% entity cannot be in two places at the same time point
:- pos(E, T, P1), pos(E, T, P2), P1 != P2.

% entity can be located on a wall
:- pos(E, _, P1), wall(P2, P3), point(P1, X1, Y1),
	point(P2, X2, Y2), point(P3, X3, Y3), 
  @in_bounds(X1, Y1, X2, Y2, X3, Y3) == 0,
	@is_collinear(X1, Y1, X2, Y2, X3, Y3) == 0.

%%% Hypothesis Space %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% overtake(V1, V2, C1) :- behind(V1, V2, C1), in_front(V1, V2, C2), rule(1, C1, C2).

%%% Goal %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
goal :- overtake(agent2, agent1, 1).
:- not goal.

%%% Optimisation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#minimize { X,X : case(X) }.

