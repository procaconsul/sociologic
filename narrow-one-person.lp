#include "background-knowledge.lp".

agent(agent1).
agent(agent2).

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
pos(agent1, 1, p1_1).
pos(agent1, 2, p1_2).
pos(agent1, 3, p1_3).
pos(agent1, 4, p1_4).
pos(agent1, 5, p1_5).
pos(agent1, 6, p1_6).
pos(agent1, 7, p1_7).
pos(agent1, 8, p1_8).
pos(agent1, 9, p1_9).

pos(agent2, 1, p2_1).
pos(agent2, 2, p2_2).
pos(agent2, 3, p2_3).
pos(agent2, 4, p2_4).
pos(agent2, 5, p2_5).
pos(agent2, 6, p2_6).
pos(agent2, 7, p2_7).
pos(agent2, 8, p2_8).
pos(agent2, 9, p2_9).

o_point(p1_1, "22.051", "11.000", "0.0").
o_point(p1_2, "23.051", "11.000", "0.0").
o_point(p1_3, "24.050", "11.000", "0.0"). 
o_point(p1_4, "26.501", "11.000", "0.0").
o_point(p1_5, "28.501", "11.000", "0.0").
o_point(p1_6, "30.051", "11.000", "0.0").
o_point(p1_7, "32.051", "11.000", "0.0").
o_point(p1_8, "34.051", "11.000", "0.0").
o_point(p1_9, "36.051", "11.000", "0.0").

o_point(p2_1, "32.051", "11.000", "180.0").
o_point(p2_2, "31.051", "11.000", "180.0").
o_point(p2_3, "29.500", "11.000", "180.0"). 
o_point(p2_4, "30.501", "11.000", "45.0").
o_point(p2_5, "31.501", "12.000", "220.0").
o_point(p2_6, "31.051", "12.000", "220.0").
o_point(p2_7, "31.051", "12.000", "220.0").
o_point(p2_8, "29.051", "11.000", "180.0").
o_point(p2_9, "27.051", "11.000", "180.0").

%%% Hypothesis Space %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% overtake(V1, V2, C1) :- behind(V1, V2, C1), in_front(V1, V2, C2), rule(1, C1, C2).
% overtake(V1, V2, C1) :- behind(V1, V2, C1), in_front(V1, V2, C2), C2 > C1.
% squeeze(E, W, T) :- pos(E, T, P), point(P, X1, Y1), wall(W, P2, P3), point(P2, X2, Y2), point(P3, X3, Y3), @distance2d_point_segment_(X1, Y1, X2, Y2, X3, Y3) < squeezing_threshold.

% 1 { case(1..2) } 1.

%%% Goal %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
goal :- past_mid(agent1, corridor, T), step_out_and_wait(agent2, agent1, corridor, T1), after(T1, T).
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
