#include "contexts/narrow-passage/contextual-background-knowledge.lp".


% Scenarios

#include "contexts/narrow-passage/scenario_1.las".
#include "contexts/narrow-passage/scenario_2.las".
#include "contexts/narrow-passage/scenario_3.las".
#include "contexts/narrow-passage/scenario_4.las".
#include "contexts/narrow-passage/scenario_5.las".
#include "contexts/narrow-passage/scenario_6.las".


%%% ORDERINGS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Context 1, scenario 1
#brave_ordering(b1@54, p1_1A_1, p1_1B_1). % 54 = 68 - 14
#brave_ordering(b2@66, p1_1A_1, p1_1C_1). % 66 = 68 - 2 
#brave_ordering(b3@12, p1_1B_1, p1_1C_1). % 12 = 14 - 2
% --------------
% #brave_ordering(p1_1A_1, p1_1B_2).
% #brave_ordering(p1_1B_2, p1_1C_1).

% Context 1, scenario 2
#brave_ordering(b4@33, p1_2C_1, p1_2B_1). % 33 = 57 - 24
#brave_ordering(b5@54, p1_2C_1, p1_2A_1). % 54 = 57 - 3
#brave_ordering(b6@21, p1_2B_1, p1_2A_1). % 21 = 24 - 3
% ---------------
% #brave_ordering(p1_2C_2, p1_2A_1).
% #brave_ordering(p1_2B_2, p1_2A_1).
% #brave_ordering(p1_2C_1, p1_2B_2).
% #brave_ordering(p1_2C_2, p1_2B_2).
% #brave_ordering(p1_2C_2, p1_2B_1).

% Context 1, scenario 3
#brave_ordering(b7@80, p1_3B_1, p1_3A_1). % 80 = 82 - 2
% ----------------
% #brave_ordering(p1_3B_1, p1_3A_2).
% #brave_ordering(p1_3B_2, p1_3A_2).
% #brave_ordering(p1_3B_2, p1_3A_1).

% Context 1, scenario 4
#brave_ordering(b8@46, p1_4B_1, p1_4A_1). % 46 = 65 - 19

% Context 1, scenario 5
#brave_ordering(b9@39, p1_5C_1, p1_5A_1). % 39 = 46 - 7
#brave_ordering(b10@15, p1_5C_1, p1_5B_1). % 15 = 46 - 31
#brave_ordering(b11@24, p1_5B_1, p1_5A_1). % 24 = 31 - 7

% % Context 1, scenario 6
#brave_ordering(b12@53, p1_6C_1, p1_6A_1). % 53 = 55 - 2
#brave_ordering(b13@28, p1_6C_1, p1_6B_1). % 28 = 55 - 27
#brave_ordering(b14@25, p1_6B_1, p1_6A_1). % 25 = 27 - 2

%%% Hypothesis Space %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ModeO for scenario 1/2
#modeo(1, push_out(const(ent), var(ent), const(room), var(time))).
#modeo(1, step_out_and_wait(const(ent), var(ent), const(room), var(time))).
#modeo(1, squeeze_by_wall(const(ent), var(ent), var(wall), var(time))).

% ModeO for scenario 3
#modeo(1, give_way(const(ent), var(ent), var(time), const(room))).
% #modeo(1, step_out_and_wait(const(ent), var(ent), const(room), var(time))).

% ModeO for scenario 4
#modeo(1, overtake(var(ent), var(ent), var(time))).

% ModeO for scenario 5
% #modeo(1, push_out(const(ent), var(ent), const(room), var(time))).
% #modeo(1, step_out_and_wait(const(ent), var(ent), const(room), var(time))).
% #modeo(1, squeeze_by_wall(const(ent), var(ent), var(wall), var(time))).

% ModeO for scenario 6
#modeo(1, squeeze_between_conversation(const(ent), var(ent), var(ent), var(time))).
#modeo(1, wait_end_of_talk(const(ent), var(ent), var(ent), var(time), var(time))).

% Additional ModeO for scenarios enabled simultaneously
#modeo(1, past_mid(const(ent), const(room), var(time))).
#modeo(1, one_person_width(const(room))).
% --------------
% #modeo(1, invades_personal_space(var(ent), var(ent), var(time))).

#maxp(2).
#maxv(4).
#constant(ent, focus_agent).
#constant(room, corridor).
#weight(-1).
#weight(1).

