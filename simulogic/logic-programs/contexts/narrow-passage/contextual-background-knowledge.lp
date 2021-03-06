#include "common/background-knowledge.lp".

%%% Background %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% #############
% ACTIONS
% #############

overtake_in_corridor(E1, E2, T, C) :- corridor(C, _, _),
  overtake(E1, E2, T).

squeeze_between_conversation(E1, E2, E3, T) :- not talking(E1, _, _),
  not talking(_, E1, _),
  talking(E2, E3, T),
  talking(E2, E3, T+1),
  path(E1, T, P1_1, P1_2),
  pos(E2, T, P2),
  pos(E3, T, P3),
  point(P1_1, X1_1, Y1_1),
  point(P1_2, X1_2, Y1_2),
  point(P2, X2, Y2),
  point(P3, X3, Y3),
  @intersects(X1_1, Y1_1, X1_2, Y1_2, X2, Y2, X3, Y3) == 1.

wait_end_of_talk(E1, E2, E3, T1, T2) :- T1 != T2,
  talking(E2, E3, T1), 
  not talking(E1, _, _),
  not talking(_, E1, _),
  pos(E1, T1, P1),
  after(T2, T1),
  pos(E1, T2, P2),
  point(P1, X, Y),
  point(P2, X, Y),  
  talking(E2, E3, T2),
  pos(E1, T2+1, P3),
  not talking(E2, E3, T2+1),
  point(P3, X1, Y1),
  distance(P2, P3, D),
  @not_eq_(D, "0") == 1.

push_out(E1, E2, C, T) :- step_out_and_wait(E2, E1, C, T).

step_out_and_wait(E1, E2, C, T) :- corridor(C, _, _),
  inside(E1, C, T),
  inside(E2, C, T),
  pos(E1, T, P1), o_point(P1, _, _, O1),
  pos(E1, T+1, P1_1), o_point(P1_1, _, _, O1_1),
  @opposite_directions(O1, O1_1) == 1,
  after(T1, T+1),
  not inside(E1, C, T1),
  after(T2, T1),
  not inside(E2, C, T2),
  inside(E1, C, T2).

% maybe could add that distance is short?
% notion of behind.
give_way(E1, E2, T, C) :- corridor(C, _, _),
  pos(E1, T, P1),
  pos(E2, T, P2),
  o_point(P1, X1, Y1, O1),
  o_point(P2, X2, Y2, O2),
  @opposite_directions(O1, O2) == 1,
  pos(E1, T+1, P3), 
  pos(E2, T+1, P4), 
  point(P3, X3, Y3),
  point(P4, X4, Y4),
  @is_collinear(X1, Y1, X2, Y2, X4, Y4) == 1,
  @is_collinear(X3, Y3, X2, Y2, X4, Y4) == 0.

following(E1, E2, T1) :- E1 != E2, 
  behind(E1, E2, T1),
  before(T2, T1),
  behind(E1, E2, T2),
  not behind(E1, E2, T2-1).

% %%%%%%%%%%%%%%%%%
% OTHERS
% %%%%%%%%%%%%%%%%%

% Vertices are stored in clockwise order.
polygon(C, VS) :- corridor(C, W1, W2),
  wall(W1, P1, P2),
  wall(W2, P3, P4),
  point(P1, X1, Y1),
  point(P2, X2, Y2),
  point(P3, X3, Y3),
  point(P4, X4, Y4),
  VS = vs(X1, Y1, X2, Y2, X4, Y4, X3, Y3).

one_person_width(C) :- corridor(C, W1, W2),
  line_ent(line(W1)), 
  line_ent(line(W2)), 
  sgn_distance(id(default), D, line(W1), line(W2)), 
  @lt_(D, two_people_width) == 1,
  W1 != W2.


% assuming corridors are made of walls of the same length
past_mid(E, C, T) :- path(E, Tb, P1_1, P1_2),
  after(T, Tb),
  corridor(C, W1, W2),
  point(mid_p(W1), X1, Y1),
  point(mid_p(W2), X2, Y2), 
  point(P1_1, X1_1, Y1_1),
  point(P1_2, X1_2, Y1_2),
  @intersects(X1_1, Y1_1, X1_2, Y1_2, X1, Y1, X2, Y2) == 1.


