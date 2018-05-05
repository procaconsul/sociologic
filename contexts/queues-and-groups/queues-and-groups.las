#include "background-knowledge.lp".


% Scenarios

% #include "contexts/queues-and-groups/scenario_1.las".
% #include "contexts/queues-and-groups/scenario_2.las".
% #include "contexts/queues-and-groups/scenario_3.las".
% #include "contexts/queues-and-groups/scenario_4.las".


%%% ORDERINGS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Context 1, scenario 1
% #brave_ordering(p2_1A_1, p2_1B_1).

% Context 1, scenario 2
% #brave_ordering(p2_2A_1, p2_2B_1).

% Context 1, scenario 3
% #brave_ordering(p2_3A_1, p2_3B_1).

%%% Hypothesis Space %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ModeO scenario 1
#modeo(1, go_around(const(ent), const(ent_formation), var(time))).
#modeo(1, go_through(const(ent), const(ent_formation), var(time))).
% #modeo(1, overtake(const(ent), const(ent_formation), var(time))).

#maxp(2).
#maxv(4).
#constant(ent, focus_agent).
#constant(ent_formation, group).
#constant(ent_formation, queue).
#weight(-1).
#weight(1).
% #weight(2).

