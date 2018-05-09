#include "contexts/queues-and-groups/contextual-background-knowledge.lp".


% Scenarios

#include "contexts/queues-and-groups/scenario_1.las".
#include "contexts/queues-and-groups/scenario_2.las".
#include "contexts/queues-and-groups/scenario_3.las".
#include "contexts/queues-and-groups/scenario_4.las".


%%% ORDERINGS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Context 3, scenario 1
#brave_ordering(p3_1A_1, p3_1B_1).

% Context 3, scenario 2
#brave_ordering(p3_2B_1, p3_2A_1).

% Context 3, scenario 3
#brave_ordering(p3_3B_1, p3_3A_1).
#brave_ordering(p3_3B_1, p3_3C_1).
#brave_ordering(p3_3A_1, p3_3C_1).

% Context 3, scenario 4
#brave_ordering(p3_4B_1, p3_4A_1).

%%% Hypothesis Space %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ModeO scenario 1/2
#modeo(1, squeeze_by_wall(const(ent), var(wall), var(time))).
#modeo(1, go_through_q(const(ent), const(ent_formation), var(time))).

% ModeO scenario 3
% #modeo(1, squeeze_by_wall(const(ent), var(wall), var(time))).
#modeo(1, go_through_g(const(ent), const(ent_formation), var(time))).
#modeo(1, wait(const(ent), var(time), var(period))).

% ModeO scenario 4
% #modeo(1, go_through_g(const(ent), const(ent_formation), var(time))).

% Extra ModeO ensemble
#modeo(1, non_straight_queue(const(ent_formation), var(time))).

#maxp(2).
#maxv(4).
#constant(ent, focus_agent).
#constant(ent_formation, group).
#constant(ent_formation, queue).
#weight(-1).
#weight(1).
% #weight(2).

