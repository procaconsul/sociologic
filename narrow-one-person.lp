#include "background-knowledge.lp".

%%%% Same direction in narrow alley, space enough for two people

agent(agent1).
agent(agent2).


%                      | wall3
% wall1                | 
% ---------------------+
%
% ---------------------+
% wall2                | 
%                      | wall4

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "15.0", "12.0").
point(w1_e, "30.0", "12.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "15.0", "10.0").
point(w2_e, "30.0", "10.0").

corridor(c, wall1, wall2).

% % agent 2 steps in, sees agent 1 in, walks out and waits 
% % before attempting again
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
pos(agent1, 11, p1_11).
pos(agent1, 12, p1_12).
pos(agent1, 13, p1_13).
pos(agent1, 14, p1_14).
pos(agent1, 15, p1_15).
pos(agent1, 16, p1_16).
pos(agent1, 17, p1_17).
pos(agent1, 18, p1_18).
pos(agent1, 19, p1_19).
pos(agent1, 20, p1_20).
pos(agent1, 21, p1_21).
pos(agent1, 22, p1_22).
pos(agent1, 23, p1_23).
pos(agent1, 24, p1_24).

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
pos(agent2, 18, p2_18).
pos(agent2, 19, p2_19).
pos(agent2, 20, p2_20).
pos(agent2, 21, p2_21).
pos(agent2, 22, p2_22).
pos(agent2, 23, p2_23).
pos(agent2, 24, p2_24).

o_point(p1_1, "20.051", "11.080", "0.0").
o_point(p1_2, "21.051", "11.000", "0.0"). 
o_point(p1_3, "22.051", "11.000", "0.0").
o_point(p1_4, "23.051", "11.000", "0.0"). 
o_point(p1_5, "24.051", "11.000", "0.0").
o_point(p1_6, "25.051", "11.000", "0.0").
o_point(p1_7, "26.051", "11.000", "0.0").
o_point(p1_8, "27.051", "11.000", "0.0").
o_point(p1_9, "28.051", "11.000", "0.0").
o_point(p1_10, "29.051", "11.000", "0.0").
o_point(p1_11, "30.051", "11.000", "0.0").
o_point(p1_12, "31.051", "11.000", "0.0").
o_point(p1_13, "32.051", "11.000", "0.0").
o_point(p1_14, "33.051", "11.000", "0.0").
o_point(p1_15, "34.051", "11.000", "0.0").
o_point(p1_16, "35.051", "11.000", "0.0").
o_point(p1_17, "36.051", "11.000", "0.0").
o_point(p1_18, "37.051", "11.000", "0.0").
o_point(p1_19, "38.051", "11.000", "0.0").
o_point(p1_20, "39.051", "11.000", "0.0").
o_point(p1_21, "40.051", "11.000", "0.0").
o_point(p1_22, "41.051", "11.000", "0.0").
o_point(p1_23, "42.051", "11.000", "0.0").
o_point(p1_24, "43.051", "11.000", "0.0").

o_point(p2_1, "32.551", "12.400", "220.0").
o_point(p2_2, "31.640", "11.800", "200.0").
o_point(p2_3, "29.553", "11.000", "180.0"). 
o_point(p2_4, "27.000", "11.000", "180.0").
o_point(p2_5, "29.000", "11.300", "40.0").
o_point(p2_6, "31.000", "11.800", "40.0").
o_point(p2_7, "32.000", "13.000", "190.0").
o_point(p2_8, "32.000", "13.000", "190.0").
o_point(p2_9, "32.000", "13.000", "190.0").
o_point(p2_10, "32.000", "13.000", "190.0").
o_point(p2_11, "32.000", "13.000", "190.0").
o_point(p2_12, "32.000", "13.000", "190.0").
o_point(p2_13, "32.000", "13.000", "190.0").
o_point(p2_14, "31.000", "11.800", "200.0").
o_point(p2_15, "29.000", "11.000", "180.0").
o_point(p2_16, "27.000", "11.000", "180.0").
o_point(p2_17, "25.000", "11.000", "180.0").
o_point(p2_18, "24.000", "11.000", "180.0").
o_point(p2_19, "23.000", "11.000", "180.0").
o_point(p2_20, "21.000", "11.000", "180.0").
o_point(p2_21, "19.000", "11.000", "180.0").
o_point(p2_22, "17.000", "11.000", "180.0").
o_point(p2_23, "15.000", "11.000", "180.0").
o_point(p2_24, "13.000", "11.000", "180.0").



%%% Hypothesis Space %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% overtake(V1, V2, C1) :- behind(V1, V2, C1), in_front(V1, V2, C2), rule(1, C1, C2).
% overtake(V1, V2, C1) :- behind(V1, V2, C1), in_front(V1, V2, C2), C2 > C1.
% squeeze(E, W, T) :- pos(E, T, P), point(P, X1, Y1), wall(W, P2, P3), point(P2, X2, Y2), point(P3, X3, Y3), @distance2d_point_segment_(X1, Y1, X2, Y2, X3, Y3) < squeezing_threshold.

% 1 { case(1..2) } 1.

%%% Goal %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
goal :- polygon(c, VS).
:- not goal.



% Hide Scenario Facts from solution
% #show case/1.
% #show overtake/3.
% #show behind/3.
% #show in_front/3.
% #show one_person_width/1. 
% #show past_mid/3.
% #show polygon/2.
% #show inside/3. 
#show step_out_and_wait/4.
% #show mid_point/3.
% #show line_between/5.
% #show squeeze_by_wall/3.
