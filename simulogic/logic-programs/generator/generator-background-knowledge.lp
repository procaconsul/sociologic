#include "common/background-knowledge.lp".
#include "contexts/crossings/contextual-background-knowledge.lp".
#include "contexts/narrow-passage/contextual-background-knowledge.lp".
#include "contexts/queues-and-groups/contextual-background-knowledge.lp".

% ##############################################
% Rules for the generation of robot's path AS ##
% ##############################################


% orient_change(-45..45).
orient_change(-5..5).
orient_change(180).
coord_change(-1..1).

pos(robot, T, @robot_pt(T)) :- time(T).

o_point(P1, X1, Y1, O1) :- o_point(P, X, Y, O),
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
