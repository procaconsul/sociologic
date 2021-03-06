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

 %%%%%%%%%%%%%%%%%%%
% P-INTERPRETATIONS %%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%%%%%%%%%%%%%%%%%

%%% 1. 
% - same direction
% - overtaking
% - following behind
%
%


 %%%%%%%%%%%
% Example 1 %%%%%%%%%
 %%%%%%%%%%%

#pos({}, {}, {
pos(agent1, 1, p1_1).
pos(agent1, 2, p1_2).
pos(agent1, 3, p1_3).
pos(agent1, 4, p1_4).
pos(agent1, 5, p1_5).

o_point(p1_1, "43.551", "12.800", "0.0").
o_point(p1_2, "44.551", "12.800", "0.0").
o_point(p1_3, "45.551", "12.800", "0.0").
o_point(p1_4, "46.551", "12.800", "0.0").
o_point(p1_5, "47.551", "12.800", "0.0").

pos(agent2, 1, p2_1).
pos(agent2, 2, p2_2).
pos(agent2, 3, p2_3).
pos(agent2, 4, p2_4).
pos(agent2, 5, p2_5).

o_point(p2_1, "42.551", "12.800", "0.0").
o_point(p2_2, "46.551", "12.800", "0.0").
o_point(p2_3, "47.551", "12.800", "0.0").
o_point(p2_4, "48.551", "12.800", "0.0").
o_point(p2_5, "49.551", "12.800", "0.0").
}).

 %%%%%%%%%%%
% Example 2 %%%%%%%%%
 %%%%%%%%%%%

 %#pos({}, {}, {
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
 %}).

 %%%%%%%%%%%
% Example 3 %%%%%%%%%
 %%%%%%%%%%%

 %#pos({}, {}, {
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
 %}).

%{ rule(1, 1..4, 2..5) }.

 %%%%%%%%%%%
% Example 4 %%%%%%%%%
 %%%%%%%%%%%

% this example should lead to unsatisfibility 

#neg({}, {}, {
pos(agent1, 1, p1_1).
pos(agent1, 2, p1_2).
pos(agent1, 3, p1_3).
pos(agent1, 4, p1_4).
pos(agent1, 5, p1_5).

o_point(p1_1, "43.551", "12.800", "0.0").
o_point(p1_2, "44.551", "12.800", "0.0").
o_point(p1_3, "45.551", "12.800", "0.0").
o_point(p1_4, "46.551", "12.800", "0.0").
o_point(p1_5, "47.551", "12.800", "0.0").

pos(agent2, 1, p2_1).
pos(agent2, 2, p2_2).
pos(agent2, 3, p2_3).
pos(agent2, 4, p2_4).
pos(agent2, 5, p2_5).


o_point(p2_1, "42.551", "12.800", "0.0").
o_point(p2_2, "43.551", "12.800", "0.0").
o_point(p2_3, "44.551", "12.800", "0.0").
o_point(p2_4, "45.551", "12.800", "0.0").
o_point(p2_5, "46.551", "12.800", "0.0").
}).

 %%%%%%%%%%%
% Example 5 %%%%%%%%%
 %%%%%%%%%%%

 %pos(agent1, 1, p1_1).
 %pos(agent1, 2, p1_2).
 %pos(agent1, 3, p1_3).
 %pos(agent1, 4, p1_4).
 %pos(agent1, 5, p1_5).
 %
 %o_point(p1_1, "40.551", "12.880", "180.0").
 %o_point(p1_2, "39.551", "12.800", "180.0").
 %o_point(p1_3, "38.551", "12.800", "180.0").
 %o_point(p1_4, "37.551", "12.800", "180.0").
 %o_point(p1_5, "36.551", "12.800", "180.0").
 %
 %pos(agent2, 1, p2_1).
 %pos(agent2, 2, p2_2).
 %pos(agent2, 3, p2_3).
 %pos(agent2, 4, p2_4).
 %pos(agent2, 5, p2_5).
 %
 %o_point(p2_1, "42.551", "12.800", "177.0").
 %o_point(p2_2, "40.640", "12.800", "177.0").
 %o_point(p2_3, "38.663", "13.800", "180.0"). % one step side-by-side
 %o_point(p2_4, "36.508", "12.800", "184.0").
 %o_point(p2_5, "34.551", "12.800", "182.0").

% { rule(1, 1..4, 2..5) }.

%%% Background %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

point(P, X, Y) :- o_point(P, X, Y, _).

behind(E1, E2, T) :- E1 != E2, pos(E1, T, P1), pos(E2, T, P2), o_point(P1, X1, Y1, O1), o_point(P2, X2, Y2, O2), pos(E2, T+1, P3), point(P3, X3, Y3), @is_behind(X1, Y1, O1, X2, Y2, O2) == 0, @is_collinear(X1, Y1, X2, Y2, X3, Y3) == 0. 

in_front(E1, E2, T) :- behind(E2, E1, T).

% overtake(E1, E2, T1) :- behind(E1, E2, T1), in_front(E1, E2, T2), after(T2, T1).

after(T1, T2) :- pos(_, T1, _), pos(_, T2, _), T1 > T2.

% invades_personal_space(E1, E2, T) :- 

%%% Constraints %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% entity cannot be in two places at the same time point
:- pos(E, T, P1), pos(E, T, P2), P1 != P2.

% entity can be located on a wall
:- pos(E, _, P1), wall(P2, P3), point(P1, X1, Y1), point(P2, X2, Y2), point(P3, X3, Y3), @in_bounds(X1, Y1, X2, Y2, X3, Y3) == 0, @is_collinear(X1, Y1, X2, Y2, X3, Y3) == 0.

% add constraint on intersection between path and wall


%%% Hypothesis Space %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#modeh(overtake(var(ent), var(ent), var(time))).
#modeb(1, behind(var(ent), var(ent), var(time)), (positive)).
#modeb(1, in_front(var(ent), var(ent), var(time)), (positive)).
#modeb(1, after(var(time), var(time))).
#maxv(4).

%%% Display %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% #show overtake/3.
% #show behind/3.
% #show in_front/3.

