
% #####################################
% NARROW PASSAGE Scenario 4
% ####################################
% 
%  wall1
% +-----------------------------+
%         +---------->
%        /       
%     O +     O ---> 
%         
%         
% +-----------------------------+
% wall 2
%
%

 
#pos(p1_4A_1, {}, {}, {

% METADATA
% :name=p1_4A_1
% :centrex=20.0
% :centrey=12.5


% Option A

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(focus_agent).
agent(agent2).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "10.0", "15.0").
point(w1_e, "30.0", "15.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "10.0", "10.0").
point(w2_e, "30.0", "10.0").

corridor(corridor, wall1, wall2).

% focus_agent follows agent 2
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

o_point(p1_1,  "14.551", "12.880", "0.0").
o_point(p1_2,  "16.551", "12.800", "0.0"). 
o_point(p1_3,  "18.551", "12.800", "0.0").
o_point(p1_4,  "20.551", "12.800", "0.0"). 
o_point(p1_5,  "22.551", "12.800", "0.0").
o_point(p1_6,  "24.551", "12.800", "0.0").
o_point(p1_7,  "26.551", "12.800", "0.0").
o_point(p1_8,  "28.551", "12.800", "0.0").
o_point(p1_9,  "30.551", "12.800", "0.0").
o_point(p1_10, "31.551", "11.800", "-40.0").

o_point(p2_1,  "16.551", "12.880", "0.0").
o_point(p2_2,  "18.551", "12.800", "0.0"). 
o_point(p2_3,  "20.551", "12.800", "0.0").
o_point(p2_4,  "22.551", "12.800", "0.0"). 
o_point(p2_5,  "24.551", "12.800", "0.0").
o_point(p2_6,  "26.551", "12.800", "0.0").
o_point(p2_7,  "28.551", "12.800", "0.0").
o_point(p2_8,  "30.551", "12.800", "0.0").
o_point(p2_9,  "31.551", "13.000", "40.0").
o_point(p2_10, "32.551", "13.800", "40.0").

}).

#pos(p1_4B_1, {}, {}, {

% METADATA
% :name=p1_4B_1
% :centrex=20.0
% :centrey=12.5


% Option B

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(focus_agent).
agent(agent2).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "10.0", "15.0").
point(w1_e, "30.0", "15.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "10.0", "10.0").
point(w2_e, "30.0", "10.0").

corridor(corridor, wall1, wall2).

% focus_agent overtakes agent 2
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

o_point(p1_1,  "14.551", "12.800", "0.0").
o_point(p1_2,  "16.551", "13.400", "40.0"). 
o_point(p1_3,  "18.551", "14.400", "0.0").
o_point(p1_4,  "20.551", "14.400", "0.0"). 
o_point(p1_5,  "22.551", "13.400", "-40.0").
o_point(p1_6,  "24.551", "12.800", "0.0").
o_point(p1_7,  "26.551", "12.800", "0.0").
o_point(p1_8,  "28.551", "12.800", "0.0").
o_point(p1_9,  "30.551", "12.800", "0.0").
o_point(p1_10, "31.551", "11.800", "-40.0").

o_point(p2_1,  "16.551", "12.800", "0.0").
o_point(p2_2,  "17.551", "12.800", "0.0"). 
o_point(p2_3,  "18.551", "12.800", "0.0").
o_point(p2_4,  "19.551", "12.800", "0.0"). 
o_point(p2_5,  "20.551", "12.800", "0.0").
o_point(p2_6,  "21.551", "12.800", "0.0").
o_point(p2_7,  "22.551", "12.800", "0.0").
o_point(p2_8,  "23.551", "12.800", "0.0").
o_point(p2_9,  "24.551", "13.000", "40.0").
o_point(p2_10, "25.551", "13.800", "40.0").

}).


