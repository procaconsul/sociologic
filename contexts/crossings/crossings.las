#include "contexts/crossings/contextual-background-knowledge.lp".


% Scenarios

#include "contexts/crossings/scenario_1.las".
#include "contexts/crossings/scenario_2.las".
#include "contexts/crossings/scenario_3.las".


%%% ORDERINGS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Context 1, scenario 1
#brave_ordering(p2_1A_1, p2_1B_1).

% Context 1, scenario 2
#brave_ordering(p2_2A_1, p2_2B_1).

% Context 1, scenario 3
#brave_ordering(p2_3A_1, p2_3B_1).

%%% Hypothesis Space %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ModeO 
#modeo(1, go_behind(const(ent), var(ent), var(time))).
#modeo(1, go_in_front(const(ent), var(ent), var(time))).
#modeo(1, pushes_object(var(ent), var(time))).

#maxp(2).
#maxv(4).
#constant(ent, focus_agent).
#weight(-1).
#weight(1).
% #weight(2).

