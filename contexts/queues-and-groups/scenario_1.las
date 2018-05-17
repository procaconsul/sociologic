
% ################################################
% QUEUES AND GROUPS Scenario 1 
% ##########################################################################

% wall1                 
%    +--------------+
%           O
%           O 
%     O     O
%           O
% +--------------------+
% wall2
 
#pos(p3_1A_1, {}, {}, {

% METADATA
% :name=p3_1A_1
% :centrex=27.5
% :centrey=11.5


% Option A

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(focus_agent).
agent(agent2).
agent(agent3).
agent(agent4).
agent(agent5).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "26.0", "13.0").
point(w1_e, "29.0", "13.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "20.0", "10.0").
point(w2_e, "35.0", "10.0").

queue(queue, 1, 1..14, agent2).
queue(queue, 2, 1..14, agent3).
queue(queue, 3, 1..14, agent4).
queue(queue, 4, 1..14, agent5).

% focus_agent goes through the queue.
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
pos(agent3, 13, p3_13).
pos(agent3, 14, p3_14).

pos(agent4, 1, p4_1).
pos(agent4, 2, p4_2).
pos(agent4, 3, p4_3).
pos(agent4, 4, p4_4).
pos(agent4, 5, p4_5).
pos(agent4, 6, p4_6).
pos(agent4, 7, p4_7).
pos(agent4, 8, p4_8).
pos(agent4, 9, p4_9).
pos(agent4, 10, p4_10).
pos(agent4, 11, p4_11).
pos(agent4, 12, p4_12).
pos(agent4, 13, p4_13).
pos(agent4, 14, p4_14).

pos(agent5, 1, p5_1).
pos(agent5, 2, p5_2).
pos(agent5, 3, p5_3).
pos(agent5, 4, p5_4).
pos(agent5, 5, p5_5).
pos(agent5, 6, p5_6).
pos(agent5, 7, p5_7).
pos(agent5, 8, p5_8).
pos(agent5, 9, p5_9).
pos(agent5, 10, p5_10).
pos(agent5, 11, p5_11).
pos(agent5, 12, p5_12).
pos(agent5, 13, p5_13).
pos(agent5, 14, p5_14).

o_point(p1_1,  "21.000", "11.500", "0.0").
o_point(p1_2,  "22.000", "11.500", "0.0"). 
o_point(p1_3,  "23.000", "11.500", "0.0").
o_point(p1_4,  "24.000", "11.500", "0.0"). 
o_point(p1_5,  "25.000", "11.500", "0.0").
o_point(p1_6,  "26.000", "11.500", "0.0").
o_point(p1_7,  "27.000", "11.500", "0.0").
o_point(p1_8,  "28.000", "11.500", "0.0").
o_point(p1_9,  "29.000", "11.500", "0.0").
o_point(p1_10, "30.000", "11.500", "0.0").
o_point(p1_11, "31.000", "11.500", "0.0").
o_point(p1_12, "32.000", "11.500", "0.0").
o_point(p1_13, "33.000", "11.500", "0.0").
o_point(p1_14, "34.000", "11.500", "0.0").

o_point(p2_1,  "27.500", "12.500", "90.0").
o_point(p2_2,  "27.500", "12.500", "90.0").
o_point(p2_3,  "27.500", "12.500", "90.0"). 
o_point(p2_4,  "27.500", "12.500", "90.0").
o_point(p2_5,  "27.000", "12.500", "90.0").
o_point(p2_6,  "27.000", "12.500", "90.0").
o_point(p2_7,  "26.750", "12.500", "90.0").
o_point(p2_8,  "27.000", "12.500", "90.0").
o_point(p2_9,  "27.000", "12.500", "90.0").
o_point(p2_10, "27.500", "12.500", "90.0").
o_point(p2_11, "27.500", "12.500", "90.0").
o_point(p2_12, "27.500", "12.500", "90.0").
o_point(p2_13, "27.500", "12.500", "90.0").
o_point(p2_14, "27.500", "12.500", "90.0").

o_point(p3_1,  "27.500", "12.000", "90.0").
o_point(p3_2,  "27.500", "12.000", "90.0").
o_point(p3_3,  "27.500", "12.000", "90.0"). 
o_point(p3_4,  "27.500", "12.000", "90.0").
o_point(p3_5,  "27.500", "12.000", "90.0").
o_point(p3_6,  "27.500", "12.000", "90.0").
o_point(p3_7,  "27.500", "12.250", "90.0").
o_point(p3_8,  "27.500", "12.000", "90.0").
o_point(p3_9,  "27.500", "12.000", "90.0").
o_point(p3_10, "27.500", "12.000", "90.0").
o_point(p3_11, "27.500", "12.000", "90.0").
o_point(p3_12, "27.500", "12.000", "90.0").
o_point(p3_13, "27.500", "12.000", "90.0").
o_point(p3_14, "27.500", "12.000", "90.0").

o_point(p4_1,  "27.500", "11.500", "90.0").
o_point(p4_2,  "27.500", "11.500", "90.0").
o_point(p4_3,  "27.500", "11.500", "90.0"). 
o_point(p4_4,  "27.500", "11.500", "90.0").
o_point(p4_5,  "27.500", "11.500", "90.0").
o_point(p4_6,  "27.500", "11.500", "90.0").
o_point(p4_7,  "27.500", "11.250", "90.0").
o_point(p4_8,  "27.500", "11.500", "90.0").
o_point(p4_9,  "27.500", "11.500", "90.0").
o_point(p4_10, "27.500", "11.500", "90.0").
o_point(p4_11, "27.500", "11.500", "90.0").
o_point(p4_12, "27.500", "11.500", "90.0").
o_point(p4_13, "27.500", "11.500", "90.0").
o_point(p4_14, "27.500", "11.500", "90.0").

o_point(p5_1,  "27.500", "11.000", "90.0").
o_point(p5_2,  "27.500", "11.000", "90.0").
o_point(p5_3,  "27.500", "11.000", "90.0"). 
o_point(p5_4,  "27.500", "11.000", "90.0").
o_point(p5_5,  "27.500", "11.000", "90.0").
o_point(p5_6,  "27.500", "11.000", "90.0").
o_point(p5_7,  "27.750", "11.000", "90.0").
o_point(p5_8,  "27.500", "11.000", "90.0").
o_point(p5_9,  "27.500", "11.000", "90.0").
o_point(p5_10, "27.500", "11.000", "90.0").
o_point(p5_11, "27.500", "11.000", "90.0").
o_point(p5_12, "27.500", "11.000", "90.0").
o_point(p5_13, "27.500", "11.000", "90.0").
o_point(p5_14, "27.500", "11.000", "90.0").

}).

#pos(p3_1B_1, {}, {}, {

% METADATA
% :name=p3_1B_1
% :centrex=27.5
% :centrey=11.5


% Option B

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(focus_agent).
agent(agent2).
agent(agent3).
agent(agent4).
agent(agent5).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "26.0", "13.0").
point(w1_e, "29.0", "13.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "20.0", "10.0").
point(w2_e, "35.0", "10.0").

queue(queue, 1, 1..14, agent2).
queue(queue, 2, 1..14, agent3).
queue(queue, 3, 1..14, agent4).
queue(queue, 4, 1..14, agent5).

% focus_agent goes through the queue.
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
pos(agent3, 13, p3_13).
pos(agent3, 14, p3_14).

pos(agent4, 1, p4_1).
pos(agent4, 2, p4_2).
pos(agent4, 3, p4_3).
pos(agent4, 4, p4_4).
pos(agent4, 5, p4_5).
pos(agent4, 6, p4_6).
pos(agent4, 7, p4_7).
pos(agent4, 8, p4_8).
pos(agent4, 9, p4_9).
pos(agent4, 10, p4_10).
pos(agent4, 11, p4_11).
pos(agent4, 12, p4_12).
pos(agent4, 13, p4_13).
pos(agent4, 14, p4_14).

pos(agent5, 1, p5_1).
pos(agent5, 2, p5_2).
pos(agent5, 3, p5_3).
pos(agent5, 4, p5_4).
pos(agent5, 5, p5_5).
pos(agent5, 6, p5_6).
pos(agent5, 7, p5_7).
pos(agent5, 8, p5_8).
pos(agent5, 9, p5_9).
pos(agent5, 10, p5_10).
pos(agent5, 11, p5_11).
pos(agent5, 12, p5_12).
pos(agent5, 13, p5_13).
pos(agent5, 14, p5_14).

o_point(p1_1,  "21.000", "11.500", "0.0").
o_point(p1_2,  "22.000", "11.500", "0.0"). 
o_point(p1_3,  "23.000", "11.500", "0.0").
o_point(p1_4,  "24.000", "11.500", "-40.0"). 
o_point(p1_5,  "25.000", "11.000", "-40.0").
o_point(p1_6,  "26.000", "10.500", "-20.0").
o_point(p1_7,  "27.000", "10.010", "0.0").
o_point(p1_8,  "28.000", "10.500", "20.0").
o_point(p1_9,  "29.000", "11.000", "40.0").
o_point(p1_10, "30.000", "11.500", "40.0").
o_point(p1_11, "31.000", "11.500", "0.0").
o_point(p1_12, "32.000", "11.500", "0.0").
o_point(p1_13, "33.000", "11.500", "0.0").
o_point(p1_14, "34.000", "11.500", "0.0").

o_point(p2_1,  "27.500", "12.500", "90.0").
o_point(p2_2,  "27.500", "12.500", "90.0").
o_point(p2_3,  "27.500", "12.500", "90.0"). 
o_point(p2_4,  "27.500", "12.500", "90.0").
o_point(p2_5,  "27.500", "12.500", "90.0").
o_point(p2_6,  "27.500", "12.500", "90.0").
o_point(p2_7,  "27.500", "12.500", "90.0").
o_point(p2_8,  "27.500", "12.500", "90.0").
o_point(p2_9,  "27.500", "12.500", "90.0").
o_point(p2_10, "27.500", "12.500", "90.0").
o_point(p2_11, "27.500", "12.500", "90.0").
o_point(p2_12, "27.500", "12.500", "90.0").
o_point(p2_13, "27.500", "12.500", "90.0").
o_point(p2_14, "27.500", "12.500", "90.0").

o_point(p3_1,  "27.500", "12.000", "90.0").
o_point(p3_2,  "27.500", "12.000", "90.0").
o_point(p3_3,  "27.500", "12.000", "90.0"). 
o_point(p3_4,  "27.500", "12.000", "90.0").
o_point(p3_5,  "27.500", "12.000", "90.0").
o_point(p3_6,  "27.500", "12.000", "90.0").
o_point(p3_7,  "27.500", "12.250", "90.0").
o_point(p3_8,  "27.500", "12.000", "90.0").
o_point(p3_9,  "27.500", "12.000", "90.0").
o_point(p3_10, "27.500", "12.000", "90.0").
o_point(p3_11, "27.500", "12.000", "90.0").
o_point(p3_12, "27.500", "12.000", "90.0").
o_point(p3_13, "27.500", "12.000", "90.0").
o_point(p3_14, "27.500", "12.000", "90.0").

o_point(p4_1,  "27.500", "11.500", "90.0").
o_point(p4_2,  "27.500", "11.500", "90.0").
o_point(p4_3,  "27.500", "11.500", "90.0"). 
o_point(p4_4,  "27.500", "11.500", "90.0").
o_point(p4_5,  "27.500", "11.500", "90.0").
o_point(p4_6,  "27.500", "11.500", "90.0").
o_point(p4_7,  "27.500", "11.750", "90.0").
o_point(p4_8,  "27.500", "11.500", "90.0").
o_point(p4_9,  "27.500", "11.500", "90.0").
o_point(p4_10, "27.500", "11.500", "90.0").
o_point(p4_11, "27.500", "11.500", "90.0").
o_point(p4_12, "27.500", "11.500", "90.0").
o_point(p4_13, "27.500", "11.500", "90.0").
o_point(p4_14, "27.500", "11.500", "90.0").

o_point(p5_1,  "27.500", "11.000", "90.0").
o_point(p5_2,  "27.500", "11.000", "90.0").
o_point(p5_3,  "27.500", "11.000", "90.0"). 
o_point(p5_4,  "27.500", "11.000", "90.0").
o_point(p5_5,  "27.500", "11.000", "90.0").
o_point(p5_6,  "27.500", "11.000", "90.0").
o_point(p5_7,  "27.500", "11.250", "90.0").
o_point(p5_8,  "27.500", "11.000", "90.0").
o_point(p5_9,  "27.500", "11.000", "90.0").
o_point(p5_10, "27.500", "11.000", "90.0").
o_point(p5_11, "27.500", "11.000", "90.0").
o_point(p5_12, "27.500", "11.000", "90.0").
o_point(p5_13, "27.500", "11.000", "90.0").
o_point(p5_14, "27.500", "11.000", "90.0").


}).

