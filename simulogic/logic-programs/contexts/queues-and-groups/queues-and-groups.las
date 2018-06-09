#include "contexts/queues-and-groups/contextual-background-knowledge.lp".


% Scenarios

#include "contexts/queues-and-groups/scenario_1.las".
#include "contexts/queues-and-groups/scenario_2.las".
#include "contexts/queues-and-groups/scenario_3.las".
#include "contexts/queues-and-groups/scenario_4.las".


%%% ORDERINGS W-EXPLICIT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Context 3, scenario 1
% #brave_ordering(b1@48, p1_1A_3, p1_1B_3). 
% #brave_ordering(b1_1@35, p1_1B_3, p1_1A_3).

% #brave_ordering(p1_1A_3, p1_2A_3).
% #brave_ordering(p1_2B_3, p1_1B_3).

% Context 3, scenario 2
% #brave_ordering(b2@71, p1_2B_3, p1_2A_3). 
% #brave_ordering(b2_1@12, p1_2A_3, p1_2B_3). 

% Context 3, scenario 3
% #brave_ordering(b3@70, p1_3B_3, p1_3A_3). 
% #brave_ordering(b3_1@11, p1_3A_3, p1_3B_3).

% #brave_ordering(b4@70, p1_3B_3, p1_3C_3). 
% #brave_ordering(b4_1@3, p1_3C_3, p1_3B_3).

% #brave_ordering(b5@11, p1_3A_3, p1_3C_3). 
% #brave_ordering(b5_1@2, p1_3C_3, p1_3A_3).

% Context 3, scenario 4
% #brave_ordering(b6@62, p1_4B_3, p1_4A_3). 
% #brave_ordering(b6_1@21, p1_4A_3, p1_4B_3). 

%%% ORDERINGS W-COMBINED %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Context 3, scenario 1
#brave_ordering(b1@13, p1_1A_3, p1_1B_3). % 13 = 48 - 35

#brave_ordering(p1_1A_3, p1_2A_3).
#brave_ordering(p1_2B_3, p1_1B_3).

% Context 3, scenario 2
#brave_ordering(b2@59, p1_2B_3, p1_2A_3). % 59 = 71 - 12

% Context 3, scenario 3
#brave_ordering(b3@59, p1_3B_3, p1_3A_3). % 59 = 70 - 11
#brave_ordering(b4@67, p1_3B_3, p1_3C_3). % 67 = 70 - 3
#brave_ordering(b5@8, p1_3A_3, p1_3C_3). % 8 = 11 - 3

% Context 3, scenario 4
#brave_ordering(b6@41, p1_4B_3, p1_4A_3). % 41 = 62 - 21

%%% Hypothesis Space %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ModeO scenario 1/2
#modeo(1, squeeze_between_wall_and_agglomerate(const(ent), var(ent_agglomerate), var(wall), var(time))).
% #modeo(1, go_through_agglomerate(const(ent), var(ent_agglomerate), var(time))).

% ModeO scenario 3
% #modeo(1, squeeze_between_wall_and_agglomerate(const(ent), var(ent_agglomerate), var(wall), var(time))).
#modeo(1, go_through_agglomerate(const(ent), var(ent_agglomerate), var(time))).
#modeo(1, wait_agglomerate_dispersion(const(ent), var(time), var(period), var(ent_agglomerate))).

% Extra ModeO ensemble
#modeo(1, family(var(ent_agglomerate))).
#modeo(1, straight_queue(var(ent_agglomerate), var(time))).

% Reduce search space by pruning the meaningless weak constraints
#bias(":- body(family(_)), not not_alone.").
#bias(":- body(straight_queue(_, _)), not not_alone.").

#bias("not_alone :- body(X), not not_not_alone(X).").

#bias("not_not_alone(family(X)) :- body(family(X)).").
#bias("not_not_alone(straight_queue(X, Y)) :- body(straight_queue(X, Y)).").

#maxp(3).
#maxv(3).
#constant(ent, focus_agent).
#constant(ent_agglomerate, group).
#constant(ent_agglomerate, queue).
#weight(-1).
#weight(1).
#weight(2).

