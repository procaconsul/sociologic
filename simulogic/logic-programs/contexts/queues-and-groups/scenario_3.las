
% ################################################
% groupS AND GROUPS Scenario 3 
% ##########################################################################

% wall1                 
%    +--------------+
%          OO O
%           OO 
%     O    O O
%           O
% +--------------------+
% wall2
 
#pos(p3_3A_3, {}, {}, {

% METADATA
% :name=p3_3A_1
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

time(1..10).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "26.0", "13.0").
point(w1_e, "29.0", "13.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "20.0", "10.0").
point(w2_e, "35.0", "10.0").

group(group, 1, 1..10, agent2).
group(group, 2, 1..10, agent3).
group(group, 3, 1..10, agent4).
group(group, 4, 1..10, agent5).
group(group, 5, 1..10, agent6).
group(group, 6, 1..10, agent7).
group(group, 7, 1..10, agent8).

% focus_agent goes through the group.
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

o_point(p2_1,  "26.500", "12.500", "30.0").
o_point(p2_2,  "26.500", "12.500", "30.0").
o_point(p2_3,  "26.500", "12.500", "30.0"). 
o_point(p2_4,  "26.500", "12.500", "30.0").
o_point(p2_5,  "26.500", "12.500", "30.0").
o_point(p2_6,  "26.500", "12.500", "30.0").
o_point(p2_7,  "26.500", "12.500", "30.0").
o_point(p2_8,  "26.500", "12.500", "30.0").
o_point(p2_9,  "26.500", "12.500", "30.0").
o_point(p2_10, "26.500", "12.500", "30.0").

o_point(p3_1,  "25.900", "11.600", "190.0").
o_point(p3_2,  "25.900", "11.600", "190.0").
o_point(p3_3,  "25.900", "11.600", "190.0"). 
o_point(p3_4,  "25.900", "11.600", "190.0").
o_point(p3_5,  "25.900", "11.750", "190.0").
o_point(p3_6,  "25.900", "11.600", "190.0").
o_point(p3_7,  "25.900", "11.600", "190.0").
o_point(p3_8,  "25.900", "11.600", "190.0").
o_point(p3_9,  "25.900", "11.600", "190.0").
o_point(p3_10, "25.900", "11.600", "190.0").

o_point(p4_1,  "26.700", "11.100", "20.0").
o_point(p4_2,  "26.700", "11.100", "20.0").
o_point(p4_3,  "26.700", "11.100", "20.0"). 
o_point(p4_4,  "26.700", "11.100", "20.0").
o_point(p4_5,  "26.700", "11.100", "20.0").
o_point(p4_6,  "26.700", "10.500", "20.0").
o_point(p4_7,  "26.700", "11.100", "20.0").
o_point(p4_8,  "26.700", "11.100", "20.0").
o_point(p4_9,  "26.700", "11.100", "20.0").
o_point(p4_10, "26.700", "11.100", "20.0").

o_point(p5_1,  "28.500", "12.700", "90.0").
o_point(p5_2,  "28.500", "12.700", "90.0").
o_point(p5_3,  "28.500", "12.700", "90.0"). 
o_point(p5_4,  "28.500", "12.700", "90.0").
o_point(p5_5,  "28.500", "12.700", "90.0").
o_point(p5_6,  "28.500", "12.700", "90.0").
o_point(p5_7,  "28.500", "12.700", "90.0").
o_point(p5_8,  "28.500", "12.700", "90.0").
o_point(p5_9,  "28.500", "12.700", "90.0").
o_point(p5_10, "28.500", "12.700", "90.0").

o_point(p6_1,  "27.000", "11.600", "80.0").
o_point(p6_2,  "27.000", "11.600", "80.0").
o_point(p6_3,  "27.000", "11.600", "80.0"). 
o_point(p6_4,  "27.000", "11.600", "80.0").
o_point(p6_5,  "27.000", "11.600", "80.0").
o_point(p6_6,  "27.000", "11.600", "80.0").
o_point(p6_7,  "27.000", "12.100", "80.0").
o_point(p6_8,  "27.000", "11.600", "80.0").
o_point(p6_9,  "27.000", "11.600", "80.0").
o_point(p6_10, "27.000", "11.600", "80.0").

o_point(p7_1,  "28.300", "11.000", "0.0").
o_point(p7_2,  "28.300", "11.000", "0.0").
o_point(p7_3,  "28.300", "11.000", "0.0"). 
o_point(p7_4,  "28.300", "11.000", "0.0").
o_point(p7_5,  "28.300", "11.000", "0.0").
o_point(p7_6,  "28.300", "11.000", "0.0").
o_point(p7_7,  "28.300", "11.000", "0.0").
o_point(p7_8,  "28.450", "10.600", "0.0").
o_point(p7_9,  "28.300", "11.000", "0.0").
o_point(p7_10, "28.300", "11.000", "0.0").

o_point(p8_1,  "29.000", "11.300", "40.0").
o_point(p8_2,  "29.000", "11.300", "40.0").
o_point(p8_3,  "29.000", "11.300", "40.0"). 
o_point(p8_4,  "29.000", "11.300", "40.0").
o_point(p8_5,  "29.000", "11.300", "40.0").
o_point(p8_6,  "29.000", "11.300", "40.0").
o_point(p8_7,  "29.000", "11.300", "40.0").
o_point(p8_8,  "29.000", "11.300", "40.0").
o_point(p8_9,  "29.000", "12.300", "40.0").
o_point(p8_10, "29.000", "11.300", "40.0").


}).

#pos(p3_3B_3, {}, {}, {

% METADATA
% :name=p3_3B_1
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

time(1..10).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "26.0", "13.0").
point(w1_e, "29.0", "13.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "20.0", "10.0").
point(w2_e, "35.0", "10.0").

group(group, 1, 1..10, agent2).
group(group, 2, 1..10, agent3).
group(group, 3, 1..10, agent4).
group(group, 4, 1..10, agent5).
group(group, 5, 1..10, agent6).
group(group, 6, 1..10, agent7).
group(group, 7, 1..10, agent8).

% focus_agent squeezes by wall.
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


o_point(p1_1,  "21.000", "11.500", "0.0").
o_point(p1_2,  "22.000", "11.500", "0.0"). 
o_point(p1_3,  "23.000", "11.500", "0.0").
o_point(p1_4,  "24.000", "11.000", "-40.0"). 
o_point(p1_5,  "25.000", "10.500", "20.0").
o_point(p1_6,  "26.000", "10.010", "0.0").
o_point(p1_7,  "27.000", "10.010", "0.0").
o_point(p1_8,  "28.000", "10.010", "0.0").
o_point(p1_9,  "29.000", "10.010", "40.0").
o_point(p1_10, "30.000", "11.000", "0.0").

o_point(p2_1,  "26.500", "12.500", "30.0").
o_point(p2_2,  "26.500", "12.500", "30.0").
o_point(p2_3,  "26.500", "12.500", "30.0"). 
o_point(p2_4,  "26.500", "12.500", "30.0").
o_point(p2_5,  "26.500", "12.500", "30.0").
o_point(p2_6,  "26.500", "12.500", "30.0").
o_point(p2_7,  "26.500", "12.500", "30.0").
o_point(p2_8,  "26.500", "12.500", "30.0").
o_point(p2_9,  "26.500", "12.500", "30.0").
o_point(p2_10, "26.500", "12.500", "30.0").

o_point(p3_1,  "25.900", "11.600", "190.0").
o_point(p3_2,  "25.900", "11.600", "190.0").
o_point(p3_3,  "25.900", "11.600", "190.0"). 
o_point(p3_4,  "25.900", "11.600", "190.0").
o_point(p3_5,  "25.900", "11.600", "190.0").
o_point(p3_6,  "25.900", "11.600", "190.0").
o_point(p3_7,  "25.900", "11.600", "190.0").
o_point(p3_8,  "25.900", "11.600", "190.0").
o_point(p3_9,  "25.900", "11.600", "190.0").
o_point(p3_10, "25.900", "11.600", "190.0").

o_point(p4_1,  "26.700", "11.100", "20.0").
o_point(p4_2,  "26.700", "11.100", "20.0").
o_point(p4_3,  "26.700", "11.100", "20.0"). 
o_point(p4_4,  "26.700", "11.100", "20.0").
o_point(p4_5,  "26.700", "11.100", "20.0").
o_point(p4_6,  "26.700", "11.100", "20.0").
o_point(p4_7,  "26.700", "11.100", "20.0").
o_point(p4_8,  "26.700", "11.100", "20.0").
o_point(p4_9,  "26.700", "11.100", "20.0").
o_point(p4_10, "26.700", "11.100", "20.0").

o_point(p5_1,  "28.500", "12.700", "90.0").
o_point(p5_2,  "28.500", "12.700", "90.0").
o_point(p5_3,  "28.500", "12.700", "90.0"). 
o_point(p5_4,  "28.500", "12.700", "90.0").
o_point(p5_5,  "28.500", "12.700", "90.0").
o_point(p5_6,  "28.500", "12.700", "90.0").
o_point(p5_7,  "28.500", "12.700", "90.0").
o_point(p5_8,  "28.500", "12.700", "90.0").
o_point(p5_9,  "28.500", "12.700", "90.0").
o_point(p5_10, "28.500", "12.700", "90.0").

o_point(p6_1,  "27.000", "11.600", "80.0").
o_point(p6_2,  "27.000", "11.600", "80.0").
o_point(p6_3,  "27.000", "11.600", "80.0"). 
o_point(p6_4,  "27.000", "11.600", "80.0").
o_point(p6_5,  "27.000", "11.600", "80.0").
o_point(p6_6,  "27.000", "11.600", "80.0").
o_point(p6_7,  "27.000", "11.600", "80.0").
o_point(p6_8,  "27.000", "11.600", "80.0").
o_point(p6_9,  "27.000", "11.600", "80.0").
o_point(p6_10, "27.000", "11.600", "80.0").

o_point(p7_1,  "28.000", "11.000", "0.0").
o_point(p7_2,  "28.000", "11.000", "0.0").
o_point(p7_3,  "28.000", "11.000", "0.0"). 
o_point(p7_4,  "28.000", "11.000", "0.0").
o_point(p7_5,  "28.000", "11.000", "0.0").
o_point(p7_6,  "28.000", "11.000", "0.0").
o_point(p7_7,  "28.000", "11.000", "0.0").
o_point(p7_8,  "28.050", "11.000", "0.0").
o_point(p7_9,  "28.000", "11.000", "0.0").
o_point(p7_10, "28.000", "11.000", "0.0").

o_point(p8_1,  "29.000", "11.300", "40.0").
o_point(p8_2,  "29.000", "11.300", "40.0").
o_point(p8_3,  "29.000", "11.300", "40.0"). 
o_point(p8_4,  "29.000", "11.300", "40.0").
o_point(p8_5,  "29.000", "11.300", "40.0").
o_point(p8_6,  "29.000", "11.300", "40.0").
o_point(p8_7,  "29.000", "11.300", "40.0").
o_point(p8_8,  "29.000", "11.300", "40.0").
o_point(p8_9,  "29.000", "11.300", "40.0").
o_point(p8_10, "29.000", "11.300", "40.0").


}).

#pos(p3_3C_3, {}, {}, {

% METADATA
% :name=p3_3C_1
% :centrex=27.5
% :centrey=11.5


% Option C

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(focus_agent).
agent(agent2).
agent(agent3).
agent(agent4).
agent(agent5).
agent(agent6).
agent(agent7).
agent(agent8).

time(1..10).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "26.0", "13.0").
point(w1_e, "29.0", "13.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "20.0", "10.0").
point(w2_e, "35.0", "10.0").

group(group, 1, 1..10, agent2).
group(group, 2, 1..10, agent3).
group(group, 3, 1..10, agent4).
group(group, 4, 1..10, agent5).
group(group, 5, 1..10, agent6).
group(group, 6, 1..10, agent7).
group(group, 7, 1..10, agent8).

% focus_agent waits for the group to leave.
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


o_point(p1_1,  "21.000", "11.500", "0.0").
o_point(p1_2,  "22.000", "11.500", "0.0"). 
o_point(p1_3,  "23.000", "11.500", "0.0").
o_point(p1_4,  "24.000", "11.500", "0.0"). 
o_point(p1_5,  "25.000", "11.500", "0.0").
o_point(p1_6,  "25.000", "11.500", "0.0").
o_point(p1_7,  "25.000", "11.500", "0.0").
o_point(p1_8,  "25.000", "11.500", "0.0").
o_point(p1_9,  "25.000", "11.500", "0.0").
o_point(p1_10, "26.000", "11.500", "0.0").

o_point(p2_1,  "26.500", "12.500", "30.0").
o_point(p2_2,  "26.500", "12.500", "30.0").
o_point(p2_3,  "26.500", "12.500", "30.0"). 
o_point(p2_4,  "26.500", "12.500", "30.0").
o_point(p2_5,  "26.500", "12.500", "40.0").
o_point(p2_6,  "26.500", "12.500", "40.0").
o_point(p2_7,  "26.500", "12.500", "40.0").
o_point(p2_8,  "26.500", "12.500", "40.0").
o_point(p2_9,  "26.500", "12.500", "40.0").
o_point(p2_10, "26.500", "12.500", "40.0").

o_point(p3_1,  "25.900", "11.600", "140.0").
o_point(p3_2,  "25.900", "11.600", "140.0").
o_point(p3_3,  "25.900", "11.600", "140.0"). 
o_point(p3_4,  "25.900", "11.600", "140.0").
o_point(p3_5,  "25.900", "11.600", "40.0").
o_point(p3_6,  "25.900", "11.600", "40.0").
o_point(p3_7,  "26.500", "12.100", "40.0").
o_point(p3_8,  "27.900", "12.600", "0.0").
o_point(p3_9,  "28.900", "12.600", "0.0").
o_point(p3_10, "29.900", "13.100", "40.0").

o_point(p4_1,  "26.700", "11.100", "80.0").
o_point(p4_2,  "26.700", "11.100", "80.0").
o_point(p4_3,  "26.700", "11.100", "80.0"). 
o_point(p4_4,  "26.700", "11.100", "80.0").
o_point(p4_5,  "26.700", "11.100", "40.0").
o_point(p4_6,  "26.700", "11.100", "40.0").
o_point(p4_7,  "27.500", "11.700", "40.0").
o_point(p4_8,  "28.700", "12.100", "40.0").
o_point(p4_9,  "29.700", "12.700", "40.0").
o_point(p4_10, "30.700", "13.100", "40.0").

o_point(p5_1,  "28.500", "12.700", "-40.0").
o_point(p5_2,  "28.500", "12.700", "-40.0").
o_point(p5_3,  "28.500", "12.700", "-40.0"). 
o_point(p5_4,  "28.500", "12.700", "-40.0").
o_point(p5_5,  "28.500", "12.700", "40.0").
o_point(p5_6,  "28.900", "12.700", "40.0").
o_point(p5_7,  "29.500", "12.700", "40.0").
o_point(p5_8,  "30.500", "13.000", "40.0").
o_point(p5_9,  "31.500", "13.700", "40.0").
o_point(p5_10, "32.500", "14.000", "40.0").

o_point(p6_1,  "27.000", "11.600", "50.0").
o_point(p6_2,  "27.000", "11.600", "50.0").
o_point(p6_3,  "27.000", "11.600", "50.0"). 
o_point(p6_4,  "27.000", "11.600", "50.0").
o_point(p6_5,  "27.000", "11.600", "0.0").
o_point(p6_6,  "28.000", "11.600", "0.0").
o_point(p6_7,  "29.000", "11.800", "40.0").
o_point(p6_8,  "30.000", "12.300", "40.0").
o_point(p6_9,  "31.000", "12.600", "40.0").
o_point(p6_10, "32.000", "13.000", "40.0").

o_point(p7_1,  "28.300", "11.000", "60.0").
o_point(p7_2,  "28.300", "11.000", "60.0").
o_point(p7_3,  "28.300", "11.000", "60.0"). 
o_point(p7_4,  "28.300", "11.000", "60.0").
o_point(p7_5,  "28.300", "11.000", "40.0").
o_point(p7_6,  "29.300", "11.300", "40.0").
o_point(p7_7,  "30.300", "11.700", "40.0").
o_point(p7_8,  "31.450", "12.300", "40.0").
o_point(p7_9,  "32.300", "12.500", "40.0").
o_point(p7_10, "33.300", "13.000", "40.0").

o_point(p8_1,  "29.000", "11.300", "40.0").
o_point(p8_2,  "29.000", "11.300", "40.0").
o_point(p8_3,  "29.000", "11.300", "40.0"). 
o_point(p8_4,  "29.000", "11.300", "40.0").
o_point(p8_5,  "29.000", "11.300", "40.0").
o_point(p8_6,  "30.000", "11.800", "40.0").
o_point(p8_7,  "31.000", "12.300", "40.0").
o_point(p8_8,  "32.000", "12.600", "40.0").
o_point(p8_9,  "34.000", "13.000", "40.0").
o_point(p8_10, "35.000", "13.300", "40.0").


}).

