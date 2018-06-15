#include "common/background-knowledge.lp".
% #include "common/sl-interface.py".
#include "contexts/crossings/contextual-background-knowledge.lp".
#include "contexts/narrow-passage/contextual-background-knowledge.lp".
#include "contexts/queues-and-groups/contextual-background-knowledge.lp".
% #include "common/learned-norms.lp".

% ##############################################
% Rules for the generation of robot's path AS ##
% ##############################################


orient_change(-45..45).
% orient_change(-1..1).
% orient_change(1).
orient_change(180).
% coord_change(-1..1).
coord_change(-2..2).

pos(robot, T, @robot_pt(T)) :- time(T).

possible_o_point(p1_1, X, Y, O) :- o_point(p1_1, X, Y, O).

% o_point(P1, X1, Y1, O1) :- o_point(P, X, Y, O), 
  % P1 = @next_pt(P),
  % pos(robot, _, P1),
  % coord_change(N),
  % coord_change(M),
  % X1 = @plus(X, N),
  % Y1 = @plus(Y, M),
  % orient_change(A), 
  % O1 = @o_plus(O, A).

point(P) :- possible_o_point(P, _, _, _).
1 { o_point(P, X, Y, O) : possible_o_point(P, X, Y, O) } 1 :- point(P).

possible_o_point(P1, X1, Y1, O1) :- possible_o_point(P, X, Y, O),
  P1 = @next_pt(P),
  pos(robot, _, P1),
  coord_change(N),
  coord_change(M),
  X1 = @plus(X, N),
  Y1 = @plus(Y, M),
  orient_change(A), 
  O1 = @o_plus(O, A).



% + scenario (generated once and for all)
% + rules for valid moves of robot
% + learned constraints
% |
% |
% V
% ASs ---> arranged according to the constraints
