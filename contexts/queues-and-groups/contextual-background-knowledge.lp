#include "common/background-knowledge.lp".

%%% Background %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

formation(F, I, T) :- group(F, I, T, _).
formation(F, I, T) :- queue(F, I, T, _).

formation_size(F, S, T) :- formation(F, S, T),
  not formation(F, S+1, T).

non_straight_queue(Q, T) :- formation_size(Q, S, T),
  queue(Q, 1, T, E1),
  queue(Q, S, T, E2),
  I > 1, I < S,
  queue(Q, I, T, E3), 
  pos(E1, T, P1),
  pos(E2, T, P2),
  pos(E3, T, P3),
  point(P1, X1, Y1), 
  point(P2, X2, Y2), 
  point(P3, X3, Y3), 
  @is_collinear(X3, Y3, X1, Y1, X2, Y2) == 0.

% #############
% ACTIONS
% #############

go_through_g(E1, G, T) :- not group(G, _, T, E1),
  path(E1, T, P1_1, P1_2, _),
  E2 != E3,
  group(G, _, T, E2),
  group(G, _, T, E3),
  pos(E2, T, P2),
  pos(E3, T, P3),
  point(P1_1, X1_1, Y1_1),
  point(P1_2, X1_2, Y1_2),
  point(P2, X2, Y2),
  point(P3, X3, Y3),
  @intersects(X1_1, Y1_1, X1_2, Y1_2, X2, Y2, X3, Y3) == 1.

go_through_q(E1, Q, T) :- not queue(Q, _, T, E1),
  path(E1, T, P1_1, P1_2, _),
  E2 != E3,
  queue(Q, I, T, E2),
  queue(Q, I+1, T, E3),
  pos(E2, T, P2),
  pos(E3, T, P3),
  point(P1_1, X1_1, Y1_1),
  point(P1_2, X1_2, Y1_2),
  point(P2, X2, Y2),
  point(P3, X3, Y3),
  @intersects(X1_1, Y1_1, X1_2, Y1_2, X2, Y2, X3, Y3) == 1.

wait(E, From, For) :- pos(E, From, P1),
  after(T, From), 
  pos(E, T-1, P2),
  pos(E, T, P3), 
  point(P1, X, Y),
  point(P2, X, Y), 
  point(P3, X_, Y_),
  distance(P2, P3, D),
  @not_eq_(D, "0") == 1,
  For = T - From,
  For > 1.


% wait(E, T1, T2) :- T1 != T2, 
  % after(T2, T1),
  % pos(E, T1, P1),
  % pos(E, T2-1, P2),
  % distance(P1, P2, D1),
  % @eq_(D1, "0") == 1,
  % pos(E, T2, P3),
  % distance(P1, P3, D2),
  % @not_eq_(D2, "0") == 1.

