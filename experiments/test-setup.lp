% #include "contexts/queues-and-groups/contextual-background-knowledge.lp".
% #include "contexts/narrow-passage/contextual-background-knowledge.lp".
% #include "spatial.lp".
#include "simulogic/logic-programs/generator/generator-background-knowledge.lp".
#include "simulogic/logic-programs/common/sl-interface.py".
time(1..2).

o_point(p1_1, "10.0", "10.0", "0.0").

#show o_point/4.
#show o_point/3.
#show pos/3.

% m(1..40).

% x(-1..1).

% p("1").

% p(@plus(N, M)) :- p(N), m(M), @diff(N) == 1.

% #script (python)

% def diff(_n):
  % n = float(_n.string)
  % return n < 4

% def plus(_n, _m):
  % n = float(_n.string)
  % m = float(str(_m))
  % return str(n + m) 

% #show x/1.
% #show p/1.
% #end.


%% Hypothesis Space %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% overtake(V1, V2, C1) :- behind(V1, V2, C1), in_front(V1, V2, C2), rule(1, C1, C2).
% overtake(V1, V2, C1) :- behind(V1, V2, C1), in_front(V1, V2, C2), C2 > C1.
% squeeze(E, W, T) :- pos(E, T, P), point(P, X1, Y1), wall(W, P2, P3), point(P2, X2, Y2), point(P3, X3, Y3), @distance2d_point_segment_(X1, Y1, X2, Y2, X3, Y3) < squeezing_threshold.

% 1 { case(1..2) } 1.

%%% Goal %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% goal :- corridor(corridor, _, _), 
  % inside(focus_agent, corridor, T), 
  % inside(agent2, corridor, T), 
  % not inside(focus_agent, corridor, T+1),
  % after(T1, T+1),
  % inside(focus_agent, corridor, T1),
  % not inside(agent2, corridor, T1).
% :- not goal.


% Hide Scenario Facts from solution
% #show case/1.
% #show go_behind/3.
% #show go_in_front/3.
% #show overtake/3.
% #show queue_last/3.
% #show straight_queue/2.
% #show go_through_g/3.
% #show go_through_q/3.
% #show go_through_non_straight_q/3.
% #show wait/3.
% #show incidence/3.
% #show behind/3.
% #show opposite_directions/3.
% #show in_front/3.
% #show wait_end_of_talk/5.
% #show squeeze_between_conversation/4.
% #show talking/3.
% #show one_person_width/1. 
% #show give_way/4.
% #show past_mid/3.
% #show polygon/2.
% #show inside/3. 
% #show step_out_and_wait/4.
% #show push_out/4.
% #show mid_point/3.
% #show line_between/5.
% #show squeeze_between_wall_and_agglomerate/4.
% #show squeeze_by_wall/4.
