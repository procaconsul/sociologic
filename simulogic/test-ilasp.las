
% #####################################
% CROSSING Scenario 1
% ####################################
%
%
%           +      +
%     wall5 |      |wall6
%  wall1    |      |      wall2
% +---------+  O   +--------------+
%
%              |
%     O -->    V
%
%
%
% +---------+      +--------------+
%  wall3    |      |      wall4
%      wall7|      |wall8
%           +      +

#pos(p2_1A_1, {}, {}, {

% METADATA
% :name=p2_1A_1
% :centrex=17.5
% :centrey=12.5

% Option A

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(focus_agent).
agent(agent2).

% wall 1
wall(wall1, w1_s, w1_e).
point(w1_s, "15.0", "15.0").
point(w1_e, "20.0", "15.0").

% wall 2
wall(wall2, w2_s, w2_e).
point(w2_s, "15.0", "10.0").
point(w2_e, "20.0", "10.0").

% wall 3
wall(wall3, w3_s, w3_e).
point(w3_s, "25.0", "15.0").
point(w3_e, "30.0", "15.0").

% wall 4
wall(wall4, w4_s, w4_e).
point(w4_s, "25.0", "10.0").
point(w4_e, "30.0", "10.0").

% wall 5
wall(wall5, w5_s, w5_e).
point(w5_s, "20.0", "15.0").
point(w5_e, "20.0", "19.0").

% wall 6
wall(wall6, w6_s, w6_e).
point(w6_s, "25.0", "15.0").
point(w6_e, "25.0", "19.0").

% wall 7
wall(wall7, w7_s, w7_e).
point(w7_s, "20.0", "10.0").
point(w7_e, "20.0", "06.0").

% wall 8
wall(wall8, w8_s, w8_e).
point(w8_s, "25.0", "10.0").
point(w8_e, "25.0", "06.0").

corridor(corridor_1, wall1, wall2).
corridor(corridor_2, wall3, wall4).
corridor(corridor_3, wall5, wall6).
corridor(corridor_4, wall7, wall8).

crossing(crossing, corridor_1, corridor_2, corridor_3, corridor_4).

% focus_agent passes behind agent 2
pos(focus_agent, 1, p1_1).
pos(focus_agent, 2, p1_2).
pos(focus_agent, 3, p1_3).
pos(focus_agent, 4, p1_4).
pos(focus_agent, 5, p1_5).
pos(focus_agent, 6, p1_6).
pos(focus_agent, 7, p1_7).
pos(focus_agent, 8, p1_8).
pos(focus_agent, 9, p1_9).
pos(focus_agent, 10, p1_10).
pos(focus_agent, 11, p1_11).

pos(agent2, 1, p2_1).
pos(agent2, 2, p2_2).
pos(agent2, 3, p2_3).
pos(agent2, 4, p2_4).
pos(agent2, 5, p2_5).
pos(agent2, 6, p2_6).
pos(agent2, 7, p2_7).
pos(agent2, 8, p2_8).
pos(agent2, 9, p2_9).
pos(agent2, 10, p2_10).
pos(agent2, 11, p2_11).

o_point(p1_1,  "17.051", "12.000", "0.0").
o_point(p1_2,  "18.051", "12.000", "0.0").
o_point(p1_3,  "19.051", "12.000", "0.0").
o_point(p1_4,  "20.051", "12.000", "0.0").
o_point(p1_5,  "21.051", "12.000", "0.0").
o_point(p1_6,  "22.051", "12.000", "0.0").
o_point(p1_7,  "23.051", "12.000", "0.0").
o_point(p1_8,  "24.051", "12.000", "0.0").
o_point(p1_9,  "25.051", "12.000", "0.0").
o_point(p1_10, "26.051", "12.000", "0.0").
o_point(p1_11, "27.501", "12.000", "0.0").

o_point(p2_1,  "23.000", "17.000", "270.0").
o_point(p2_2,  "23.000", "16.000", "270.0").
o_point(p2_3,  "23.000", "15.000", "270.0").
o_point(p2_4,  "23.000", "14.000", "270.0").
o_point(p2_5,  "23.000", "13.000", "270.0").
o_point(p2_6,  "23.000", "12.000", "270.0").
o_point(p2_7,  "23.000", "11.000", "270.0").
o_point(p2_8,  "23.000",  "10.000", "270.0").
o_point(p2_9,  "23.000",  "9.000", "270.0").
o_point(p2_10, "23.000",  "8.000", "270.0").
o_point(p2_11, "23.000",  "7.000", "270.0").

}).

#pos(p2_1B_1, {}, {}, {

% METADATA
% :name=p2_1B_1
% :centrex=17.5
% :centrey=12.5


% Option B

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(focus_agent).
agent(agent2).

% wall 1
wall(wall1, w1_s, w1_e).
point(w1_s, "15.0", "15.0").
point(w1_e, "20.0", "15.0").

% wall 2
wall(wall2, w2_s, w2_e).
point(w2_s, "15.0", "10.0").
point(w2_e, "20.0", "10.0").

% wall 3
wall(wall3, w3_s, w3_e).
point(w3_s, "25.0", "15.0").
point(w3_e, "30.0", "15.0").

% wall 4
wall(wall4, w4_s, w4_e).
point(w4_s, "25.0", "10.0").
point(w4_e, "30.0", "10.0").

% wall 5
wall(wall5, w5_s, w5_e).
point(w5_s, "20.0", "15.0").
point(w5_e, "20.0", "19.0").

% wall 6
wall(wall6, w6_s, w6_e).
point(w6_s, "25.0", "15.0").
point(w6_e, "25.0", "19.0").

% wall 7
wall(wall7, w7_s, w7_e).
point(w7_s, "20.0", "10.0").
point(w7_e, "20.0", "06.0").

% wall 8
wall(wall8, w8_s, w8_e).
point(w8_s, "25.0", "10.0").
point(w8_e, "25.0", "06.0").

corridor(corridor_1, wall1, wall2).
corridor(corridor_2, wall3, wall4).
corridor(corridor_3, wall5, wall6).
corridor(corridor_4, wall7, wall8).

crossing(crossing, corridor_1, corridor_2, corridor_3, corridor_4).

% focus_agent passes in front of agent 2
pos(focus_agent, 1, p1_1).
pos(focus_agent, 2, p1_2).
pos(focus_agent, 3, p1_3).
pos(focus_agent, 4, p1_4).
pos(focus_agent, 5, p1_5).
pos(focus_agent, 6, p1_6).
pos(focus_agent, 7, p1_7).
pos(focus_agent, 8, p1_8).
pos(focus_agent, 9, p1_9).
pos(focus_agent, 10, p1_10).
pos(focus_agent, 11, p1_11).

pos(agent2, 1, p2_1).
pos(agent2, 2, p2_2).
pos(agent2, 3, p2_3).
pos(agent2, 4, p2_4).
pos(agent2, 5, p2_5).
pos(agent2, 6, p2_6).
pos(agent2, 7, p2_7).
pos(agent2, 8, p2_8).
pos(agent2, 9, p2_9).
pos(agent2, 10, p2_10).
pos(agent2, 11, p2_11).

o_point(p1_1,  "17.051", "12.000", "0.0").
o_point(p1_2,  "18.051", "12.000", "0.0").
o_point(p1_3,  "19.051", "12.000", "0.0").
o_point(p1_4,  "20.051", "12.000", "0.0").
o_point(p1_5,  "21.051", "12.000", "0.0").
o_point(p1_6,  "22.051", "12.000", "0.0").
o_point(p1_7,  "23.051", "12.000", "0.0").
o_point(p1_8,  "24.051", "12.000", "0.0").
o_point(p1_9,  "25.051", "12.000", "0.0").
o_point(p1_10, "26.051", "12.000", "0.0").
o_point(p1_11, "27.501", "12.000", "0.0").

o_point(p2_1,  "23.000", "19.000", "270.0").
o_point(p2_2,  "23.000", "18.000", "270.0").
o_point(p2_3,  "23.000", "17.000", "270.0").
o_point(p2_4,  "23.000", "16.000", "270.0").
o_point(p2_5,  "23.000", "15.000", "270.0").
o_point(p2_6,  "23.000", "14.000", "270.0").
o_point(p2_7,  "23.000", "13.000", "270.0").
o_point(p2_8,  "23.000",  "12.000", "270.0").
o_point(p2_9,  "23.000",  "11.000", "270.0").
o_point(p2_10, "23.000",  "10.000", "270.0").
o_point(p2_11, "23.000",  "9.000", "270.0").

}).


