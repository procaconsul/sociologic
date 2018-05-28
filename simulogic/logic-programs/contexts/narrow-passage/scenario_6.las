
% #####################################
% NARROW PASSAGE Scenario 6
% ####################################
% 
%  wall1
% +-----------------------------+
%
%         talking pair
%
% +-----------------------------+
% wall 2
%
%

#pos(p1_6A_1, {}, {}, {

% METADATA
% :name=p1_6A_1
% :centrex=22.5
% :centrey=12.5


% Option A

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(focus_agent).
agent(agent2).
agent(agent3).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "15.0", "15.0").
point(w1_e, "30.0", "15.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "15.0", "10.0").
point(w2_e, "30.0", "10.0").

corridor(corridor, wall1, wall2).

talking(agent3, agent2, 1..6).

% focus_agent waits until others finish talking.
% When they end and start moving, focus_agent resumes
% walking
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

pos(agent3, 1, p3_1).
pos(agent3, 2, p3_2).
pos(agent3, 3, p3_3).
pos(agent3, 4, p3_4).
pos(agent3, 5, p3_5).
pos(agent3, 6, p3_6).
pos(agent3, 7, p3_7).
pos(agent3, 8, p3_8).
pos(agent3, 9, p3_9).
pos(agent3, 10, p3_10).

o_point(p1_1, "20.051", "12.000", "0.0").
o_point(p1_2, "21.051", "12.000", "0.0").
o_point(p1_3, "21.051", "12.000", "0.0"). 
o_point(p1_4, "21.051", "12.000", "0.0").
o_point(p1_5, "21.051", "12.000", "0.0").
o_point(p1_6, "21.051", "12.000", "0.0").
o_point(p1_7, "22.051", "11.500", "0.0").
o_point(p1_8, "24.051", "12.700", "0.0").
o_point(p1_9, "26.051", "12.700", "0.0").
o_point(p1_10, "28.051", "12.700", "0.0").

o_point(p2_1, "22.500", "13.900", "270.0").
o_point(p2_2, "22.500", "13.900", "270.0").
o_point(p2_3, "22.500", "13.900", "270.0"). 
o_point(p2_4, "22.500", "13.900", "270.0").
o_point(p2_5, "22.500", "13.900", "270.0").
o_point(p2_6, "22.500", "13.900", "270.0").
o_point(p2_7, "21.051", "14.000", "180.0").
o_point(p2_8, "20.051", "14.000", "180.0").
o_point(p2_9, "19.051", "14.000", "180.0").
o_point(p2_10, "18.051", "14.000", "180.0").

o_point(p3_1, "22.500", "10.900", "90.0").
o_point(p3_2, "22.500", "10.900", "90.0").
o_point(p3_3, "22.500", "10.900", "90.0"). 
o_point(p3_4, "22.500", "10.900", "90.0").
o_point(p3_5, "22.500", "10.900", "90.0").
o_point(p3_6, "22.500", "10.900", "90.0").
o_point(p3_7, "23.051", "11.100", "0.0").
o_point(p3_8, "24.051", "11.100", "0.0").
o_point(p3_9, "25.051", "11.100", "0.0").
o_point(p3_10, "26.051", "11.100", "0.0").
}).

#pos(p1_6B_1, {}, {}, {

% METADATA
% :name=p1_6B_1
% :centrex=22.5
% :centrey=12.5


% Option B

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(focus_agent).
agent(agent2).
agent(agent3).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "15.0", "15.0").
point(w1_e, "30.0", "15.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "15.0", "10.0").
point(w2_e, "30.0", "10.0").

corridor(corridor, wall1, wall2).

talking(agent3, agent2, 1..6).

% focus_agent walks in between others talking
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

pos(agent3, 1, p3_1).
pos(agent3, 2, p3_2).
pos(agent3, 3, p3_3).
pos(agent3, 4, p3_4).
pos(agent3, 5, p3_5).
pos(agent3, 6, p3_6).
pos(agent3, 7, p3_7).
pos(agent3, 8, p3_8).
pos(agent3, 9, p3_9).
pos(agent3, 10, p3_10).


o_point(p1_1, "20.051", "12.400", "0.0").
o_point(p1_2, "21.051", "12.400", "0.0").
o_point(p1_3, "22.051", "12.400", "0.0"). 
o_point(p1_4, "23.051", "12.400", "0.0").
o_point(p1_5, "24.051", "12.400", "0.0").
o_point(p1_6, "25.051", "12.400", "0.0").
o_point(p1_7, "26.051", "12.400", "0.0").
o_point(p1_8, "27.051", "12.400", "0.0").
o_point(p1_9, "28.051", "12.400", "0.0").
o_point(p1_10, "29.051", "12.400", "0.0").

o_point(p2_1, "22.500", "13.900", "270.0").
o_point(p2_2, "22.500", "13.900", "270.0").
o_point(p2_3, "22.500", "14.100", "270.0"). 
o_point(p2_4, "22.500", "13.900", "270.0").
o_point(p2_5, "22.500", "13.900", "270.0").
o_point(p2_6, "22.500", "13.900", "270.0").
o_point(p2_7, "22.500", "13.900", "180.0").
o_point(p2_8, "22.500", "13.900", "180.0").
o_point(p2_9, "22.500", "13.900", "180.0").
o_point(p2_10, "22.500", "13.900", "180.0").

o_point(p3_1, "22.500", "10.900", "90.0").
o_point(p3_2, "22.500", "10.900", "90.0").
o_point(p3_3, "22.500", "10.700", "90.0"). 
o_point(p3_4, "22.500", "10.900", "90.0").
o_point(p3_5, "22.500", "10.900", "90.0").
o_point(p3_6, "22.500", "10.900", "90.0").
o_point(p3_7, "22.500", "10.900", "0.0").
o_point(p3_8, "22.500", "10.900", "0.0").
o_point(p3_9, "22.500", "10.900", "0.0").
o_point(p3_10, "22.500", "10.900", "0.0").
}).

#pos(p1_6C_1, {}, {}, {

% METADATA
% :name=p1_6C_1
% :centrex=22.5
% :centrey=12.5


% Option C

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(focus_agent).
agent(agent2).
agent(agent3).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "15.0", "15.0").
point(w1_e, "30.0", "15.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "15.0", "10.0").
point(w2_e, "30.0", "10.0").

corridor(corridor, wall1, wall2).

talking(agent3, agent2, 1..6).

% focus_agent squeezes by the wall to pass the others
% talking
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

pos(agent3, 1, p3_1).
pos(agent3, 2, p3_2).
pos(agent3, 3, p3_3).
pos(agent3, 4, p3_4).
pos(agent3, 5, p3_5).
pos(agent3, 6, p3_6).
pos(agent3, 7, p3_7).
pos(agent3, 8, p3_8).
pos(agent3, 9, p3_9).
pos(agent3, 10, p3_10).

o_point(p1_1, "20.051", "12.000", "0.0").
o_point(p1_2, "21.051", "11.000", "0.0").
o_point(p1_3, "22.051", "10.400", "-40.0"). 
o_point(p1_4, "23.051", "10.100", "40.0").
o_point(p1_5, "24.051", "11.000", "0.0").
o_point(p1_6, "25.051", "12.000", "0.0").
o_point(p1_7, "27.051", "12.000", "0.0").
o_point(p1_8, "28.051", "12.000", "0.0").
o_point(p1_9, "29.051", "13.000", "0.0").
o_point(p1_10, "30.051", "14.000", "0.0").

o_point(p2_1, "22.500", "13.900", "270.0").
o_point(p2_2, "22.500", "13.900", "270.0").
o_point(p2_3, "22.500", "13.900", "270.0"). 
o_point(p2_4, "22.500", "13.900", "270.0").
o_point(p2_5, "22.500", "13.900", "270.0").
o_point(p2_6, "22.500", "13.900", "270.0").
o_point(p2_7, "22.500", "13.900", "180.0").
o_point(p2_8, "22.500", "13.900", "180.0").
o_point(p2_9, "22.500", "13.900", "180.0").
o_point(p2_10, "22.500", "13.900", "180.0").

o_point(p3_1, "22.500", "10.900", "90.0").
o_point(p3_2, "22.500", "10.900", "90.0").
o_point(p3_3, "22.500", "11.200", "90.0"). 
o_point(p3_4, "22.500", "10.900", "90.0").
o_point(p3_5, "22.500", "10.900", "90.0").
o_point(p3_6, "22.500", "10.900", "90.0").
o_point(p3_7, "22.500", "10.900",  "0.0").
o_point(p3_8, "22.500", "10.900",  "0.0").
o_point(p3_9, "22.500", "10.900",  "0.0").
o_point(p3_10, "22.500", "10.900", "0.0").

}).



