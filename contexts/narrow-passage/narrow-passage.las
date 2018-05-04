#include "background-knowledge.lp".

%%%% Same direction in narrow alley, space enough for two people

%%%% Environment
%
% wall 1
% ----------------------------------------------
%        	^
%        	|
%        	|-- space for two entities to walk 
%        	|   side by side
%        	|
% wall 2 	v
% ----------------------------------------------
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



 %%%%%%%%%%%%%%%%%%%
% P-INTERPRETATIONS %%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%%%%%%%%%%%%%%%%%

%%%  
% - same direction
% - overtaking
% - following behind
%
%
% #pos(p3, {}, {}, {

% %%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% agent(agent1).
% agent(agent2).

% % wall 1 
% wall(wall1, w1_s, w1_e).
% point(w1_s, "10.0", "20.0").
% point(w1_e, "60.0", "20.0").

% % wall 2 
% wall(wall2, w2_s, w2_e).
% point(w2_s, "10.0", "10.0").
% point(w2_e, "60.0", "10.0").

% corridor(corridor, wall1, wall2).

% % agent 2 (faster) slows down and stays behind agent 1 (w/o respecting ps)
% pos(agent1, 1, p1_1).
% pos(agent1, 2, p1_2).
% pos(agent1, 3, p1_3).
% pos(agent1, 4, p1_4).
% pos(agent1, 5, p1_5).
% pos(agent1, 6, p1_6).
% pos(agent1, 7, p1_7).
% pos(agent1, 8, p1_8).
% pos(agent1, 9, p1_9).
% pos(agent1, 10, p1_10).

% pos(agent2, 1, p2_1).
% pos(agent2, 2, p2_2).
% pos(agent2, 3, p2_3).
% pos(agent2, 4, p2_4).
% pos(agent2, 5, p2_5).
% pos(agent2, 6, p2_6).
% pos(agent2, 7, p2_7).
% pos(agent2, 8, p2_8).
% pos(agent2, 9, p2_9).
% pos(agent2, 10, p2_10).

% o_point(p1_1, "40.051", "12.880", "180.0").
% o_point(p1_2, "39.051", "12.800", "180.0"). 
% o_point(p1_3, "38.051", "12.800", "180.0").
% o_point(p1_4, "37.051", "12.800", "180.0"). 
% o_point(p1_5, "36.051", "12.800", "180.0").
% o_point(p1_6, "35.051", "12.800", "180.0").
% o_point(p1_7, "34.051", "12.800", "180.0").
% o_point(p1_8, "33.051", "12.800", "180.0").
% o_point(p1_9, "32.051", "12.800", "180.0").
% o_point(p1_10, "31.051", "12.800", "180.0").

% o_point(p2_1, "41.551", "12.800", "180.0").
% o_point(p2_2, "40.640", "12.800", "180.0").
% o_point(p2_3, "39.553", "12.800", "180.0"). 
% o_point(p2_4, "38.000", "12.800", "180.0").
% o_point(p2_5, "37.000", "12.800", "180.0").
% o_point(p2_6, "36.000", "12.800", "180.0").
% o_point(p2_7, "35.000", "12.800", "180.0").
% o_point(p2_8, "34.000", "12.800", "180.0").
% o_point(p2_9, "33.000", "12.800", "180.0").
% o_point(p2_10, "32.000", "12.800", "180.0").

% }).


% #include "contexts/narrow-passage/scenario_1.las".
% #include "contexts/narrow-passage/scenario_2.las".
#include "contexts/narrow-passage/scenario_3.las".
% #include "contexts/narrow-passage/scenario_4.las".
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
#cautious_ordering(p1_3B_1, p1_3A_1).
% ----------------
% #brave_ordering(p1_3B_1, p1_3A_2).
% #brave_ordering(p1_3B_2, p1_3A_2).
% #brave_ordering(p1_3B_2, p1_3A_1).

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
#modeo(1, give_way(const(ent), var(ent), var(time), const(room))).
#modeo(1, step_out_and_wait(const(ent), var(ent), const(room), var(time))).

% #modeo(1, overtake(var(ent), var(ent), var(time))).
% #modeo(1, invades_personal_space(var(ent), var(ent), var(time))).
% #modeo(1, past_mid(const(ent), const(room), var(time))).
% #modeo(1, step_out_and_wait(const(ent), var(ent), const(room), var(time))).
% #modeo(1, squeeze_by_wall(const(ent), var(wall), var(time))).

% #modeo(1, push_out(const(ent), var(ent), const(room), var(time))).
% #modeo(1, one_person_width(const(room))).

% ModeO for scenario 5
% #modeo(1, push_out(const(ent), var(ent), const(room), var(time))).
% #modeo(1, step_out_and_wait(const(ent), var(ent), const(room), var(time))).
% #modeo(1, squeeze_by_wall(const(ent), var(wall), var(time))).
% #modeo(1, behind(var(ent), const(ent), var(time))).

% ModeO for scenario 6
% #modeo(1, squeeze_between_conversation(const(ent), var(ent), var(ent), var(time))).
% #modeo(1, wait_end_of_talk(const(ent), var(ent), var(ent), var(time), var(time))).
% #modeo(1, talking(var(ent), var(ent), var(time))).

#maxp(2).
#maxv(4).
#constant(ent, focus_agent).
#constant(room, corridor).
#weight(-1).
#weight(1).
% #weight(2).

%%% Display %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% #show overtake/3.
% #show behind/3.
% #show in_front/3.

