
% ###########################################
% NARROW ALLEY Scenario 2
% ###########################################
%            mid
%  wall1      |
% +------------------------+
%             |
% +------------------------+
%  wall2      |
%

#pos(p1_2A_1, {}, {}, {

% METADATA
% :name=p1_2A_1
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

% focus_agent reaches the middle and goes all the way
% back 
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

o_point(p1_1, "20.051", "11.100", "0.0").
o_point(p1_2, "22.051", "11.100", "0.0").
o_point(p1_3, "24.050", "11.100", "0.0"). 
o_point(p1_4, "26.501", "11.100", "0.0").
o_point(p1_5, "24.501", "11.100", "180.0").
o_point(p1_6, "22.051", "11.100", "180.0").
o_point(p1_7, "20.051", "11.100", "180.0").
o_point(p1_8, "18.051", "11.100", "180.0").
o_point(p1_9, "16.051", "11.100", "140.0").
o_point(p1_10, "14.051", "12.000", "290.0").
o_point(p1_11, "16.051", "11.100", "0.0").
o_point(p1_12, "18.051", "11.100", "0.0").

o_point(p2_1, "32.051", "11.000", "180.0").
o_point(p2_2, "31.051", "11.000", "180.0").
o_point(p2_3, "30.500", "11.000", "180.0").
o_point(p2_4, "29.501", "11.000", "180.0").
o_point(p2_5, "27.501", "11.000", "180.0").
o_point(p2_6, "25.051", "11.000", "180.0").
o_point(p2_7, "23.051", "11.000", "180.0").
o_point(p2_8, "21.051", "11.000", "180.0").
o_point(p2_9, "19.051", "11.000", "180.0").
o_point(p2_10, "17.051", "11.000", "180.0").
o_point(p2_11, "15.051", "11.000", "180.0").
o_point(p2_12, "13.051", "11.000", "180.0").

}).


#pos(p1_2B_1, {}, {}, {

% METADATA
% :name=p1_2B_1
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

% focus_agent reaches the mid of the corridor first and 
% squeezes by the wall to pass agent 2
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

o_point(p1_1,  "20.051", "11.080", "0.0").
o_point(p1_2,  "21.051", "11.000", "0.0").
o_point(p1_3,  "22.051", "11.000", "0.0").
o_point(p1_4,  "23.051", "11.000", "0.0"). 
o_point(p1_5,  "24.051", "11.000", "0.0").
o_point(p1_6,  "25.051", "11.500", "40.0").
o_point(p1_7,  "26.051", "11.910", "0.0").
o_point(p1_8,  "27.051", "11.910", "0.0").
o_point(p1_9,  "28.051", "11.500", "-40.0").
o_point(p1_10, "29.051", "11.000", "0.0").
o_point(p1_11, "30.051", "11.000", "0.0").
o_point(p1_12, "31.051", "11.000", "0.0").

o_point(p2_1,  "34.551", "12.400", "220.0").
o_point(p2_2,  "33.640", "11.800", "200.0").
o_point(p2_3,  "32.553", "11.100", "180.0"). 
o_point(p2_4,  "31.000", "11.100", "180.0").
o_point(p2_5,  "30.000", "11.100", "180.0").
o_point(p2_6,  "29.000", "11.100", "180.0").
o_point(p2_7,  "28.000", "11.100", "180.0").
o_point(p2_8,  "27.000", "11.100", "180.0").
o_point(p2_9,  "26.000", "11.100", "180.0").
o_point(p2_10, "25.000", "11.100", "180.0").
o_point(p2_11, "24.000", "11.100", "180.0").
o_point(p2_12, "23.000", "11.100", "180.0").

}).

#pos(p1_2C_1, {}, {}, {

% METADATA
% :name=p1_2C_1
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

% focus_agent passes the mid and forces agent 2 (just entering)
% to step out and wait 
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


o_point(p1_1,  "21.051", "11.000", "0.0").
o_point(p1_2,  "23.051", "11.000", "0.0").
o_point(p1_3,  "24.050", "11.000", "0.0"). 
o_point(p1_4,  "26.501", "11.000", "0.0").
o_point(p1_5,  "28.501", "11.000", "0.0").
o_point(p1_6,  "30.051", "11.000", "0.0").
o_point(p1_7,  "32.051", "11.000", "0.0").
o_point(p1_8,  "34.051", "11.000", "0.0").
o_point(p1_9,  "36.051", "11.000", "0.0").
o_point(p1_10, "38.051", "11.000", "0.0").
o_point(p1_11, "40.051", "11.000", "0.0").
o_point(p1_12, "42.051", "11.000", "0.0").

o_point(p2_1,  "32.051", "11.100", "180.0").
o_point(p2_2,  "31.051", "11.100", "180.0").
o_point(p2_3,  "29.500", "11.100", "180.0"). 
o_point(p2_4,  "30.501", "11.100", "0.0").
o_point(p2_5,  "31.051", "12.100", "220.0").
o_point(p2_6,  "31.051", "12.100", "220.0").
o_point(p2_7,  "31.051", "12.100", "220.0").
o_point(p2_8,  "29.051", "11.100", "180.0").
o_point(p2_9,  "27.051", "11.100", "180.0").
o_point(p2_10, "25.051", "11.100", "180.0").
o_point(p2_11, "23.051", "11.100", "180.0").
o_point(p2_12, "21.051", "11.100", "180.0").

}).


