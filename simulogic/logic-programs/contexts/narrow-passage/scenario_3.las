
% #####################################
% NARROW PASSAGE Scenario 3
% ####################################
% 
%  wall1
% +-----------------------------+
%        ^
%        |      
%        |
%        |
%        v
% +-----------------------------+
% wall 2
%
%

#pos(p1_3A_1, {}, {}, {

% METADATA
% :name=p1_3A_1
% :centrex=22.5
% :centrey=12.5


% Option A

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(focus_agent).
agent(agent2).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "15.0", "15.0").
point(w1_e, "30.0", "15.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "15.0", "10.0").
point(w2_e, "30.0", "10.0").

corridor(corridor, wall1, wall2).

% focus_agent steps in, sees agent 2 entering on the 
% other side and steps out waiting
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

o_point(p1_1,  "14.051", "11.080", "0.0").
o_point(p1_2,  "15.051", "11.000", "0.0"). 
o_point(p1_3,  "16.051", "11.000", "0.0").
o_point(p1_4,  "15.051", "11.000", "180.0"). 
o_point(p1_5,  "14.051", "11.500", "220.0").
o_point(p1_6,  "14.051", "12.500", "40.0").
o_point(p1_7,  "14.051", "12.500", "40.0").
o_point(p1_8,  "14.051", "12.500", "40.0").
o_point(p1_9,  "14.051", "12.500", "40.0").
o_point(p1_10, "14.051", "12.000", "40.0").
o_point(p1_11, "15.501", "11.000", "0.0").

o_point(p2_1,  "33.551", "14.400", "220.0").
o_point(p2_2,  "31.640", "13.000", "200.0").
o_point(p2_3,  "29.553", "13.800", "180.0"). 
o_point(p2_4,  "27.000", "13.000", "180.0").
o_point(p2_5,  "25.000", "13.000", "180.0").
o_point(p2_6,  "23.000", "13.000", "180.0").
o_point(p2_7,  "21.000", "13.000", "180.0").
o_point(p2_8,  "19.000", "13.000", "180.0").
o_point(p2_9,  "17.000", "13.000", "180.0").
o_point(p2_10, "15.000", "13.000", "180.0").
o_point(p2_11, "13.000", "13.000", "180.0").

}).

#pos(p1_3B_1, {}, {}, {

% METADATA
% :name=p1_3B_1
% :centrex=22.5
% :centrey=12.5


% Option B

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(focus_agent).
agent(agent2).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "15.0", "15.0").
point(w1_e, "30.0", "15.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "15.0", "10.0").
point(w2_e, "30.0", "10.0").

corridor(corridor, wall1, wall2).

% focus_agent gives way to agent 2
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

o_point(p1_1,  "22.051", "12.000", "0.0").
o_point(p1_2,  "24.051", "12.000", "0.0"). 
o_point(p1_3,  "25.051", "12.500", "40.0").
o_point(p1_4,  "26.051", "13.000", "0.0").
o_point(p1_5,  "27.051", "13.000", "0.0").
o_point(p1_6,  "28.051", "13.000", "0.0").
o_point(p1_7,  "29.051", "13.000", "0.0").
o_point(p1_8,  "30.051", "13.000", "0.0").
o_point(p1_9,  "31.051", "13.000", "0.0").
o_point(p1_10, "32.051", "13.000", "0.0").

o_point(p2_1,  "30.553", "12.000", "180.0"). 
o_point(p2_2,  "29.000", "12.000", "180.0").
o_point(p2_3,  "27.000", "12.000", "220.0").
o_point(p2_4,  "25.000", "11.000", "180.0").
o_point(p2_5,  "24.000", "11.000", "180.0").
o_point(p2_6,  "23.000", "11.000", "180.0").
o_point(p2_7,  "23.000", "11.000", "180.0").
o_point(p2_8,  "23.000", "11.000", "180.0").
o_point(p2_9,  "23.000", "11.000", "180.0").
o_point(p2_10, "23.000", "11.000", "180.0").

}).

