
% ################################################
% NARROW PASSAGE SCENARIO 1
% ##########################################################################

%                      | wall3
% wall1                |
% ---------------------+
%
% ---------------------+
% wall2                |
%                      | wall4

#pos(p1_1A_1, {}, {}, {

% METADATA
% :name=p1_1A_1
% :centrex=22.5
% :centrey=11.0

% Option A

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(focus_agent).
agent(agent2).

% wall 1
wall(wall1, w1_s, w1_e).
point(w1_s, "15.0", "12.0").
point(w1_e, "30.0", "12.0").

% wall 2
wall(wall2, w2_s, w2_e).
point(w2_s, "15.0", "10.0").
point(w2_e, "30.0", "10.0").

corridor(corridor, wall1, wall2).

wall(wall3, w3_s, w3_e).
point(w3_s, "30.0", "12.0").
point(w3_e, "30.0", "17.0").

wall(wall4, w4_s, w4_e).
point(w4_s, "30.0", "10.0").
point(w4_e, "30.0", "5.0").

% agent 2 steps in, sees agent 1 in, walks out and waits
% before attempting again
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
pos(focus_agent, 12, p1_12).
pos(focus_agent, 13, p1_13).
pos(focus_agent, 14, p1_14).

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
pos(agent2, 12, p2_12).
pos(agent2, 13, p2_13).
pos(agent2, 14, p2_14).

o_point(p1_1, "13.051", "11.080", "0.0").
o_point(p1_2, "14.051", "11.000", "0.0").
o_point(p1_3, "15.051", "11.000", "0.0").
o_point(p1_4, "16.051", "11.000", "0.0").
o_point(p1_5, "15.051", "10.800", "0.0").
o_point(p1_6, "14.051", "10.100", "0.0").
o_point(p1_7, "14.051", "9.600", "0.0").
o_point(p1_8, "14.051", "9.600", "0.0").
o_point(p1_9, "14.051", "9.600", "0.0").
o_point(p1_10, "14.051", "9.600", "0.0").
o_point(p1_11, "14.051", "9.600", "0.0").
o_point(p1_12, "14.751", "10.400", "0.0").
o_point(p1_13, "15.051", "11.000", "0.0").
o_point(p1_14, "16.051", "11.000", "0.0").

o_point(p2_1, "35.551", "12.400", "220.0").
o_point(p2_2, "33.640", "11.800", "200.0").
o_point(p2_3, "31.553", "11.100", "180.0").
o_point(p2_4, "29.000", "11.100", "180.0").
o_point(p2_5, "27.000", "11.100", "180.0").
o_point(p2_6, "25.000", "11.100", "180.0").
o_point(p2_7, "23.000", "11.100", "180.0").
o_point(p2_8, "21.000", "11.100", "180.0").
o_point(p2_9, "19.000", "11.100", "180.0").
o_point(p2_10, "17.000", "11.100", "180.0").
o_point(p2_11, "15.000", "11.100", "180.0").
o_point(p2_12, "13.000", "11.100", "180.0").
o_point(p2_13, "11.000", "11.100", "180.0").
o_point(p2_14, "9.000", "11.100", "180.0").


}).

#pos(p1_1B_1, {}, {}, {

% METADATA
% :name=p1_1B_1
% :centrex=22.5
% :centrey=11.0


% Option B

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(focus_agent).
agent(agent2).

% wall 1
wall(wall1, w1_s, w1_e).
point(w1_s, "15.0", "12.0").
point(w1_e, "30.0", "12.0").

% wall 2
wall(wall2, w2_s, w2_e).
point(w2_s, "15.0", "10.0").
point(w2_e, "30.0", "10.0").

corridor(corridor, wall1, wall2).

wall(wall3, w3_s, w3_e).
point(w3_s, "30.0", "12.0").
point(w3_e, "30.0", "17.0").

wall(wall4, w4_s, w4_e).
point(w4_s, "30.0", "10.0").
point(w4_e, "30.0", "5.0").

% agent 2 steps and squeezes by the wall
% as he passes agent 1 on the side (BEFORE MID)
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

o_point(p1_1,  "14.551", "11.800", "-40.0").
o_point(p1_2,  "16.640", "11.800", "0.0").
o_point(p1_3,  "18.553", "11.100", "0.0").
o_point(p1_4,  "20.000", "11.500", "40.0").
o_point(p1_5,  "22.000", "11.910", "0.0").
o_point(p1_6,  "24.000", "11.910", "0.0").
o_point(p1_7,  "26.000", "11.500", "-40.0").
o_point(p1_8,  "28.000", "11.100", "0.0").
o_point(p1_9,  "30.000", "11.100", "0.0").
o_point(p1_10, "32.000", "11.100", "0.0").

o_point(p2_1,  "32.051", "11.080", "180.0").
o_point(p2_2,  "30.051", "11.000", "180.0").
o_point(p2_3,  "28.051", "11.000", "180.0").
o_point(p2_4,  "26.051", "10.800", "180.0").
o_point(p2_5,  "24.051", "10.800", "180.0").
o_point(p2_6,  "22.051", "11.000", "180.0").
o_point(p2_7,  "20.051", "11.000", "180.0").
o_point(p2_8,  "18.051", "11.000", "180.0").
o_point(p2_9,  "16.051", "11.000", "180.0").
o_point(p2_10, "14.051", "11.000", "180.0").


}).

% #pos(p1_1B_2, {}, {}, {

% % Option B

% %%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% agent(focus_agent).
% agent(agent2).

% % wall 1
% wall(wall1, w1_s, w1_e).
% point(w1_s, "15.0", "12.0").
% point(w1_e, "30.0", "12.0").

% % wall 2
% wall(wall2, w2_s, w2_e).
% point(w2_s, "15.0", "10.0").
% point(w2_e, "30.0", "10.0").

% corridor(corridor, wall1, wall2).

% wall(wall3, w3_s, w3_e).
% point(w3_s, "30.0", "12.0").
% point(w3_e, "30.0", "17.0").

% wall(wall4, w4_s, w4_e).
% point(w4_s, "30.0", "10.0").
% point(w4_e, "30.0", "5.0").

% % agent 2 steps and squeezes by the wall
% % as he passes agent 1 on the side
% pos(focus_agent, 1, p1_1).
% pos(focus_agent, 2, p1_2).
% pos(focus_agent, 3, p1_3).
% pos(focus_agent, 4, p1_4).
% pos(focus_agent, 5, p1_5).
% pos(focus_agent, 6, p1_6).
% pos(focus_agent, 7, p1_7).
% pos(focus_agent, 8, p1_8).
% pos(focus_agent, 9, p1_9).


% pos(agent2, 1, p2_1).
% pos(agent2, 2, p2_2).
% pos(agent2, 3, p2_3).
% pos(agent2, 4, p2_4).
% pos(agent2, 5, p2_5).
% pos(agent2, 6, p2_6).
% pos(agent2, 7, p2_7).
% pos(agent2, 8, p2_8).
% pos(agent2, 9, p2_9).


% o_point(p1_1, "17.051", "11.080", "0.0").
% o_point(p1_2, "18.051", "11.000", "0.0").
% o_point(p1_3, "19.051", "11.000", "0.0").
% o_point(p1_4, "20.051", "10.800", "0.0").
% o_point(p1_5, "21.051", "10.800", "0.0").
% o_point(p1_6, "22.051", "10.800", "0.0").
% o_point(p1_7, "23.051", "11.000", "0.0").
% o_point(p1_8, "24.051", "11.000", "0.0").
% o_point(p1_9, "25.051", "11.000", "0.0").

% o_point(p2_1, "22.551", "11.400", "180.0").
% o_point(p2_2, "21.640", "11.700", "140.0").
% o_point(p2_3, "20.553", "11.910", "180.0").
% o_point(p2_4, "19.000", "11.910", "220.0").
% o_point(p2_5,  "18.000", "11.100", "180.0").
% o_point(p2_6,  "17.000", "11.100", "180.0").
% o_point(p2_7,  "16.000", "11.500", "180.0").
% o_point(p2_8,  "15.000", "11.100", "180.0").
% o_point(p2_9,  "14.000", "11.100", "180.0").
% }).


#pos(p1_1C_1, {}, {}, {

% METADATA
% :name=p1_1C_1
% :centrex=22.5
% :centrey=11.0


% Option C

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(focus_agent).
agent(agent2).

% wall 1
wall(wall1, w1_s, w1_e).
point(w1_s, "15.0", "12.0").
point(w1_e, "30.0", "12.0").

% wall 2
wall(wall2, w2_s, w2_e).
point(w2_s, "15.0", "10.0").
point(w2_e, "30.0", "10.0").

corridor(corridor, wall1, wall2).

wall(wall3, w3_s, w3_e).
point(w3_s, "30.0", "12.0").
point(w3_e, "30.0", "17.0").

wall(wall4, w4_s, w4_e).
point(w4_s, "30.0", "10.0").
point(w4_e, "30.0", "5.0").

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
pos(focus_agent, 12, p1_12).
pos(focus_agent, 13, p1_13).
pos(focus_agent, 14, p1_14).
pos(focus_agent, 15, p1_15).

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
pos(agent2, 12, p2_12).
pos(agent2, 13, p2_13).
pos(agent2, 14, p2_14).
pos(agent2, 15, p2_15).

% Agent 2 enters after agent 1 crosses the middle but
% forces him to step out
o_point(p1_1,  "17.051", "11.080", "0.0").
o_point(p1_2,  "18.551", "11.000", "0.0").
o_point(p1_3,  "19.051", "11.000", "0.0").
o_point(p1_4,  "20.051", "11.000", "0.0").
o_point(p1_5,  "21.051", "11.000", "0.0").
o_point(p1_6,  "22.051", "11.000", "0.0").
o_point(p1_7,  "23.051", "11.000", "0.0").
o_point(p1_8,  "24.051", "11.000", "0.0").
o_point(p1_9,  "25.051", "11.000", "0.0").
o_point(p1_10, "26.051", "11.000", "0.0").
o_point(p1_11, "27.051", "11.000", "0.0").
o_point(p1_12, "28.000", "11.000", "0.0").
o_point(p1_13, "29.051", "11.000", "0.0").
o_point(p1_14, "30.051", "11.000", "0.0").
o_point(p1_15, "32.051", "11.000", "0.0").

o_point(p2_1,  "27.551", "11.800", "220.0").
o_point(p2_2,  "26.640", "11.500", "200.0").
o_point(p2_3,  "25.553", "11.100", "180.0").
o_point(p2_4,  "26.000", "11.100", "0.0").
o_point(p2_5,  "27.000", "11.100", "0.0").
o_point(p2_6,  "28.000", "11.100", "0.0").
o_point(p2_7,  "29.000", "11.100", "0.0").
o_point(p2_8,  "30.000", "11.600", "40.0").
o_point(p2_9,  "31.000", "12.100", "220.0").
o_point(p2_10, "31.000", "12.100", "220.0").
o_point(p2_11, "31.000", "12.100", "220.0").
o_point(p2_12, "31.000", "12.100", "220.0").
o_point(p2_13, "31.000", "12.100", "220.0").
o_point(p2_14, "30.000", "11.800", "220.0").
o_point(p2_15, "29.400", "11.100", "180.0").

}).


