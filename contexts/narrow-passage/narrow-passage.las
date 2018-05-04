#include "background-knowledge.lp".


% Scenarios

% #include "contexts/narrow-passage/scenario_1.las".
% #include "contexts/narrow-passage/scenario_2.las".
% #include "contexts/narrow-passage/scenario_3.las".
#include "contexts/narrow-passage/scenario_4.las".
% #include "contexts/narrow-passage/scenario_5.las".
% #include "contexts/narrow-passage/scenario_6.las".


%%% ORDERINGS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Context 1, scenario 1
% #brave_ordering(p1_1A_1, p1_1B_1).
% #brave_ordering(p1_1A_1, p1_1C_1).
% #brave_ordering(p1_1B_1, p1_1C_1).
% --------------
% #brave_ordering(p1_1A_1, p1_1B_2).
% #brave_ordering(p1_1B_2, p1_1C_1).

% Context 1, scenario 2
% #brave_ordering(p1_2C_1, p1_2B_1).
% #brave_ordering(p1_2C_1, p1_2A_1).
% #brave_ordering(p1_2B_1, p1_2A_1).
% ---------------
% #brave_ordering(p1_2C_2, p1_2A_1).
% #brave_ordering(p1_2B_2, p1_2A_1).
% #brave_ordering(p1_2C_1, p1_2B_2).
% #brave_ordering(p1_2C_2, p1_2B_2).
% #brave_ordering(p1_2C_2, p1_2B_1).

% Context 1, scenario 3
% #cautious_ordering(p1_3B_1, p1_3A_1).
% ----------------
% #brave_ordering(p1_3B_1, p1_3A_2).
% #brave_ordering(p1_3B_2, p1_3A_2).
% #brave_ordering(p1_3B_2, p1_3A_1).

% Context 1, scenario 4
#brave_ordering(p1_4B_1, p1_4A_1).

% Context 1, scenario 5
% #brave_ordering(p1_5C_1, p1_5A_1).
% #brave_ordering(p1_5C_1, p1_5B_1).
% #brave_ordering(p1_5B_1, p1_5A_1).

% % Context 1, scenario 6
% #brave_ordering(p1_6C_1, p1_6A_1).
% #brave_ordering(p1_6C_1, p1_6B_1).
% #brave_ordering(p1_6B_1, p1_6A_1).

%%% Hypothesis Space %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ModeO for scenario 1/2
% #modeo(1, push_out(const(ent), var(ent), const(room), var(time))).
% #modeo(1, step_out_and_wait(const(ent), var(ent), const(room), var(time))).
% #modeo(1, squeeze_by_wall(const(ent), var(wall), var(time))).

% ModeO for scenario 3
% #modeo(1, give_way(const(ent), var(ent), var(time), const(room))).
% #modeo(1, step_out_and_wait(const(ent), var(ent), const(room), var(time))).

% ModeO for scenario 4
#modeo(1, overtake(var(ent), var(ent), var(time))).

% ModeO for scenario 5
% #modeo(1, push_out(const(ent), var(ent), const(room), var(time))).
% #modeo(1, step_out_and_wait(const(ent), var(ent), const(room), var(time))).
% #modeo(1, squeeze_by_wall(const(ent), var(wall), var(time))).
% #modeo(1, behind(var(ent), const(ent), var(time))).

% ModeO for scenario 6
% #modeo(1, squeeze_between_conversation(const(ent), var(ent), var(ent), var(time))).
% #modeo(1, wait_end_of_talk(const(ent), var(ent), var(ent), var(time), var(time))).
% #modeo(1, talking(var(ent), var(ent), var(time))).

% Additional ModeO for scenarios enabled simultaneously
% #modeo(1, past_mid(const(ent), const(room), var(time))).
% #modeo(1, one_person_width(const(room))).
% #modeo(1, behind(var(ent), const(ent), var(time))).
% --------------
% #modeo(1, invades_personal_space(var(ent), var(ent), var(time))).

#maxp(2).
#maxv(4).
#constant(ent, focus_agent).
#constant(room, corridor).
#weight(-1).
#weight(1).
% #weight(2).

