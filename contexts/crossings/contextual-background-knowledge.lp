#include "common/background-knowledge.lp".

%%% Background %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% #############
% ACTIONS
% #############

% should I add a constraint on the distance?
go_behind(E1, E2, T) :- E1 != E2,
  path(E1, T, P1_1, P1_2, L), 
  pos(E2, T, P2),
  pos(E2, T-1, P3),
  point(P1_1, X1_1, Y1_1),
  point(P1_2, X1_2, Y1_2),
  point(P2, X2, Y2),
  point(P3, X3, Y3),
  @intersects(X1_1, Y1_1, X1_2, Y1_2, X2, Y2, X3, Y3) == 1.

go_in_front(E1, E2, T) :- go_behind(E2, E1, T).

% wait(E, T1, T2) :- T1 != T2, 
  % after(T2, T1),
  % pos(E, T1, P1),
  % pos(E, T2-1, P2),
  % distance(P1, P2, D1),
  % @eq_(D1, "0") == 1,
  % pos(E, T2, P3),
  % distance(P1, P3, D2),
  % @not_eq_(D2, "0") == 1.

