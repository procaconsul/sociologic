#include "background-knowledge.lp".
agent(agent1).
agent(agent2).
agent(agent3).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "15.0", "15.0").
point(w1_e, "20.0", "15.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "15.0", "10.0").
point(w2_e, "20.0", "10.0").

corridor(corridor, wall1, wall2).

talking(agent1, agent2, 1).
talking(agent1, agent2, 2).
talking(agent1, agent2, 3).
talking(agent1, agent2, 4).
talking(agent1, agent2, 5).
talking(agent1, agent2, 6).


% agent 2 passes the mid and forces agent 1 (just entering)
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


o_point(p1_1, "23.051", "10.900", "90.0").
o_point(p1_2, "23.051", "10.900", "90.0").
o_point(p1_3, "23.051", "10.900", "90.0"). 
o_point(p1_4, "23.051", "10.900", "90.0").
o_point(p1_5, "23.051", "10.900", "90.0").
o_point(p1_6, "23.051", "10.900", "90.0").
o_point(p1_7, "22.051", "11.100", "180.0").
o_point(p1_8, "21.051", "11.100", "180.0").
o_point(p1_9, "20.051", "11.100", "180.0").
o_point(p1_10, "19.051", "11.100", "180.0").

o_point(p2_1, "23.051", "13.900", "270.0").
o_point(p2_2, "23.051", "13.900", "270.0").
o_point(p2_3, "23.051", "13.900", "270.0"). 
o_point(p2_4, "23.051", "13.900", "270.0").
o_point(p2_5, "23.051", "13.900", "270.0").
o_point(p2_6, "23.051", "13.900", "270.0").
o_point(p2_7, "24.051", "13.000", "0.0").
o_point(p2_8, "25.051", "13.000", "0.0").
o_point(p2_9, "26.051", "13.000", "0.0").
o_point(p2_10, "27.051", "13.000", "0.0").

o_point(p3_1, "20.051", "12.000", "0.0").
o_point(p3_2, "21.051", "12.000", "0.0").
o_point(p3_3, "21.051", "12.000", "0.0"). 
o_point(p3_4, "21.051", "12.000", "0.0").
o_point(p3_5, "21.051", "12.000", "0.0").
o_point(p3_6, "21.051", "12.000", "0.0").
o_point(p3_7, "22.051", "12.000", "0.0").
o_point(p3_8, "23.051", "12.000", "0.0").
o_point(p3_9, "24.051", "12.000", "0.0").
o_point(p3_10, "25.051", "12.000", "0.0").


%%% Hypothesis Space %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% overtake(V1, V2, C1) :- behind(V1, V2, C1), in_front(V1, V2, C2), rule(1, C1, C2).
% overtake(V1, V2, C1) :- behind(V1, V2, C1), in_front(V1, V2, C2), C2 > C1.
% squeeze(E, W, T) :- pos(E, T, P), point(P, X1, Y1), wall(W, P2, P3), point(P2, X2, Y2), point(P3, X3, Y3), @distance2d_point_segment_(X1, Y1, X2, Y2, X3, Y3) < squeezing_threshold.

% 1 { case(1..2) } 1.

%%% Goal %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
goal :- wait_end_of_talk(agent3, A, B, T).
:- not goal.



% Hide Scenario Facts from solution
% #show case/1.
% #show overtake/3.
% #show behind/3.
% #show in_front/3.
#show wait_end_of_talk/4.
#show talking/3.
#show one_person_width/1. 
% #show give_way/3.
% #show past_mid/3.
% #show polygon/2.
% #show inside/3. 
% #show step_out_and_wait/4.
% #show mid_point/3.
% #show line_between/5.
% #show squeeze_by_wall/3.
