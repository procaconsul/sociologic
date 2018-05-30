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
point(w1_s, "10.0", "20.0").
point(w1_e, "10.0", "20.0").

% wall 2 
wall(w2_s, w2_e).
point(w2_s, "10.0", "10.0").
point(w2_e, "60.0", "10.0").


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
%pos(agent2, 1, p2_1).
%pos(agent2, 2, p2_2).
%pos(agent2, 3, p2_3).
%
%o_point(p1_1, "43.551", "12.800", "0.0") :- case(1).
%o_point(p1_2, "44.551", "12.800", "0.0") :- case(1).
%o_point(p1_3, "45.551", "12.800", "0.0") :- case(1).
%
%o_point(p2_1, "42.551", "12.800", "0.0") :-  case(1).
%o_point(p2_2, "46.551", "12.800", "0.0") :-  case(1).
%o_point(p2_3, "47.551", "12.800", "0.0") :-  case(1).
%% ------------------------------------------
%o_point(p1_1, "43.551", "12.800", "0.0") :- case(2).
%o_point(p1_2, "44.551", "12.800", "0.0") :- case(2).
%o_point(p1_3, "45.551", "12.800", "0.0") :- case(2).
%
%o_point(p2_1, "41.551", "12.800", "0.0") :- case(2).
%o_point(p2_2, "43.551", "12.800", "0.0") :- case(2).
%o_point(p2_3, "44.551", "12.800", "0.0") :- case(2).
%
%1 { case(1..2) } 1.

 %%%%%%%%%%%
% Example 2 %%%%%%%%%
 %%%%%%%%%%%

pos(agent1, 1, p1_1).
pos(agent1, 2, p1_2).
pos(agent1, 3, p1_3).
pos(agent1, 4, p1_4).
pos(agent1, 5, p1_5).

pos(agent2, 1, p2_1).
pos(agent2, 2, p2_2).
pos(agent2, 3, p2_3).
pos(agent2, 4, p2_4).
pos(agent2, 5, p2_5).

o_point(p1_1, "40.551", "12.880", "180.0") :- case(1).
o_point(p1_2, "39.551", "12.800", "180.0") :- case(1). 
o_point(p1_3, "38.551", "12.800", "180.0") :- case(1).
o_point(p1_4, "37.551", "12.800", "180.0") :- case(1). 
o_point(p1_5, "36.551", "12.800", "180.0") :- case(1).

o_point(p2_1, "42.551", "12.800", "177.0") :- case(1).
o_point(p2_2, "40.640", "12.800", "177.0") :- case(1).
o_point(p2_3, "38.663", "13.800", "180.0") :- case(1). % one step side-by-side
o_point(p2_4, "36.508", "12.800", "184.0") :- case(1).
o_point(p2_5, "34.551", "12.800", "182.0") :- case(1).
% -----------------------------------------------------
o_point(p1_1, "40.551", "12.880", "180.0") :- case(2).
o_point(p1_2, "39.551", "12.800", "180.0") :- case(2). 
o_point(p1_3, "38.551", "12.800", "180.0") :- case(2).
o_point(p1_4, "37.551", "12.800", "180.0") :- case(2). 
o_point(p1_5, "36.551", "12.800", "180.0") :- case(2).

o_point(p2_1, "42.551", "12.800", "177.0") :- case(2).
o_point(p2_2, "40.640", "12.800", "177.0") :- case(2).
o_point(p2_3, "39.663", "13.800", "180.0") :- case(2). % one step side-by-side
o_point(p2_4, "38.508", "12.800", "184.0") :- case(2).
o_point(p2_5, "37.551", "12.800", "182.0") :- case(2).

1 { case(1..2) } 1.

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
goal :- overtake(agent2, agent1, _).
:- not goal.

%%% Optimisation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#minimize { X,X : case(X) }.

%%% Display %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#show overtake/3.
#show behind/3.
#show in_front/3.

