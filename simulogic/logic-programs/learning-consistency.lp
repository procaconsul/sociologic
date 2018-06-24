#include "contexts/narrow-passage/contextual-background-knowledge.lp".
#include "common/learned-norms.lp".

% ################################################
% NARROW PASSAGE SCENARIO 1
% ##########################################################################

%                      | wall3
% wall1                |
% ---------------------+
%
% ---------------------+
% wall2                |
%                      | wall4

% METADATA
% :name=p1_1A_1
% :centrex=22.5
% :centrey=11.0

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(focus_agent).
agent(agent2).

time(1..17).

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

1 { option(a); option(b); option(c) } 1.

#show agent/1.
#show time/1.
#show wall/3.
#show point/3.
#show o_point/4.
#show corridor/3.
#show pos/3.
% #show option/1.

% agent 2 steps in, sees agent 1 in, walks out and waits
% before attempting again
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
pos(focus_agent, 15, p1_15).
pos(focus_agent, 16, p1_16).
pos(focus_agent, 17, p1_17).

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
pos(agent2, 15, p2_15).
pos(agent2, 16, p2_16).
pos(agent2, 17, p2_17).

o_point(p1_1, "14.051", "11.080",   "0.0") :- option(a).
o_point(p1_2, "14.051", "11.000",   "0.0") :- option(a).
o_point(p1_3, "15.051", "11.000",   "0.0") :- option(a).
o_point(p1_4, "17.051", "11.000",   "0.0") :- option(a).
o_point(p1_5, "18.051", "11.000", "180.0") :- option(a).
o_point(p1_6, "17.051", "11.000", "180.0") :- option(a).
o_point(p1_7, "16.061", "11.000", "180.0") :- option(a).
o_point(p1_8, "15.052", "11.000", "180.0") :- option(a).
o_point(p1_9, "14.062", "10.600", "180.0") :- option(a).
o_point(p1_10, "13.053", "9.600", "180.0") :- option(a).
o_point(p1_11, "12.063", "9.000", "180.0") :- option(a).
o_point(p1_12, "13.751", "9.000", "180.0") :- option(a).
o_point(p1_13, "14.051", "10.600",  "0.0") :- option(a).
o_point(p1_14, "15.051", "11.000",  "0.0") :- option(a).
o_point(p1_15, "16.051", "11.000",  "0.0") :- option(a).
o_point(p1_16, "16.051", "11.000",  "0.0") :- option(a).
o_point(p1_17, "16.051", "11.000",  "0.0") :- option(a).

o_point(p2_1, "24.550", "11.100",  "220.0") :- option(a).
o_point(p2_2, "24.551", "11.100",  "200.0") :- option(a).
o_point(p2_3, "23.553", "11.100",  "180.0") :- option(a).
o_point(p2_4, "22.000", "11.100",  "180.0") :- option(a).
o_point(p2_5, "21.000", "11.100",  "180.0") :- option(a).
o_point(p2_6, "20.000", "11.100",  "180.0") :- option(a).
o_point(p2_7, "19.000", "11.100",  "180.0") :- option(a).
o_point(p2_8, "18.000", "11.100",  "180.0") :- option(a).
o_point(p2_9, "17.000", "11.100",  "180.0") :- option(a).
o_point(p2_10, "16.000", "11.100", "180.0") :- option(a).
o_point(p2_11, "14.000", "11.100", "180.0") :- option(a).
o_point(p2_12, "13.000", "12.100", "180.0") :- option(a).
o_point(p2_13, "13.001", "12.100", "180.0") :- option(a).
o_point(p2_14, "13.000", "13.100", "180.0") :- option(a).
o_point(p2_15, "13.001", "13.100", "180.0") :- option(a).
o_point(p2_16, "13.001", "13.100", "180.0") :- option(a).
o_point(p2_17, "13.001", "13.100", "180.0") :- option(a).

% Option B

% agent 2 steps and squeezes by the wall
% as he passes agent 1 on the side (BEFORE MID)
o_point(p1_1,  "14.551", "11.800", "-40.0") :- option(b).
o_point(p1_2,  "15.640", "11.800", "0.0") :- option(b).
o_point(p1_3,  "16.553", "11.100", "0.0") :- option(b).
o_point(p1_4,  "17.000", "11.100", "0.0") :- option(b).
o_point(p1_5,  "18.000", "11.100", "0.0") :- option(b).
o_point(p1_6,  "19.000", "11.100", "0.0") :- option(b).
o_point(p1_7,  "20.000", "11.500", "40.0") :- option(b).
o_point(p1_8,  "21.000", "11.910", "0.0") :- option(b).
o_point(p1_9,  "22.000", "11.910", "0.0") :- option(b).
o_point(p1_10, "23.000", "11.910", "0.0") :- option(b).
o_point(p1_11, "24.000", "11.500", "-40.0") :- option(b).
o_point(p1_12, "25.000", "11.100", "0.0") :- option(b).
o_point(p1_13, "26.000", "11.500", "0.0") :- option(b).
o_point(p1_14, "27.000", "11.100", "0.0") :- option(b).
o_point(p1_15, "28.000", "11.100", "0.0") :- option(b).
o_point(p1_16, "29.000", "11.100", "0.0") :- option(b).
o_point(p1_17, "30.000", "11.100", "0.0") :- option(b).

o_point(p2_1,  "28.051", "11.080", "180.0") :- option(b).
o_point(p2_2,  "27.051", "11.000", "180.0") :- option(b).
o_point(p2_3,  "26.051", "11.000", "180.0") :- option(b).
o_point(p2_4,  "25.051", "11.000", "180.0") :- option(b).
o_point(p2_5,  "24.051", "11.000", "180.0") :- option(b).
o_point(p2_6,  "23.051", "11.000", "180.0") :- option(b).
o_point(p2_7,  "22.051", "11.000", "180.0") :- option(b).
o_point(p2_8,  "21.051", "10.800", "180.0") :- option(b).
o_point(p2_9,  "20.051", "10.800", "180.0") :- option(b).
o_point(p2_10, "19.051", "10.800", "180.0") :- option(b).
o_point(p2_11, "18.051", "11.000", "180.0") :- option(b).
o_point(p2_12, "17.051", "11.000", "180.0") :- option(b).
o_point(p2_13, "16.051", "11.000", "180.0") :- option(b).
o_point(p2_14, "15.051", "11.000", "180.0") :- option(b).
o_point(p2_15, "14.051", "11.000", "180.0") :- option(b).
o_point(p2_16, "13.051", "11.000", "180.0") :- option(b).
o_point(p2_17, "12.051", "11.000", "180.0") :- option(b).


% OPTION C

% focus_agent enters after agent2 crosses the middle but
% forces him to step out
o_point(p1_1,  "17.051", "11.080", "0.0") :- option(c).
o_point(p1_2,  "18.551", "11.000", "0.0") :- option(c).
o_point(p1_3,  "19.051", "11.000", "0.0") :- option(c).
o_point(p1_4,  "20.051", "11.000", "0.0") :- option(c).
o_point(p1_5,  "21.051", "11.000", "0.0") :- option(c).
o_point(p1_6,  "22.051", "11.000", "0.0") :- option(c).
o_point(p1_7,  "23.051", "11.000", "0.0") :- option(c).
o_point(p1_8,  "24.051", "11.000", "0.0") :- option(c).
o_point(p1_9,  "25.051", "11.000", "0.0") :- option(c).
o_point(p1_10, "26.051", "11.000", "0.0") :- option(c).
o_point(p1_11, "27.051", "11.000", "0.0") :- option(c).
o_point(p1_12, "28.000", "11.000", "0.0") :- option(c).
o_point(p1_13, "29.051", "11.000", "0.0") :- option(c).
o_point(p1_14, "30.051", "11.000", "0.0") :- option(c).
o_point(p1_15, "32.051", "11.000", "0.0") :- option(c).
o_point(p1_16, "32.551", "11.500", "0.0") :- option(c).
o_point(p1_17, "33.051", "12.000", "0.0") :- option(c).

o_point(p2_1,  "27.551", "11.800", "180.0") :- option(c).
o_point(p2_2,  "26.640", "11.500", "180.0") :- option(c).
o_point(p2_3,  "25.553", "11.100", "180.0") :- option(c).
o_point(p2_4,  "26.000", "11.100", "0.0") :- option(c).
o_point(p2_5,  "27.000", "11.100", "0.0") :- option(c).
o_point(p2_6,  "28.000", "11.100", "0.0") :- option(c).
o_point(p2_7,  "29.000", "11.100", "0.0") :- option(c).
o_point(p2_8,  "30.000", "11.600", "40.0") :- option(c).
o_point(p2_9,  "31.000", "12.100", "220.0") :- option(c).
o_point(p2_10, "31.000", "12.100", "220.0") :- option(c).
o_point(p2_11, "31.000", "12.100", "220.0") :- option(c).
o_point(p2_12, "31.000", "12.100", "220.0") :- option(c).
o_point(p2_13, "31.000", "12.100", "220.0") :- option(c).
o_point(p2_14, "30.000", "11.800", "220.0") :- option(c).
o_point(p2_15, "29.400", "11.100", "180.0") :- option(c).
o_point(p2_16, "28.400", "11.100", "180.0") :- option(c).
o_point(p2_17, "27.400", "11.100", "180.0") :- option(c).

