#include "contexts/crossings/contextual-background-knowledge.lp".


% Scenarios

#include "contexts/crossings/scenario_1.las".
#include "contexts/crossings/scenario_2.las".
#include "contexts/crossings/scenario_3.las".

%%% ORDERINGS W-EXPLICIT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% % Context 1, scenario 1
% #brave_ordering(b1@63, p2_1A_2, p2_1B_2). 
% #brave_ordering(b1_1@19, p2_1B_2, p2_1A_2).

% % Context 1, scenario 2
% #brave_ordering(b2@60, p2_2A_2, p2_2B_2).
% #brave_ordering(b2_1@12, p2_2B_2, p2_2A_2).

% % Context 1, scenario 3
% #brave_ordering(b3@58, p2_3A_2, p2_3B_2).
% #brave_ordering(b3_1@26, p2_3B_2, p2_3A_2).


%%% ORDERINGS W-COMBINED %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Context 1, scenario 1
#brave_ordering(b1@44, p1_1A_2, p1_1B_2). % 44 = 63 - 19

% Context 1, scenario 2
#brave_ordering(b2@58, p1_2A_2, p1_2B_2). % 58 = 60 - 12

% Context 1, scenario 3
#brave_ordering(b3@32, p1_3A_2, p1_3B_2). % 32 = 58 - 26

%%% Hypothesis Space %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ModeO 
#modeo(1, go_behind(const(ent), var(ent), var(time))).
#modeo(1, go_in_front(const(ent), var(ent), var(time))).
#modeo(1, pushes_object(var(ent), var(time))).
#modeo(1, crossing(var(room))).

#maxp(3).
#maxv(3).
#constant(ent, focus_agent).
#weight(-1).
#weight(1).
#weight(2).

