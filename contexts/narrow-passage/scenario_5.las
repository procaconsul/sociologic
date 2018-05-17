
% #####################################
% NARROW PASSAGE Scenario 5
% ####################################
% 
%  wall1
% +-----------------------------+
%            O-> O->        <--@ 
% +-----------------------------+
% wall 2
%
%

#pos(p1_5A_1, {}, {}, {

% METADATA
% :name=p1_5A_1
% :centrex=22.5
% :centrey=11.0


% Option A

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(focus_agent).
agent(agent2).
agent(agent3).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "15.0", "12.0").
point(w1_e, "30.0", "12.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "15.0", "10.0").
point(w2_e, "30.0", "10.0").

corridor(corridor, wall1, wall2).

% focus_agent followed by agent2 enter the alley.
% agent3 then enters the alley, and focus_agent and agent2
% go all the way back and wait for agent3 to exit
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
pos(agent3, 11, p3_11).
pos(agent3, 12, p3_12).

o_point(p1_1, "16.051", "11.100", "0.0").
o_point(p1_2, "18.051", "11.100", "0.0").
o_point(p1_3, "20.050", "11.100", "0.0"). 
o_point(p1_4, "22.501", "11.100", "0.0").
o_point(p1_5, "20.501", "11.100", "180.0").
o_point(p1_6, "18.051", "11.100", "180.0").
o_point(p1_7, "16.051", "11.100", "140.0").
o_point(p1_8, "14.051", "11.500", "140.0").
o_point(p1_9, "14.051", "12.100", "-40.0").
o_point(p1_10, "16.051", "11.000", "0.0").
o_point(p1_11, "18.051", "11.100", "0.0").
o_point(p1_12, "20.051", "11.100", "0.0").

o_point(p2_1, "14.051", "11.100", "0.0").
o_point(p2_2, "16.051", "11.100", "0.0").
o_point(p2_3, "18.050", "11.100", "0.0"). 
o_point(p2_4, "20.501", "11.100", "0.0").
o_point(p2_5, "18.501", "11.100", "180.0").
o_point(p2_6, "16.051", "11.100", "180.0").
o_point(p2_7, "14.051", "11.100", "220.0").
o_point(p2_8, "14.051", "9.100", "220.0").
o_point(p2_9, "14.051", "9.100", "40.0").
o_point(p2_10, "14.051", "11.100", "0.0").
o_point(p2_11, "16.051", "11.100", "0.0").
o_point(p2_12, "18.051", "11.100", "0.0").

o_point(p3_1, "30.051", "11.000", "180.0").
o_point(p3_2, "28.051", "11.000", "180.0").
o_point(p3_3, "26.500", "11.000", "180.0"). 
o_point(p3_4, "24.501", "11.000", "180.0").
o_point(p3_5, "22.501", "11.000", "180.0").
o_point(p3_6, "20.051", "11.000", "180.0").
o_point(p3_7, "18.051", "11.000", "180.0").
o_point(p3_8, "16.051", "11.000", "180.0").
o_point(p3_9, "14.051", "11.000", "180.0").
o_point(p3_10, "12.051", "11.000", "180.0").
o_point(p3_11, "10.051", "11.000", "180.0").
o_point(p3_12, "8.051", "11.000", "180.0").

}).


#pos(p1_5B_1, {}, {}, {

% METADATA
% :name=p1_5B_1
% :centrex=22.5
% :centrey=11.0


% Option B

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(focus_agent).
agent(agent2).
agent(agent3).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "15.0", "12.0").
point(w1_e, "30.0", "12.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "15.0", "10.0").
point(w2_e, "30.0", "10.0").

corridor(corridor, wall1, wall2).

% focus_agent followed by agent2 enter the alley.
% agent3 then enters the alley, and focus_agent and agent2
% squeeze by the wall to pass agent3
pos(focus_agent, 1, p1_1).
pos(focus_agent, 2, p1_2).
pos(focus_agent, 3, p1_3).
pos(focus_agent, 4, p1_4).
pos(focus_agent, 5, p1_5).
pos(focus_agent, 6, p1_6).
pos(focus_agent, 7, p1_7).
pos(focus_agent, 8, p1_8).

pos(agent2, 1, p2_1).
pos(agent2, 2, p2_2).
pos(agent2, 3, p2_3).
pos(agent2, 4, p2_4).
pos(agent2, 5, p2_5).
pos(agent2, 6, p2_6).
pos(agent2, 7, p2_7).
pos(agent2, 8, p2_8).

pos(agent3, 1, p3_1).
pos(agent3, 2, p3_2).
pos(agent3, 3, p3_3).
pos(agent3, 4, p3_4).
pos(agent3, 5, p3_5).
pos(agent3, 6, p3_6).
pos(agent3, 7, p3_7).
pos(agent3, 8, p3_8).

o_point(p1_1, "17.551", "11.100", "0.0").
o_point(p1_2, "19.640", "11.100", "0.0").
o_point(p1_3, "21.553", "11.100", "0.0"). 
o_point(p1_4, "23.000", "11.500", "40.0").
o_point(p1_5, "27.000", "11.910", "0.0").
o_point(p1_6, "29.000", "11.800", "-40.0").
o_point(p1_7, "31.000", "11.100", "0.0").
o_point(p1_8, "33.000", "11.100", "0.0").

o_point(p2_1, "15.551", "11.100", "0.0").
o_point(p2_2, "17.640", "11.100", "0.0").
o_point(p2_3, "19.553", "11.100", "0.0"). 
o_point(p2_4, "21.000", "11.100", "0.0").
o_point(p2_5, "25.000", "11.500", "40.0").
o_point(p2_6, "27.000", "11.910", "0.0").
o_point(p2_7, "29.000", "11.800", "-40.0").
o_point(p2_8, "31.000", "11.100", "0.0").

o_point(p3_1, "35.051", "12.880", "180.0").
o_point(p3_2, "33.051", "12.000", "180.0"). 
o_point(p3_3, "31.051", "11.000", "180.0").
o_point(p3_4, "29.051", "11.000", "180.0"). 
o_point(p3_5, "27.051", "11.000", "180.0").
o_point(p3_6, "25.051", "11.000", "180.0").
o_point(p3_7, "23.051", "11.000", "180.0").
o_point(p3_8, "21.051", "11.000", "180.0").

}).

#pos(p1_5C_1, {}, {}, {

% METADATA
% :name=p1_5C_1
% :centrex=22.5
% :centrey=11.0


% Option C

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(focus_agent).
agent(agent2).
agent(agent3).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "15.0", "12.0").
point(w1_e, "30.0", "12.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "15.0", "10.0").
point(w2_e, "30.0", "10.0").

corridor(corridor, wall1, wall2).

% agent 1 passes the mid and forces agent 2 (just entering)
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
pos(agent2, 13, p2_13).

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
pos(agent3, 11, p3_11).
pos(agent3, 12, p3_12).

o_point(p1_1, "17.551", "11.100", "0.0").
o_point(p1_2, "19.640", "11.100", "0.0").
o_point(p1_3, "21.553", "11.100", "0.0"). 
o_point(p1_4, "23.000", "11.100", "0.0").
o_point(p1_5, "27.000", "11.100", "0.0").
o_point(p1_6, "29.000", "11.100", "0.0").
o_point(p1_7, "31.000", "11.100", "0.0").
o_point(p1_8, "33.000", "11.100", "0.0").
o_point(p1_9, "35.000", "11.100", "0.0").

o_point(p2_1, "15.551", "11.100", "0.0").
o_point(p2_2, "17.640", "11.100", "0.0").
o_point(p2_3, "19.553", "11.100", "0.0"). 
o_point(p2_4, "21.000", "11.100", "0.0").
o_point(p2_5, "25.000", "11.100", "0.0").
o_point(p2_6, "27.000", "11.100", "0.0").
o_point(p2_7, "29.000", "11.100", "0.0").
o_point(p2_8, "31.000", "11.100", "0.0").
o_point(p2_9, "33.000", "11.100", "0.0").

o_point(p3_1, "35.051", "12.880", "180.0").
o_point(p3_2, "33.051", "12.000", "180.0"). 
o_point(p3_3, "31.051", "11.000", "180.0").
o_point(p3_4, "29.051", "11.000", "180.0"). 
o_point(p3_5, "31.051", "11.500", "40.0").
o_point(p3_6, "31.051", "12.200", "220.0").
o_point(p3_7, "31.051", "12.200", "220.0").
o_point(p3_8, "29.051", "11.000", "180.0").
o_point(p3_9, "27.051", "11.000", "180.0").

}).



