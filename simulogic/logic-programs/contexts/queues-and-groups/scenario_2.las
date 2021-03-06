
% ################################################
% QUEUES AND GROUPS Scenario 2 
% ##########################################################################

% wall1                 
%    +--------------+
%           O OOO O
%           O O O O
%     O     O O O O
%           OOO OOO
% +--------------------+
% wall2
 
#pos(p1_2A_3, {}, {}, {

% METADATA
% :name=p3_2A_1
% :centrex=27.5
% :centrey=11.5


% Option A

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(focus_agent).
agent(agent2).
agent(agent3).
agent(agent4).
agent(agent5).
agent(agent6).
agent(agent7).
agent(agent8).
agent(agent9).
agent(agent10).
agent(agent11).
agent(agent12).
agent(agent13).
agent(agent14).
agent(agent15).

time(1..10).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "26.0", "13.0").
point(w1_e, "29.0", "13.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "20.0", "10.0").
point(w2_e, "35.0", "10.0").

queue(queue, 1,  1..10, agent2).
queue(queue, 2,  1..10, agent3).
queue(queue, 3,  1..10, agent4).
queue(queue, 4,  1..10, agent5).
queue(queue, 5,  1..10, agent6).
queue(queue, 6,  1..10, agent7).
queue(queue, 7,  1..10, agent8).
queue(queue, 8,  1..10, agent9).
queue(queue, 9,  1..10, agent10).
queue(queue, 10, 1..10, agent11).
queue(queue, 11, 1..10, agent12).
queue(queue, 12, 1..10, agent13).
queue(queue, 13, 1..10, agent14).
queue(queue, 14, 1..10, agent15).

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

pos(agent6, 1,  p6_1).
pos(agent6, 2,  p6_2).
pos(agent6, 3,  p6_3).
pos(agent6, 4,  p6_4).
pos(agent6, 5,  p6_5).
pos(agent6, 6,  p6_6).
pos(agent6, 7,  p6_7).
pos(agent6, 8,  p6_8).
pos(agent6, 9,  p6_9).
pos(agent6, 10, p6_10).

pos(agent7, 1,  p7_1).
pos(agent7, 2,  p7_2).
pos(agent7, 3,  p7_3).
pos(agent7, 4,  p7_4).
pos(agent7, 5,  p7_5).
pos(agent7, 6,  p7_6).
pos(agent7, 7,  p7_7).
pos(agent7, 8,  p7_8).
pos(agent7, 9,  p7_9).
pos(agent7, 10, p7_10).

pos(agent8, 1,  p8_1).
pos(agent8, 2,  p8_2).
pos(agent8, 3,  p8_3).
pos(agent8, 4,  p8_4).
pos(agent8, 5,  p8_5).
pos(agent8, 6,  p8_6).
pos(agent8, 7,  p8_7).
pos(agent8, 8,  p8_8).
pos(agent8, 9,  p8_9).
pos(agent8, 10, p8_10).

pos(agent9, 1,  p9_1).
pos(agent9, 2,  p9_2).
pos(agent9, 3,  p9_3).
pos(agent9, 4,  p9_4).
pos(agent9, 5,  p9_5).
pos(agent9, 6,  p9_6).
pos(agent9, 7,  p9_7).
pos(agent9, 8,  p9_8).
pos(agent9, 9,  p9_9).
pos(agent9, 10, p9_10).

pos(agent10, 1,  p10_1).
pos(agent10, 2,  p10_2).
pos(agent10, 3,  p10_3).
pos(agent10, 4,  p10_4).
pos(agent10, 5,  p10_5).
pos(agent10, 6,  p10_6).
pos(agent10, 7,  p10_7).
pos(agent10, 8,  p10_8).
pos(agent10, 9,  p10_9).
pos(agent10, 10, p10_10).

pos(agent11, 1,  p11_1).
pos(agent11, 2,  p11_2).
pos(agent11, 3,  p11_3).
pos(agent11, 4,  p11_4).
pos(agent11, 5,  p11_5).
pos(agent11, 6,  p11_6).
pos(agent11, 7,  p11_7).
pos(agent11, 8,  p11_8).
pos(agent11, 9,  p11_9).
pos(agent11, 10, p11_10).

pos(agent12, 1,  p12_1).
pos(agent12, 2,  p12_2).
pos(agent12, 3,  p12_3).
pos(agent12, 4,  p12_4).
pos(agent12, 5,  p12_5).
pos(agent12, 6,  p12_6).
pos(agent12, 7,  p12_7).
pos(agent12, 8,  p12_8).
pos(agent12, 9,  p12_9).
pos(agent12, 10, p12_10).

pos(agent13, 1,  p13_1).
pos(agent13, 2,  p13_2).
pos(agent13, 3,  p13_3).
pos(agent13, 4,  p13_4).
pos(agent13, 5,  p13_5).
pos(agent13, 6,  p13_6).
pos(agent13, 7,  p13_7).
pos(agent13, 8,  p13_8).
pos(agent13, 9,  p13_9).
pos(agent13, 10, p13_10).

pos(agent14, 1,  p14_1).
pos(agent14, 2,  p14_2).
pos(agent14, 3,  p14_3).
pos(agent14, 4,  p14_4).
pos(agent14, 5,  p14_5).
pos(agent14, 6,  p14_6).
pos(agent14, 7,  p14_7).
pos(agent14, 8,  p14_8).
pos(agent14, 9,  p14_9).
pos(agent14, 10, p14_10).

pos(agent15, 1,  p15_1).
pos(agent15, 2,  p15_2).
pos(agent15, 3,  p15_3).
pos(agent15, 4,  p15_4).
pos(agent15, 5,  p15_5).
pos(agent15, 6,  p15_6).
pos(agent15, 7,  p15_7).
pos(agent15, 8,  p15_8).
pos(agent15, 9,  p15_9).
pos(agent15, 10, p15_10).

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

o_point(p6_1,  "28.000", "11.000", "180.0").
o_point(p6_2,  "28.000", "11.000", "180.0").
o_point(p6_3,  "28.000", "11.000", "180.0"). 
o_point(p6_4,  "28.000", "11.000", "180.0").
o_point(p6_5,  "28.000", "11.000", "180.0").
o_point(p6_6,  "28.000", "11.000", "180.0").
o_point(p6_7,  "28.000", "11.000", "180.0").
o_point(p6_8,  "28.000", "11.000", "180.0").
o_point(p6_9,  "28.000", "11.000", "180.0").
o_point(p6_10, "28.000", "11.000", "180.0").

o_point(p7_1,  "28.500", "11.000", "270.0").
o_point(p7_2,  "28.500", "11.000", "270.0").
o_point(p7_3,  "28.500", "11.000", "270.0"). 
o_point(p7_4,  "28.500", "11.000", "270.0").
o_point(p7_5,  "28.500", "11.000", "270.0").
o_point(p7_6,  "28.500", "11.000", "270.0").
o_point(p7_7,  "28.500", "11.000", "270.0").
o_point(p7_8,  "28.750", "11.000", "270.0").
o_point(p7_9,  "28.500", "11.000", "270.0").
o_point(p7_10, "28.500", "11.000", "270.0").

o_point(p8_1,  "28.500", "11.500", "270.0").
o_point(p8_2,  "28.500", "11.500", "270.0").
o_point(p8_3,  "28.500", "11.500", "270.0"). 
o_point(p8_4,  "28.500", "11.500", "270.0").
o_point(p8_5,  "28.500", "11.500", "270.0").
o_point(p8_6,  "28.500", "11.500", "270.0").
o_point(p8_7,  "28.500", "11.500", "270.0").
o_point(p8_8,  "28.500", "11.250", "270.0").
o_point(p8_9,  "28.500", "11.500", "270.0").
o_point(p8_10, "28.500", "11.500", "270.0").

o_point(p9_1,  "28.500", "12.000", "270.0").
o_point(p9_2,  "28.500", "12.000", "270.0").
o_point(p9_3,  "28.500", "12.000", "270.0"). 
o_point(p9_4,  "28.500", "12.000", "270.0").
o_point(p9_5,  "28.500", "12.000", "270.0").
o_point(p9_6,  "28.500", "12.000", "270.0").
o_point(p9_7,  "28.500", "12.000", "270.0").
o_point(p9_8,  "28.500", "12.250", "270.0").
o_point(p9_9,  "28.500", "12.000", "270.0").
o_point(p9_10, "28.500", "12.000", "270.0").

o_point(p10_1,  "28.500", "12.500", "270.0").
o_point(p10_2,  "28.500", "12.500", "270.0").
o_point(p10_3,  "28.500", "12.500", "270.0"). 
o_point(p10_4,  "28.500", "12.500", "270.0").
o_point(p10_5,  "28.500", "12.500", "270.0").
o_point(p10_6,  "28.500", "12.500", "270.0").
o_point(p10_7,  "28.500", "12.500", "270.0").
o_point(p10_8,  "28.250", "12.500", "270.0").
o_point(p10_9,  "28.500", "12.500", "270.0").
o_point(p10_10, "28.500", "12.500", "270.0").

o_point(p11_1,  "29.000", "12.500", "180.0").
o_point(p11_2,  "29.000", "12.500", "180.0").
o_point(p11_3,  "29.000", "12.500", "180.0"). 
o_point(p11_4,  "29.000", "12.500", "180.0").
o_point(p11_5,  "29.000", "12.500", "180.0").
o_point(p11_6,  "29.000", "12.500", "180.0").
o_point(p11_7,  "29.000", "12.500", "180.0").
o_point(p11_8,  "29.000", "12.500", "180.0").
o_point(p11_9,  "29.000", "12.500", "180.0").
o_point(p11_10, "29.000", "12.500", "180.0").

o_point(p12_1,  "29.500", "12.500", "180.0").
o_point(p12_2,  "29.500", "12.500", "180.0").
o_point(p12_3,  "29.500", "12.500", "180.0"). 
o_point(p12_4,  "29.500", "12.500", "180.0").
o_point(p12_5,  "29.500", "12.500", "180.0").
o_point(p12_6,  "29.500", "12.500", "180.0").
o_point(p12_7,  "29.500", "12.500", "180.0").
o_point(p12_8,  "29.500", "12.500", "180.0").
o_point(p12_9,  "29.750", "12.500", "180.0").
o_point(p12_10, "29.500", "12.500", "180.0").

o_point(p13_1,  "29.500", "12.000", "90.0").
o_point(p13_2,  "29.500", "12.000", "90.0").
o_point(p13_3,  "29.500", "12.000", "90.0"). 
o_point(p13_4,  "29.500", "12.000", "90.0").
o_point(p13_5,  "29.500", "12.000", "90.0").
o_point(p13_6,  "29.500", "12.000", "90.0").
o_point(p13_7,  "29.500", "12.000", "90.0").
o_point(p13_8,  "29.500", "12.000", "90.0").
o_point(p13_9,  "29.500", "12.250", "90.0").
o_point(p13_10, "29.500", "12.000", "90.0").

o_point(p14_1,  "29.500", "11.500", "90.0").
o_point(p14_2,  "29.500", "11.500", "90.0").
o_point(p14_3,  "29.500", "11.500", "90.0"). 
o_point(p14_4,  "29.500", "11.500", "90.0").
o_point(p14_5,  "29.500", "11.500", "90.0").
o_point(p14_6,  "29.500", "11.500", "90.0").
o_point(p14_7,  "29.500", "11.500", "90.0").
o_point(p14_8,  "29.500", "11.500", "90.0").
o_point(p14_9,  "29.500", "11.250", "90.0").
o_point(p14_10, "29.500", "11.500", "90.0").

o_point(p15_1,  "29.500", "11.000", "90.0").
o_point(p15_2,  "29.500", "11.000", "90.0").
o_point(p15_3,  "29.500", "11.000", "90.0"). 
o_point(p15_4,  "29.500", "11.000", "90.0").
o_point(p15_5,  "29.500", "11.000", "90.0").
o_point(p15_6,  "29.500", "11.000", "90.0").
o_point(p15_7,  "29.500", "11.000", "90.0").
o_point(p15_8,  "29.500", "11.000", "90.0").
o_point(p15_9,  "29.250", "11.000", "90.0").
o_point(p15_10, "29.500", "11.000", "90.0").

}).

#pos(p1_2B_3, {}, {}, {

% METADATA
% :name=p3_2B_1
% :centrex=27.5
% :centrey=11.5


% Option B

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(focus_agent).
agent(agent2).
agent(agent3).
agent(agent4).
agent(agent5).
agent(agent6).
agent(agent7).
agent(agent8).
agent(agent9).
agent(agent10).
agent(agent11).
agent(agent12).
agent(agent13).
agent(agent14).
agent(agent15).

time(1..14).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "26.0", "13.0").
point(w1_e, "29.0", "13.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "20.0", "10.0").
point(w2_e, "35.0", "10.0").

queue(queue, 1,  1..14, agent2).
queue(queue, 2,  1..14, agent3).
queue(queue, 3,  1..14, agent4).
queue(queue, 4,  1..14, agent5).
queue(queue, 5,  1..14, agent6).
queue(queue, 6,  1..14, agent7).
queue(queue, 7,  1..14, agent8).
queue(queue, 8,  1..14, agent9).
queue(queue, 9,  1..14, agent10).
queue(queue, 10, 1..14, agent11).
queue(queue, 11, 1..14, agent12).
queue(queue, 12, 1..14, agent13).
queue(queue, 13, 1..14, agent14).
queue(queue, 14, 1..14, agent15).

% focus_agent goes around the queue.
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

pos(agent6, 1,  p6_1).
pos(agent6, 2,  p6_2).
pos(agent6, 3,  p6_3).
pos(agent6, 4,  p6_4).
pos(agent6, 5,  p6_5).
pos(agent6, 6,  p6_6).
pos(agent6, 7,  p6_7).
pos(agent6, 8,  p6_8).
pos(agent6, 9,  p6_9).
pos(agent6, 10, p6_10).
pos(agent6, 11, p6_11).
pos(agent6, 12, p6_12).
pos(agent6, 13, p6_13).
pos(agent6, 14, p6_14).

pos(agent7, 1,  p7_1).
pos(agent7, 2,  p7_2).
pos(agent7, 3,  p7_3).
pos(agent7, 4,  p7_4).
pos(agent7, 5,  p7_5).
pos(agent7, 6,  p7_6).
pos(agent7, 7,  p7_7).
pos(agent7, 8,  p7_8).
pos(agent7, 9,  p7_9).
pos(agent7, 10, p7_10).
pos(agent7, 11, p7_11).
pos(agent7, 12, p7_12).
pos(agent7, 13, p7_13).
pos(agent7, 14, p7_14).

pos(agent8, 1,  p8_1).
pos(agent8, 2,  p8_2).
pos(agent8, 3,  p8_3).
pos(agent8, 4,  p8_4).
pos(agent8, 5,  p8_5).
pos(agent8, 6,  p8_6).
pos(agent8, 7,  p8_7).
pos(agent8, 8,  p8_8).
pos(agent8, 9,  p8_9).
pos(agent8, 10, p8_10).
pos(agent8, 11, p8_11).
pos(agent8, 12, p8_12).
pos(agent8, 13, p8_13).
pos(agent8, 14, p8_14).

pos(agent9, 1,  p9_1).
pos(agent9, 2,  p9_2).
pos(agent9, 3,  p9_3).
pos(agent9, 4,  p9_4).
pos(agent9, 5,  p9_5).
pos(agent9, 6,  p9_6).
pos(agent9, 7,  p9_7).
pos(agent9, 8,  p9_8).
pos(agent9, 9,  p9_9).
pos(agent9, 10, p9_10).
pos(agent9, 11, p9_11).
pos(agent9, 12, p9_12).
pos(agent9, 13, p9_13).
pos(agent9, 14, p9_14).

pos(agent10, 1,  p10_1).
pos(agent10, 2,  p10_2).
pos(agent10, 3,  p10_3).
pos(agent10, 4,  p10_4).
pos(agent10, 5,  p10_5).
pos(agent10, 6,  p10_6).
pos(agent10, 7,  p10_7).
pos(agent10, 8,  p10_8).
pos(agent10, 9,  p10_9).
pos(agent10, 10, p10_10).
pos(agent10, 11, p10_11).
pos(agent10, 12, p10_12).
pos(agent10, 13, p10_13).
pos(agent10, 14, p10_14).

pos(agent11, 1,  p11_1).
pos(agent11, 2,  p11_2).
pos(agent11, 3,  p11_3).
pos(agent11, 4,  p11_4).
pos(agent11, 5,  p11_5).
pos(agent11, 6,  p11_6).
pos(agent11, 7,  p11_7).
pos(agent11, 8,  p11_8).
pos(agent11, 9,  p11_9).
pos(agent11, 10, p11_10).
pos(agent11, 11, p11_11).
pos(agent11, 12, p11_12).
pos(agent11, 13, p11_13).
pos(agent11, 14, p11_14).

pos(agent12, 1,  p12_1).
pos(agent12, 2,  p12_2).
pos(agent12, 3,  p12_3).
pos(agent12, 4,  p12_4).
pos(agent12, 5,  p12_5).
pos(agent12, 6,  p12_6).
pos(agent12, 7,  p12_7).
pos(agent12, 8,  p12_8).
pos(agent12, 9,  p12_9).
pos(agent12, 10, p12_10).
pos(agent12, 11, p12_11).
pos(agent12, 12, p12_12).
pos(agent12, 13, p12_13).
pos(agent12, 14, p12_14).

pos(agent13, 1,  p13_1).
pos(agent13, 2,  p13_2).
pos(agent13, 3,  p13_3).
pos(agent13, 4,  p13_4).
pos(agent13, 5,  p13_5).
pos(agent13, 6,  p13_6).
pos(agent13, 7,  p13_7).
pos(agent13, 8,  p13_8).
pos(agent13, 9,  p13_9).
pos(agent13, 10, p13_10).
pos(agent13, 11, p13_11).
pos(agent13, 12, p13_12).
pos(agent13, 13, p13_13).
pos(agent13, 14, p13_14).

pos(agent14, 1,  p14_1).
pos(agent14, 2,  p14_2).
pos(agent14, 3,  p14_3).
pos(agent14, 4,  p14_4).
pos(agent14, 5,  p14_5).
pos(agent14, 6,  p14_6).
pos(agent14, 7,  p14_7).
pos(agent14, 8,  p14_8).
pos(agent14, 9,  p14_9).
pos(agent14, 10, p14_10).
pos(agent14, 11, p14_11).
pos(agent14, 12, p14_12).
pos(agent14, 13, p14_13).
pos(agent14, 14, p14_14).

pos(agent15, 1,  p15_1).
pos(agent15, 2,  p15_2).
pos(agent15, 3,  p15_3).
pos(agent15, 4,  p15_4).
pos(agent15, 5,  p15_5).
pos(agent15, 6,  p15_6).
pos(agent15, 7,  p15_7).
pos(agent15, 8,  p15_8).
pos(agent15, 9,  p15_9).
pos(agent15, 10, p15_10).
pos(agent15, 11, p15_11).
pos(agent15, 12, p15_12).
pos(agent15, 13, p15_13).
pos(agent15, 14, p15_14).

o_point(p1_1,  "21.000", "11.500", "0.0").
o_point(p1_2,  "22.000", "11.500", "0.0"). 
o_point(p1_3,  "23.000", "11.500", "0.0").
o_point(p1_4,  "24.000", "11.500", "0.0"). 
o_point(p1_5,  "25.000", "11.000", "-40.0").
o_point(p1_6,  "26.000", "10.500", "-20.0").
o_point(p1_7,  "27.000", "10.010", "0.0").
o_point(p1_8,  "28.000", "10.010", "0.0").
o_point(p1_9,  "29.000", "10.010", "0.0").
o_point(p1_10, "30.000", "10.500", "20.0").
o_point(p1_11, "31.000", "11.000", "40.0").
o_point(p1_12, "32.000", "11.500", "0.0").
o_point(p1_13, "33.000", "11.500", "0.0").
o_point(p1_14, "34.000", "11.500", "0.0").

o_point(p2_1,  "27.500", "12.500", "90.0").
o_point(p2_2,  "27.500", "12.500", "90.0").
o_point(p2_3,  "27.500", "12.500", "90.0"). 
o_point(p2_4,  "27.500", "12.500", "90.0").
o_point(p2_5,  "27.000", "12.500", "90.0").
o_point(p2_6,  "27.000", "12.500", "90.0").
o_point(p2_7,  "27.000", "12.500", "90.0").
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

o_point(p6_1,  "28.000", "11.000", "180.0").
o_point(p6_2,  "28.000", "11.000", "180.0").
o_point(p6_3,  "28.000", "11.000", "180.0"). 
o_point(p6_4,  "28.000", "11.000", "180.0").
o_point(p6_5,  "28.000", "11.000", "180.0").
o_point(p6_6,  "28.000", "11.000", "180.0").
o_point(p6_7,  "28.000", "11.000", "180.0").
o_point(p6_8,  "28.000", "11.000", "180.0").
o_point(p6_9,  "28.000", "11.000", "180.0").
o_point(p6_10, "28.000", "11.000", "180.0").
o_point(p6_11, "28.000", "11.000", "180.0").
o_point(p6_12, "28.000", "11.000", "180.0").
o_point(p6_13, "28.000", "11.000", "180.0").
o_point(p6_14, "28.000", "11.000", "180.0").

o_point(p7_1,  "28.500", "11.000", "270.0").
o_point(p7_2,  "28.500", "11.000", "270.0").
o_point(p7_3,  "28.500", "11.000", "270.0"). 
o_point(p7_4,  "28.500", "11.000", "270.0").
o_point(p7_5,  "28.500", "11.000", "270.0").
o_point(p7_6,  "28.500", "11.000", "270.0").
o_point(p7_7,  "28.500", "11.000", "270.0").
o_point(p7_8,  "28.500", "11.250", "270.0").
o_point(p7_9,  "28.500", "11.000", "270.0").
o_point(p7_10, "28.500", "11.000", "270.0").
o_point(p7_11, "28.500", "11.000", "270.0").
o_point(p7_12, "28.500", "11.000", "270.0").
o_point(p7_13, "28.500", "11.000", "270.0").
o_point(p7_14, "28.500", "11.000", "270.0").

o_point(p8_1,  "28.500", "11.500", "270.0").
o_point(p8_2,  "28.500", "11.500", "270.0").
o_point(p8_3,  "28.500", "11.500", "270.0"). 
o_point(p8_4,  "28.500", "11.500", "270.0").
o_point(p8_5,  "28.500", "11.500", "270.0").
o_point(p8_6,  "28.500", "11.500", "270.0").
o_point(p8_7,  "28.500", "11.500", "270.0").
o_point(p8_8,  "28.500", "11.750", "270.0").
o_point(p8_9,  "28.500", "11.500", "270.0").
o_point(p8_10, "28.500", "11.500", "270.0").
o_point(p8_11, "28.500", "11.500", "270.0").
o_point(p8_12, "28.500", "11.500", "270.0").
o_point(p8_13, "28.500", "11.500", "270.0").
o_point(p8_14, "28.500", "11.500", "270.0").

o_point(p9_1,  "28.500", "12.000", "270.0").
o_point(p9_2,  "28.500", "12.000", "270.0").
o_point(p9_3,  "28.500", "12.000", "270.0"). 
o_point(p9_4,  "28.500", "12.000", "270.0").
o_point(p9_5,  "28.500", "12.000", "270.0").
o_point(p9_6,  "28.500", "12.000", "270.0").
o_point(p9_7,  "28.500", "12.000", "270.0").
o_point(p9_8,  "28.500", "12.250", "270.0").
o_point(p9_9,  "28.500", "12.000", "270.0").
o_point(p9_10, "28.500", "12.000", "270.0").
o_point(p9_11, "28.500", "12.000", "270.0").
o_point(p9_12, "28.500", "12.000", "270.0").
o_point(p9_13, "28.500", "12.000", "270.0").
o_point(p9_14, "28.500", "12.000", "270.0").

o_point(p10_1,  "28.500", "12.500", "270.0").
o_point(p10_2,  "28.500", "12.500", "270.0").
o_point(p10_3,  "28.500", "12.500", "270.0"). 
o_point(p10_4,  "28.500", "12.500", "270.0").
o_point(p10_5,  "28.500", "12.500", "270.0").
o_point(p10_6,  "28.500", "12.500", "270.0").
o_point(p10_7,  "28.500", "12.500", "270.0").
o_point(p10_8,  "28.500", "12.500", "270.0").
o_point(p10_9,  "28.500", "12.500", "270.0").
o_point(p10_10, "28.500", "12.500", "270.0").
o_point(p10_11, "28.500", "12.500", "270.0").
o_point(p10_12, "28.500", "12.500", "270.0").
o_point(p10_13, "28.500", "12.500", "270.0").
o_point(p10_14, "28.500", "12.500", "270.0").

o_point(p11_1,  "29.000", "12.500", "180.0").
o_point(p11_2,  "29.000", "12.500", "180.0").
o_point(p11_3,  "29.000", "12.500", "180.0"). 
o_point(p11_4,  "29.000", "12.500", "180.0").
o_point(p11_5,  "29.000", "12.500", "180.0").
o_point(p11_6,  "29.000", "12.500", "180.0").
o_point(p11_7,  "29.000", "12.500", "180.0").
o_point(p11_8,  "29.000", "12.500", "180.0").
o_point(p11_9,  "29.000", "12.500", "180.0").
o_point(p11_10, "29.000", "12.500", "180.0").
o_point(p11_11, "29.000", "12.500", "180.0").
o_point(p11_12, "29.000", "12.500", "180.0").
o_point(p11_13, "29.000", "12.500", "180.0").
o_point(p11_14, "29.000", "12.500", "180.0").

o_point(p12_1,  "29.500", "12.500", "180.0").
o_point(p12_2,  "29.500", "12.500", "180.0").
o_point(p12_3,  "29.500", "12.500", "180.0"). 
o_point(p12_4,  "29.500", "12.500", "180.0").
o_point(p12_5,  "29.500", "12.500", "180.0").
o_point(p12_6,  "29.500", "12.500", "180.0").
o_point(p12_7,  "29.500", "12.500", "180.0").
o_point(p12_8,  "29.500", "12.500", "180.0").
o_point(p12_9,  "29.500", "12.500", "180.0").
o_point(p12_10, "29.500", "12.500", "180.0").
o_point(p12_11, "29.500", "12.500", "180.0").
o_point(p12_12, "29.500", "12.500", "180.0").
o_point(p12_13, "29.500", "12.500", "180.0").
o_point(p12_14, "29.500", "12.500", "180.0").

o_point(p13_1,  "29.500", "12.000", "90.0").
o_point(p13_2,  "29.500", "12.000", "90.0").
o_point(p13_3,  "29.500", "12.000", "90.0"). 
o_point(p13_4,  "29.500", "12.000", "90.0").
o_point(p13_5,  "29.500", "12.000", "90.0").
o_point(p13_6,  "29.500", "12.000", "90.0").
o_point(p13_7,  "29.500", "12.000", "90.0").
o_point(p13_8,  "29.500", "12.000", "90.0").
o_point(p13_9,  "29.500", "12.250", "90.0").
o_point(p13_10, "29.500", "12.000", "90.0").
o_point(p13_11, "29.500", "12.000", "90.0").
o_point(p13_12, "29.500", "12.000", "90.0").
o_point(p13_13, "29.500", "12.000", "90.0").
o_point(p13_14, "29.500", "12.000", "90.0").

o_point(p14_1,  "29.500", "11.500", "90.0").
o_point(p14_2,  "29.500", "11.500", "90.0").
o_point(p14_3,  "29.500", "11.500", "90.0"). 
o_point(p14_4,  "29.500", "11.500", "90.0").
o_point(p14_5,  "29.500", "11.500", "90.0").
o_point(p14_6,  "29.500", "11.500", "90.0").
o_point(p14_7,  "29.500", "11.500", "90.0").
o_point(p14_8,  "29.500", "11.500", "90.0").
o_point(p14_9,  "29.500", "11.750", "90.0").
o_point(p14_10, "29.500", "11.500", "90.0").
o_point(p14_11, "29.500", "11.500", "90.0").
o_point(p14_12, "29.500", "11.500", "90.0").
o_point(p14_13, "29.500", "11.500", "90.0").
o_point(p14_14, "29.500", "11.500", "90.0").

o_point(p15_1,  "29.500", "11.000", "90.0").
o_point(p15_2,  "29.500", "11.000", "90.0").
o_point(p15_3,  "29.500", "11.000", "90.0"). 
o_point(p15_4,  "29.500", "11.000", "90.0").
o_point(p15_5,  "29.500", "11.000", "90.0").
o_point(p15_6,  "29.500", "11.000", "90.0").
o_point(p15_7,  "29.500", "11.000", "90.0").
o_point(p15_8,  "29.500", "11.000", "90.0").
o_point(p15_9,  "29.500", "11.250", "90.0").
o_point(p15_10, "29.500", "11.000", "90.0").
o_point(p15_11, "29.500", "11.000", "90.0").
o_point(p15_12, "29.500", "11.000", "90.0").
o_point(p15_13, "29.500", "11.000", "90.0").
o_point(p15_14, "29.500", "11.000", "90.0").


}).

