#include "common/background-knowledge.lp".

%%% Background %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

agglomerate(F, I, T, E) :- group(F, I, T, E).
agglomerate(F, I, T, E) :- queue(F, I, T, E).

agglomerate_size(F, S, T) :- agglomerate(F, S, T, _),
  not agglomerate(F, S+1, T, _).

straight_queue(Q, T1) :-
  not after(T2, T1), 
  straight_queue_on_time(Q, T2),
  after(T3, T1),
  straight_queue_on_time(Q, T3).

straight_queue_on_time(Q, T) :- agglomerate_size(Q, S, T),
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
  @is_collinear(X3, Y3, X1, Y1, X2, Y2) == 1.

% #############
% ACTIONS
% #############

% Overloaded squeeze_by_wall (and member of agglomerate)
squeeze_between_wall_and_agglomerate(E1, A, W, T) :- 
  squeeze_by_wall(E1, E2, W, T),
  agglomerate(A, _, T, E2).

go_through_agglomerate(E1, G, T) :- not group(G, _, T, E1),
  path(E1, T, P1_1, P1_2),
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

go_through_agglomerate(E1, Q, T) :- not queue(Q, _, T, E1),
  path(E1, T, P1_1, P1_2),
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

% wait_agglomerate_dispersion(E1, T1, G) :- not group(G, _, _, E1),
  % pos(E1, T1+1, P1_3),
  % point(P1_3, X1_1, Y1_1),
  % after(T2, T1),
  % pos(E1, T1, P1_1),
  % pos(E1, T2, P1_2),
  % point(P1_1, X1_1, Y1_1),
  % point(P1_2, X1_2, Y1_2),
  % group(G, _, T1, E2), group(G, _, T2, E2),
  % group(G, _, T1, E3), group(G, _, T2, E3),
  % pos(E2, T1, P2),
  % pos(E3, T1, P3),
  % point(P2, X2, Y2),
  % point(P3, X3, Y3),
  % @intersects(X1_1, Y1_1, X1_2, Y1_2, X2, Y2, X3, Y3) == 1,
  % group(G, _, T1, E4), group(G, _, T2, E4),
  % group(G, _, T1, E5), group(G, _, T2, E5),
  % pos(E4, T2, P4),
  % pos(E5, T2, P5),
  % point(P4, X4, Y4),
  % point(P5, X5, Y5),
  % @intersects(X1_1, Y1_1, X1_2, Y1_2, X4, Y4, X5, Y5) == 0.

wait_agglomerate_dispersion(E, From, For, G) :- group(G, _, From, _),
  group(G, _, From + For, _),
  not group(G, _, _, E),
  pos(E, From, P1),
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



