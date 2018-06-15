% #include "common/background-knowledge.lp".
% #include "contexts/crossings/contextual-background-knowledge.lp".
% #include "contexts/narrow-passage/contextual-background-knowledge.lp".
#include "generator/generator-background-knowledge.lp".

% agent(robot).
% agent(agent2).

% time(1..3).

% % % wall 1
% % wall(wall1, w1_s, w1_e).
% % point(w1_s, "15.0", "12.0").
% % point(w1_e, "30.0", "12.0").

% % % wall 2
% % wall(wall2, w2_s, w2_e).
% % point(w2_s, "15.0", "10.0").
% % point(w2_e, "30.0", "10.0").

% % corridor(corridor, wall1, wall2).

% % wall(wall3, w3_s, w3_e).
% % point(w3_s, "15.0", "12.0").
% % point(w3_e, "15.0", "10.0").

% % wall(wall4, w4_s, w4_e).
% % point(w4_s, "30.0", "12.0").
% % point(w4_e, "30.0", "10.0").

% % % agent 2 steps in, sees agent 1 in, walks out and waits
% % % before attempting again
% % pos(agent2, 1, p2_1).
% % pos(agent2, 2, p2_2).
% % pos(agent2, 3, p2_3).

% o_point(p1_1, "27.051", "11.000", "0.0").

% o_point(p2_1, "29.000", "11.100", "180.0").
% o_point(p2_2, "27.000", "11.100", "180.0").
% o_point(p2_3, "25.000", "11.100", "180.0").

% % goal :- o_point(p1_3, "28.051", "11.000", "180.0").
% goal :- o_point(p1_3, "29.051", "11.0", "0.0"). 
% :- not goal.


% Option A

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(robot).
agent(agent2).

time(1..3).

% wall 1
wall(wall1, w1_s, w1_e).
point(w1_s, "15.0", "12.0").
point(w1_e, "30.0", "12.0").

% wall 2
wall(wall2, w2_s, w2_e).
point(w2_s, "15.0", "10.0").
point(w2_e, "30.0", "10.0").

corridor(corridor, wall1, wall2).

% closing rhs
wall(wall3, w3_s, w3_e).
point(w3_s, "30.0", "12.0").
point(w3_e, "30.0", "17.0").

wall(wall4, w4_s, w4_e).
point(w4_s, "30.0", "10.0").
point(w4_e, "30.0", "5.0").

wall(wall5, w5_s, w5_e).
point(w5_s, "30.0", "17.0").
point(w5_e, "40.0", "17.0").

wall(wall6, w6_s, w6_e).
point(w6_s, "30.0", "5.0").
point(w6_e, "40.0", "5.0").

wall(wall7, w7_s, w7_e).
point(w7_s, "40.0", "5.0").
point(w7_e, "40.0", "17.0").

% closing lhs
wall(wall8, w8_s, w8_e).
point(w8_s, "15.0", "12.0").
point(w8_e, "15.0", "17.0").

wall(wall9, w9_s, w9_e).
point(w9_s, "15.0", "10.0").
point(w9_e, "15.0", "5.0").

wall(wall10, w10_s, w10_e).
point(w10_s, "15.0", "17.0").
point(w10_e, "10.0", "17.0").

wall(wall11, w11_s, w11_e).
point(w11_s, "15.0", "5.0").
point(w11_e, "10.0", "5.0").

wall(wall12, w12_s, w12_e).
point(w12_s, "10.0", "5.0").
point(w12_e, "10.0", "17.0").


% % agent 2 steps in, sees agent 1 in, walks out and waits
% % before attempting again
pos(agent2, 1, p2_1).
pos(agent2, 2, p2_2).
pos(agent2, 3, p2_3).
% % pos(agent2, 4, p2_4).
% % pos(agent2, 5, p2_5).
% % pos(agent2, 6, p2_6).
% % pos(agent2, 7, p2_7).

% % pos(agent2, 8, p2_8).
% % pos(agent2, 9, p2_9).
% % pos(agent2, 10, p2_10).
% % pos(agent2, 11, p2_11).
% % pos(agent2, 12, p2_12).
% % pos(agent2, 13, p2_13).
% % pos(agent2, 14, p2_14).
% % pos(agent2, 15, p2_15).
% % pos(agent2, 16, p2_16).
% % pos(agent2, 17, p2_17).

o_point(p1_1, "13.051", "11.080", "0.0").

o_point(p2_1, "31.551", "12.400", "220.0").
o_point(p2_2, "32.640", "11.800", "200.0").
o_point(p2_3, "31.553", "11.100", "180.0").

% o_point(p2_4, "29.000", "11.100", "180.0").
% o_point(p2_5, "27.000", "11.100", "180.0").
% o_point(p2_6, "25.000", "11.100", "180.0").
% o_point(p2_7, "23.000", "11.100", "180.0").

% o_point(p2_8, "21.000", "11.100", "180.0").
% o_point(p2_9, "19.000", "11.100", "180.0").
% o_point(p2_10, "17.000", "11.100", "180.0").
% o_point(p2_11, "15.000", "11.100", "180.0").
% o_point(p2_12, "13.000", "11.100", "180.0").
% o_point(p2_13, "13.001", "11.100", "180.0").
% o_point(p2_14, "13.000", "11.100", "180.0").
% o_point(p2_15, "13.001", "11.100", "180.0").
% o_point(p2_16, "13.001", "11.100", "180.0").
% o_point(p2_17, "13.001", "11.100", "180.0").

goal :- o_point(p1_3, "15.051", "11.08", "0.0").
:- not goal.

% o_point(p1_1, "20.0", "20.0", "0.0").

#show o_point/4.
% #show possible_o_point/4.
% #show time/1.
#show pos/3.
% #show pt/4.

% #include "contexts/queues-and-groups/contextual-background-knowledge.lp".

% goal :- step_out_and_wait(focus_agent, E, corridor, T), past_mid(focus_agent, corridor, T).
% :- not goal.

% #show push_out/4.
% #show step_out_and_wait/4.
% #show past_mid/3.
% #show squeeze_between_conversation/4.
% #show squeeze_by_wall/4.
