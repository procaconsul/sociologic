
% ################################################
% groupS AND GROUPS Scenario 4 
% ##########################################################################

% wall1                 
%    +--------------+
%          OO O
%           OO 
%     O    O O
%           O
% +--------------------+
% wall2
 
#pos(p1_4A_3, {}, {}, {

% METADATA
% :name=p3_4A_1
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

time(1..10).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "26.0", "13.0").
point(w1_e, "29.0", "13.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "20.0", "10.0").
point(w2_e, "35.0", "10.0").

family(group).
group(group, 1, 1..10, agent7).
group(group, 2, 1..10, agent8).
group(group, 3, 1..10, agent9).
group(group, 4, 1..10, agent10).

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

o_point(p1_1,  "21.000", "11.500", "0.0").
o_point(p1_2,  "23.000", "11.500", "0.0"). 
o_point(p1_3,  "25.000", "11.500", "0.0").
o_point(p1_4,  "27.000", "11.500", "0.0"). 
o_point(p1_5,  "29.000", "11.500", "0.0").
o_point(p1_6,  "31.000", "11.500", "0.0").
o_point(p1_7,  "33.000", "11.500", "0.0").
o_point(p1_8,  "35.000", "11.500", "0.0").
o_point(p1_9,  "37.000", "11.500", "0.0").
o_point(p1_10, "39.000", "11.500", "0.0").

o_point(p2_1,  "21.500", "12.500", "270.0").
o_point(p2_2,  "21.500", "12.200", "270.0").
o_point(p2_3,  "21.500", "12.100", "90.0"). 
o_point(p2_4,  "21.500", "12.300", "90.0").
o_point(p2_5,  "21.500", "12.500", "270.0").
o_point(p2_6,  "21.500", "12.200", "270.0").
o_point(p2_7,  "21.500", "12.100", "30.0").
o_point(p2_8,  "21.500", "12.100", "30.0").
o_point(p2_9,  "21.500", "12.300", "90.0").
o_point(p2_10, "21.500", "12.400", "90.0").

o_point(p3_1,  "22.300", "11.800", "190.0").
o_point(p3_2,  "22.300", "11.600", "190.0").
o_point(p3_3,  "22.300", "11.600", "190.0"). 
o_point(p3_4,  "22.300", "11.600", "190.0").
o_point(p3_5,  "23.300", "12.300", "20.0").
o_point(p3_6,  "23.300", "12.300", "20.0").
o_point(p3_7,  "22.300", "11.900", "1900.0").
o_point(p3_8,  "22.800", "11.800", "190.0").
o_point(p3_9,  "22.300", "11.600", "190.0").
o_point(p3_10, "22.300", "11.600", "190.0").

o_point(p4_1,  "25.700", "12.100", "20.0").
o_point(p4_2,  "25.700", "12.100", "20.0").
o_point(p4_3,  "25.700", "12.100", "20.0"). 
o_point(p4_4,  "25.700", "12.100", "20.0").
o_point(p4_5,  "25.700", "12.100", "20.0").
o_point(p4_6,  "25.700", "12.100", "20.0").
o_point(p4_7,  "25.700", "12.100", "20.0").
o_point(p4_8,  "25.700", "12.100", "20.0").
o_point(p4_9,  "25.700", "12.100", "20.0").
o_point(p4_10, "25.700", "12.100", "20.0").

o_point(p5_1,  "23.500", "10.400", "90.0").
o_point(p5_2,  "23.500", "10.600", "90.0").
o_point(p5_3,  "23.500", "10.800", "90.0"). 
o_point(p5_4,  "23.500", "11.000", "90.0").
o_point(p5_5,  "23.500", "11.200", "90.0").
o_point(p5_6,  "23.500", "11.400", "90.0").
o_point(p5_7,  "23.500", "11.600", "90.0").
o_point(p5_8,  "23.500", "11.800", "90.0").
o_point(p5_9,  "23.500", "12.400", "90.0").
o_point(p5_10, "23.500", "12.400", "90.0").

o_point(p6_1,  "25.000", "10.600", "80.0").
o_point(p6_2,  "25.000", "10.800", "80.0").
o_point(p6_3,  "25.000", "11.000", "80.0"). 
o_point(p6_4,  "25.000", "11.200", "80.0").
o_point(p6_5,  "25.000", "11.400", "80.0").
o_point(p6_6,  "25.000", "11.600", "80.0").
o_point(p6_7,  "25.000", "11.800", "270.0").
o_point(p6_8,  "25.000", "11.800", "270.0").
o_point(p6_9,  "25.000", "11.600", "270.0").
o_point(p6_10, "25.000", "11.600", "270.0").

o_point(p7_1,  "25.300", "11.700", "0.0").
o_point(p7_2,  "26.300", "11.700", "0.0").
o_point(p7_3,  "27.300", "11.700", "0.0"). 
o_point(p7_4,  "28.300", "11.700", "0.0").
o_point(p7_5,  "29.300", "12.200", "0.0").
o_point(p7_6,  "30.300", "12.200", "0.0").
o_point(p7_7,  "31.300", "12.200", "0.0").
o_point(p7_8,  "32.450", "12.200", "0.0").
o_point(p7_9,  "33.300", "12.200", "0.0").
o_point(p7_10, "34.300", "12.200", "0.0").

o_point(p8_1,  "26.300", "11.300", "0.0").
o_point(p8_2,  "27.300", "11.300", "0.0").
o_point(p8_3,  "28.300", "11.300", "0.0"). 
o_point(p8_4,  "29.300", "11.100", "0.0").
o_point(p8_5,  "30.300", "10.400", "0.0").
o_point(p8_6,  "31.300", "10.400", "0.0").
o_point(p8_7,  "32.300", "10.400", "0.0").
o_point(p8_8,  "33.450", "10.400", "0.0").
o_point(p8_9,  "34.300", "10.400", "0.0").
o_point(p8_10, "35.300", "10.400", "0.0").

o_point(p9_1,  "27.300", "11.600", "0.0").
o_point(p9_2,  "28.300", "11.600", "0.0").
o_point(p9_3,  "29.300", "11.600", "0.0"). 
o_point(p9_4,  "30.300", "11.600", "0.0").
o_point(p9_5,  "31.300", "11.600", "0.0").
o_point(p9_6,  "32.300", "12.500", "0.0").
o_point(p9_7,  "33.300", "12.500", "0.0").
o_point(p9_8,  "34.450", "12.500", "0.0").
o_point(p9_9,  "35.300", "12.500", "0.0").
o_point(p9_10, "36.300", "12.500", "0.0").

o_point(p10_1,  "27.500", "11.350", "0.0").
o_point(p10_2,  "28.500", "11.350", "0.0").
o_point(p10_3,  "29.500", "11.350", "0.0"). 
o_point(p10_4,  "30.500", "11.350", "0.0").
o_point(p10_5,  "31.500", "11.350", "0.0").
o_point(p10_6,  "32.500", "10.650", "0.0").
o_point(p10_7,  "33.500", "10.650", "0.0").
o_point(p10_8,  "34.650", "10.650", "0.0").
o_point(p10_9,  "35.500", "10.650", "0.0").
o_point(p10_10, "36.500", "10.650", "0.0").


}).

#pos(p1_4B_3, {}, {}, {

% METADATA
% :name=p3_4B_1
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

time(1..10).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "26.0", "13.0").
point(w1_e, "29.0", "13.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "20.0", "10.0").
point(w2_e, "35.0", "10.0").

family(group).
group(group, 1, 1..10, agent7).
group(group, 2, 1..10, agent8).
group(group, 3, 1..10, agent9).
group(group, 4, 1..10, agent10).

% focus_agent goes around the group.
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


o_point(p1_1,  "22.000", "11.500", "0.0").
o_point(p1_2,  "24.000", "11.500", "0.0"). 
o_point(p1_3,  "26.000", "11.500", "0.0").
o_point(p1_4,  "27.000", "11.500", "0.0"). 
o_point(p1_5,  "28.000", "11.900", "40.0").
o_point(p1_6,  "29.000", "12.500", "0.0").
o_point(p1_7,  "31.000", "12.500", "0.0").
o_point(p1_8,  "33.000", "12.500", "0.0").
o_point(p1_9,  "35.000", "12.500", "0.0").
o_point(p1_10, "37.000", "12.500", "0.0"). 

o_point(p2_1,  "21.500", "12.500", "270.0").
o_point(p2_2,  "21.500", "12.200", "270.0").
o_point(p2_3,  "21.500", "12.100", "90.0"). 
o_point(p2_4,  "21.500", "12.300", "90.0").
o_point(p2_5,  "21.500", "12.500", "270.0").
o_point(p2_6,  "21.500", "12.200", "270.0").
o_point(p2_7,  "21.500", "12.100", "30.0").
o_point(p2_8,  "21.500", "12.100", "30.0").
o_point(p2_9,  "21.500", "12.300", "90.0").
o_point(p2_10, "21.500", "12.400", "90.0").

o_point(p3_1,  "24.300", "11.800", "190.0").
o_point(p3_2,  "24.300", "11.600", "190.0").
o_point(p3_3,  "24.300", "11.600", "190.0"). 
o_point(p3_4,  "24.300", "11.600", "190.0").
o_point(p3_5,  "25.300", "12.300", "20.0").
o_point(p3_6,  "25.300", "12.300", "20.0").
o_point(p3_7,  "24.300", "11.900", "1900.0").
o_point(p3_8,  "24.800", "11.800", "190.0").
o_point(p3_9,  "24.300", "11.600", "190.0").
o_point(p3_10, "24.300", "11.600", "190.0").

o_point(p4_1,  "27.700", "12.100", "20.0").
o_point(p4_2,  "27.700", "12.100", "20.0").
o_point(p4_3,  "27.700", "12.100", "20.0"). 
o_point(p4_4,  "27.700", "12.100", "20.0").
o_point(p4_5,  "27.700", "12.100", "20.0").
o_point(p4_6,  "27.700", "12.100", "20.0").
o_point(p4_7,  "27.700", "12.100", "20.0").
o_point(p4_8,  "27.700", "12.100", "20.0").
o_point(p4_9,  "27.700", "12.100", "20.0").
o_point(p4_10, "27.700", "12.100", "20.0").

o_point(p5_1,  "25.500", "10.400", "90.0").
o_point(p5_2,  "25.500", "10.600", "90.0").
o_point(p5_3,  "25.500", "10.800", "90.0"). 
o_point(p5_4,  "25.500", "11.000", "90.0").
o_point(p5_5,  "25.500", "11.200", "90.0").
o_point(p5_6,  "25.500", "11.400", "90.0").
o_point(p5_7,  "25.500", "11.600", "90.0").
o_point(p5_8,  "25.500", "11.800", "90.0").
o_point(p5_9,  "25.500", "12.400", "90.0").
o_point(p5_10, "25.500", "12.400", "90.0").

o_point(p6_1,  "26.000", "10.600", "80.0").
o_point(p6_2,  "26.000", "10.800", "80.0").
o_point(p6_3,  "26.000", "11.000", "80.0"). 
o_point(p6_4,  "26.000", "11.200", "80.0").
o_point(p6_5,  "26.000", "11.400", "80.0").
o_point(p6_6,  "26.000", "11.600", "80.0").
o_point(p6_7,  "26.000", "11.800", "270.0").
o_point(p6_8,  "26.000", "11.800", "270.0").
o_point(p6_9,  "26.000", "11.600", "270.0").
o_point(p6_10, "26.000", "11.600", "270.0").

o_point(p7_1,  "25.300", "11.700", "0.0").
o_point(p7_2,  "26.300", "11.700", "0.0").
o_point(p7_3,  "27.300", "11.700", "0.0"). 
o_point(p7_4,  "28.300", "11.700", "0.0").
o_point(p7_5,  "29.300", "11.700", "0.0").
o_point(p7_6,  "30.300", "11.700", "0.0").
o_point(p7_7,  "31.300", "11.700", "0.0").
o_point(p7_8,  "32.300", "11.700", "0.0").
o_point(p7_9,  "33.300", "11.700", "0.0").
o_point(p7_10, "34.300", "11.700", "0.0").

o_point(p8_1,  "26.300", "11.300", "0.0").
o_point(p8_2,  "27.300", "11.300", "0.0").
o_point(p8_3,  "28.300", "11.300", "0.0"). 
o_point(p8_4,  "29.300", "11.300", "0.0").
o_point(p8_5,  "30.300", "11.300", "0.0").
o_point(p8_6,  "31.300", "11.300", "0.0").
o_point(p8_7,  "32.300", "11.300", "0.0").
o_point(p8_8,  "33.300", "11.300", "0.0").
o_point(p8_9,  "34.300", "11.300", "0.0").
o_point(p8_10, "35.300", "11.300", "0.0").

o_point(p9_1,  "27.300", "11.600", "0.0").
o_point(p9_2,  "28.300", "11.600", "0.0").
o_point(p9_3,  "29.300", "11.600", "0.0"). 
o_point(p9_4,  "30.300", "11.600", "0.0").
o_point(p9_5,  "31.300", "11.600", "0.0").
o_point(p9_6,  "32.300", "11.600", "0.0").
o_point(p9_7,  "33.300", "11.600", "0.0").
o_point(p9_8,  "34.300", "11.600", "0.0").
o_point(p9_9,  "35.300", "11.600", "0.0").
o_point(p9_10, "36.300", "11.600", "0.0").

o_point(p10_1,  "27.500", "11.350", "0.0").
o_point(p10_2,  "28.500", "11.350", "0.0").
o_point(p10_3,  "29.500", "11.350", "0.0"). 
o_point(p10_4,  "30.500", "11.350", "0.0").
o_point(p10_5,  "31.500", "11.350", "0.0").
o_point(p10_6,  "32.500", "11.350", "0.0").
o_point(p10_7,  "33.500", "11.350", "0.0").
o_point(p10_8,  "34.500", "11.350", "0.0").
o_point(p10_9,  "35.500", "11.350", "0.0").
o_point(p10_10, "36.500", "11.350", "0.0").

}).

