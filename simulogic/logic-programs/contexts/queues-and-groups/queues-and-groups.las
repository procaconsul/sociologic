#include "contexts/queues-and-groups/contextual-background-knowledge.lp".


% Scenarios

#include "contexts/queues-and-groups/scenario_1.las".
#include "contexts/queues-and-groups/scenario_2.las".
#include "contexts/queues-and-groups/scenario_3.las".
#include "contexts/queues-and-groups/scenario_4.las".


%%% ORDERINGS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Context 3, scenario 1
#brave_ordering(b1@13, p3_1A_1, p3_1B_1). % 13 = 48 - 35

#brave_ordering(p3_1A_1, p3_2A_1).
#brave_ordering(p3_2B_1, p3_1B_1).

% Context 3, scenario 2
#brave_ordering(b2@59, p3_2B_1, p3_2A_1). % 59 = 71 - 12

% Context 3, scenario 3
#brave_ordering(b3@59, p3_3B_1, p3_3A_1). % 59 = 70 - 11
#brave_ordering(b4@67, p3_3B_1, p3_3C_1). % 67 = 70 - 3
#brave_ordering(b5@8, p3_3A_1, p3_3C_1). % 8 = 11 - 3

% Context 3, scenario 4
#brave_ordering(b6@41, p3_4B_1, p3_4A_1). % 41 = 62 - 21

%%% Hypothesis Space %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ModeO scenario 1/2
#modeo(1, squeeze_between_wall_and_agglomerate(const(ent), var(ent_agglomerate), var(wall), var(time))).
% #modeo(1, go_through(const(ent), var(ent_agglomerate), var(time))).

% ModeO scenario 3
% #modeo(1, squeeze_between_wall_and_agglomerate(const(ent), var(ent_agglomerate), var(wall), var(time))).
#modeo(1, go_through(const(ent), var(ent_agglomerate), var(time))).
#modeo(1, wait(const(ent), var(time), var(period))).

% ModeO scenario 4
% #modeo(1, go_through_4(const(ent), const(ent_agglomerate), var(time))).

% Extra ModeO ensemble
% #modeo(1, family(var(ent_agglomerate))).
#modeo(1, straight_queue(var(ent_agglomerate), var(time))).

#maxp(2).
#maxv(3).
#constant(ent, focus_agent).
#constant(ent_agglomerate, group).
#constant(ent_agglomerate, queue).
#weight(-1).
#weight(1).

