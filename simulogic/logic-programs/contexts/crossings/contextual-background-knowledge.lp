#include "common/background-knowledge.lp".

%%% Background %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% #############
% ACTIONS
% #############

crossing(C) :- crossing(C, _, _, _, _). 

% should I add a constraint on the distance?
go_behind(E1, E2, T) :- E1 != E2,
  path(E1, T, P1_1, P1_2), 
  pos(E2, T, P2),
  pos(E2, T-1, P3),
  o_point(P1_1, X1_1, Y1_1, O1_1),
  o_point(P1_2, X1_2, Y1_2, O1_2),
  o_point(P2, X2, Y2, O2),
  o_point(P3, X3, Y3, O3),
  distance(P1_1, P2, D), @lt_(D, personal_distance) == 1,
  @perpendicular_directions(O1_1, O2) == 1,
  @intersects(X1_1, Y1_1, X1_2, Y1_2, X2, Y2, X3, Y3) == 1.

go_in_front(E1, E2, T) :- go_behind(E2, E1, T).

collides_with_object(E1, E2, T) :- E1 != E2,
  pos(E1, T, P1),
  point(P1, X1, Y1),
  pushes_object(E2, T, O),
  object(O, L), 
  path(E2, T, P2, P3),
  point(P2, X2, Y2),
  point(P3, X3, Y3),
  @in_bounds(X1, Y1, X2, Y2, X3, Y3) == 1,
  distance(P1, P2, D), @leq_(D, L) == 1.

:- collides_with_object(_, _, _).

