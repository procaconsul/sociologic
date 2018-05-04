
% #####################################
% NARROW PASSAGE Scenario 4
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

 
#pos(p1_4A_1, {}, {}, {

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(agent1).
agent(agent2).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "10.0", "20.0").
point(w1_e, "60.0", "20.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "10.0", "10.0").
point(w2_e, "60.0", "10.0").

corridor(corridor, wall1, wall2).

% Agent 1 overtakes agent 2 on the right, both moving East (<--)
pos(agent1, 1, p1_1).
pos(agent1, 2, p1_2).
pos(agent1, 3, p1_3).
pos(agent1, 4, p1_4).
pos(agent1, 5, p1_5).
pos(agent1, 6, p1_6).
pos(agent1, 7, p1_7).
pos(agent1, 8, p1_8).
pos(agent1, 9, p1_9).
pos(agent1, 10, p1_10).

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

o_point(p1_1, "40.551", "12.880", "180.0").
o_point(p1_2, "39.551", "12.800", "180.0"). 
o_point(p1_3, "38.551", "12.800", "180.0").
o_point(p1_4, "37.551", "12.800", "180.0"). 
o_point(p1_5, "36.551", "12.800", "180.0").
o_point(p1_6, "35.551", "12.800", "180.0").
o_point(p1_7, "34.551", "12.800", "180.0").
o_point(p1_8, "33.551", "12.800", "180.0").
o_point(p1_9, "32.551", "12.800", "180.0").
o_point(p1_10, "31.551", "12.800", "180.0").

o_point(p2_1, "42.551", "12.800", "180.0").
o_point(p2_2, "40.760", "12.800", "180.0").
o_point(p2_3, "39.763", "13.150", "170.0"). 
o_point(p2_4, "37.551", "14.000", "180.0").
o_point(p2_5, "35.551", "14.000", "180.0").
o_point(p2_6, "33.551", "14.000", "180.0").
o_point(p2_7, "32.551", "13.100", "190.0").
o_point(p2_8, "30.551", "12.800", "180.0").
o_point(p2_9, "28.551", "12.800", "180.0").
o_point(p2_10, "26.551", "12.800", "180.0").

}).

#pos(p1_4B_1, {}, {}, {

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(agent1).
agent(agent2).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "10.0", "20.0").
point(w1_e, "60.0", "20.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "10.0", "10.0").
point(w2_e, "60.0", "10.0").

corridor(corridor, wall1, wall2).

% agent 2 (faster) slows down and stays behind agent 1 (respecting ps)
pos(agent1, 1, p1_1).
pos(agent1, 2, p1_2).
pos(agent1, 3, p1_3).
pos(agent1, 4, p1_4).
pos(agent1, 5, p1_5).
pos(agent1, 6, p1_6).
pos(agent1, 7, p1_7).
pos(agent1, 8, p1_8).
pos(agent1, 9, p1_9).
pos(agent1, 10, p1_10).

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

o_point(p1_1, "40.551", "12.880", "180.0").
o_point(p1_2, "39.551", "12.800", "180.0"). 
o_point(p1_3, "38.551", "12.800", "180.0").
o_point(p1_4, "37.551", "12.800", "180.0"). 
o_point(p1_5, "36.551", "12.800", "180.0").
o_point(p1_6, "35.551", "12.800", "180.0").
o_point(p1_7, "34.551", "12.800", "180.0").
o_point(p1_8, "33.551", "12.800", "180.0").
o_point(p1_9, "32.551", "12.800", "180.0").
o_point(p1_10, "31.551", "12.800", "180.0").

o_point(p2_1, "43.551", "12.800", "180.0").
o_point(p2_2, "41.640", "12.800", "180.0").
o_point(p2_3, "40.553", "12.800", "180.0"). 
o_point(p2_4, "39.000", "12.800", "180.0").
o_point(p2_5, "38.000", "12.800", "180.0").
o_point(p2_6, "37.000", "12.800", "180.0").
o_point(p2_7, "36.000", "12.800", "180.0").
o_point(p2_8, "35.000", "12.800", "180.0").
o_point(p2_9, "34.000", "12.800", "180.0").
o_point(p2_10, "33.000", "12.800", "180.0").

}).


