
#include "sl-interface.py".
#include "spatial.lp".

% NARROW PASSAGE SCENARIO 1 ################################################
% ##########################################################################

%%%  
% - opposite direction
% 

#pos(p1, {}, {}, {

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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

wall(wall3, w3_s, w3_e).
point(w3_e, "30.0", "12.0").
point(w3_e, "30.0", "17.0").

wall(wall4, w4_s, w4_e).
point(w4_e, "30.0", "10.0").
point(w4_e, "30.0", "5.0").

% agent 2 steps in, sees agent 1 in, walks out and waits 
% before attempting again
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

}).
%
#pos(p2, {}, {}, {

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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

wall(wall3, w3_s, w3_e).
point(w3_e, "30.0", "12.0").
point(w3_e, "30.0", "17.0").

wall(wall4, w4_s, w4_e).
point(w4_e, "30.0", "10.0").
point(w4_e, "30.0", "5.0").

% agent 2 steps and squeezes by the wall 
% as he passes agent 1 on the side
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
pos(agent2, 13, p1_13).
pos(agent2, 14, p1_14).
pos(agent2, 15, p1_15).
pos(agent2, 16, p1_16).
pos(agent2, 17, p1_17).
pos(agent2, 18, p1_18).
pos(agent2, 19, p1_19).
pos(agent2, 20, p1_20).
pos(agent2, 21, p1_21).
pos(agent2, 22, p1_22).
pos(agent2, 23, p1_23).
pos(agent2, 24, p1_24).


o_point(p1_1, "20.051", "11.080", "0.0").
o_point(p1_2, "21.051", "11.000", "0.0"). 
o_point(p1_3, "22.051", "11.000", "0.0").
o_point(p1_4, "23.051", "10.800", "0.0"). 
o_point(p1_5, "24.051", "10.800", "0.0").
o_point(p1_6, "25.051", "10.800", "0.0").
o_point(p1_7, "26.051", "11.000", "0.0").
o_point(p1_8, "27.051", "11.000", "0.0").
o_point(p1_9, "28.051", "11.000", "0.0").
o_point(p1_10, "29.051", "11.000", "0.0").
o_point(p1_11, "30.051", "11.000", "0.0").
o_point(p1_12, "31.051", "11.000", "0.0").
o_point(p1_13, "32.051", "11.080", "0.0").
o_point(p1_14, "33.051", "11.000", "0.0"). 
o_point(p1_15, "34.051", "11.000", "0.0").
o_point(p1_16, "35.051", "10.800", "0.0"). 
o_point(p1_17, "36.051", "10.800", "0.0").
o_point(p1_18, "37.051", "10.800", "0.0").
o_point(p1_19, "38.051", "11.000", "0.0").
o_point(p1_20, "39.051", "11.000", "0.0").
o_point(p1_21, "40.051", "11.000", "0.0").
o_point(p1_22, "41.051", "11.000", "0.0").
o_point(p1_23, "42.051", "11.000", "0.0").
o_point(p1_24, "43.051", "11.000", "0.0").

o_point(p2_1, "32.551", "12.400", "220.0").
o_point(p2_2, "31.640", "11.800", "200.0").
o_point(p2_3, "29.553", "11.000", "180.0"). 
o_point(p2_4, "27.000", "11.500", "150.0").
o_point(p2_5,  "25.000", "11.910", "180.0").
o_point(p2_6,  "23.000", "11.910", "180.0").
o_point(p2_7,  "21.000", "11.500", "210.0").
o_point(p2_8,  "19.000", "11.000", "180.0").
o_point(p2_9,  "17.000", "11.000", "180.0").
o_point(p2_10, "15.000", "11.000", "180.0").
o_point(p2_11, "13.000", "11.000", "180.0").
o_point(p2_12, "13.000", "11.000", "180.0").
o_point(p2_13, "13.000", "11.000", "180.0").
o_point(p2_14, "13.000", "11.000", "180.0").
o_point(p2_15, "13.000", "11.000", "180.0"). 
o_point(p2_16, "13.000", "11.000", "180.0").
o_point(p2_17, "11.000", "11.000", "180.0"). 
o_point(p2_18, "9.000", "11.000", "180.0").
o_point(p2_19, "7.000", "11.000", "180.0").
o_point(p2_20, "5.000", "11.000", "180.0").
o_point(p2_21, "5.000", "11.000", "180.0").
o_point(p2_22, "5.000", "11.000", "180.0").
o_point(p2_23, "5.000", "11.000", "180.0").
o_point(p2_24, "5.000", "11.000", "180.0").
}).

#pos(p3, {}, {}, {

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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

wall(wall3, w3_s, w3_e).
point(w3_e, "30.0", "12.0").
point(w3_e, "30.0", "17.0").

wall(wall4, w4_s, w4_e).
point(w4_e, "30.0", "10.0").
point(w4_e, "30.0", "5.0").

pos(agent1, 1, p1_1).
pos(agent1, 2, p1_2).
pos(agent1, 3, p1_3).

pos(agent2, 1, p2_1).
pos(agent2, 2, p2_2).
pos(agent2, 3, p2_3).

o_point(p1_1, "25.051", "11.080", "0.0").
o_point(p1_2, "26.051", "11.000", "0.0"). 
o_point(p1_3, "27.051", "11.000", "0.0").

o_point(p2_1, "26.553", "11.910", "180.0"). 
o_point(p2_2, "24.000", "11.910", "180.0").
o_point(p2_3, "22.000", "11.300", "220.0").
}).

%#pos(p3_bis, {}, {}, {
%
%%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%agent(agent1).
%agent(agent2).
%
%
%%                      | wall3
%% wall1                | 
%% ---------------------+
%%
%% ---------------------+
%% wall2                | 
%%                      | wall4
%
%% wall 1 
%wall(wall1, w1_s, w1_e).
%point(w1_s, "15.0", "12.0").
%point(w1_e, "30.0", "12.0").
%
%% wall 2 
%wall(wall2, w2_s, w2_e).
%point(w2_s, "15.0", "10.0").
%point(w2_e, "30.0", "10.0").
%
%wall(wall3, w3_s, w3_e).
%point(w3_e, "30.0", "12.0").
%point(w3_e, "30.0", "17.0").
%
%wall(wall4, w4_s, w4_e).
%point(w4_e, "30.0", "10.0").
%point(w4_e, "30.0", "5.0").
%
%pos(agent1, 1, p1_1).
%pos(agent1, 2, p1_2).
%pos(agent1, 3, p1_3).
%
%pos(agent2, 1, p2_1).
%pos(agent2, 2, p2_2).
%pos(agent2, 3, p2_3).
%
%o_point(p1_1, "25.051", "11.080", "0.0").
%o_point(p1_2, "26.051", "11.000", "0.0"). 
%o_point(p1_3, "27.051", "11.000", "0.0").
%
%o_point(p2_1, "24.553", "11.000", "180.0"). 
%o_point(p2_2, "22.000", "11.000", "180.0").
%o_point(p2_3, "20.000", "11.000", "180.0").
%}).

%#pos(p4, {}, {}, {
%
%%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%agent(agent1).
%agent(agent2).
%
%
%%                      | wall3
%% wall1                | 
%% ---------------------+
%%
%% ---------------------+
%% wall2                | 
%%                      | wall4
%
%% wall 1 
%wall(wall1, w1_s, w1_e).
%point(w1_s, "15.0", "12.0").
%point(w1_e, "30.0", "12.0").
%
%% wall 2 
%wall(wall2, w2_s, w2_e).
%point(w2_s, "15.0", "10.0").
%point(w2_e, "30.0", "10.0").
%
%wall(wall3, w3_s, w3_e).
%point(w3_e, "30.0", "12.0").
%point(w3_e, "30.0", "17.0").
%
%wall(wall4, w4_s, w4_e).
%point(w4_e, "30.0", "10.0").
%point(w4_e, "30.0", "5.0").
%
%% agent 2 steps in, sees agent 1 in, walks out and waits 
%% before attempting again
%pos(agent1, 1, p1_1).
%pos(agent1, 2, p1_2).
%pos(agent1, 3, p1_3).
%pos(agent1, 4, p1_4).
%pos(agent1, 5, p1_5).
%pos(agent1, 6, p1_6).
%pos(agent1, 7, p1_7).
%pos(agent1, 8, p1_8).
%pos(agent1, 9, p1_9).
%
%pos(agent2, 1, p2_1).
%pos(agent2, 2, p2_2).
%pos(agent2, 3, p2_3).
%pos(agent2, 4, p2_4).
%pos(agent2, 5, p2_5).
%pos(agent2, 6, p2_6).
%pos(agent2, 7, p2_7).
%pos(agent2, 8, p2_8).
%pos(agent2, 9, p2_9).
%
%o_point(p1_1, "25.051", "11.080", "0.0").
%o_point(p1_2, "26.051", "11.000", "0.0"). 
%o_point(p1_3, "27.051", "11.000", "0.0").
%o_point(p1_4, "28.051", "11.000", "0.0"). 
%o_point(p1_5, "29.051", "11.000", "0.0").
%o_point(p1_6, "30.051", "11.000", "0.0").
%o_point(p1_7, "31.051", "11.000", "0.0").
%o_point(p1_8, "32.051", "11.000", "0.0").
%o_point(p1_9, "33.051", "11.000", "0.0").
%
%o_point(p2_1, "30.551", "11.400", "220.0").
%o_point(p2_2, "29.640", "11.800", "200.0").
%o_point(p2_3, "27.553", "11.910", "180.0"). 
%o_point(p2_4, "26.000", "11.910", "180.0").
%o_point(p2_5, "25.000", "11.300", "220.0").
%o_point(p2_6, "23.000", "11.800", "220.0").
%o_point(p2_7, "21.000", "11.000", "180.0").
%o_point(p2_8, "19.000", "11.000", "180.0").
%o_point(p2_9, "17.000", "11.000", "180.0").
%}).

%%% Background %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 120cm is the proxemic boundary of the personal space
#const personal_distance = "1.200". 
#const squeezing_threshold = "0.100". 

point(P, X, Y) :- o_point(P, X, Y, _).
point2d(P, X, Y) :- point(P, X, Y).

behind(E1, E2, T) :- E1 != E2, pos(E1, T, P1), pos(E2, T, P2), o_point(P1, X1, Y1, O1), o_point(P2, X2, Y2, O2), pos(E2, T+1, P3), point(P3, X3, Y3), @is_behind(X1, Y1, O1, X2, Y2, O2) == 0, @is_collinear(X1, Y1, X2, Y2, X3, Y3) == 0. 

in_front(E1, E2, T) :- behind(E2, E1, T).

overtake(E1, E2, T1) :- behind(E1, E2, T1), in_front(E1, E2, T2), after(T2, T1).

after(T1, T2) :- pos(_, T1, _), pos(_, T2, _), T1 > T2.

path(E, T, line(E, T)) :- pos(E, T, _), pos(E, T+1, _).

line2d(line(E, T), X1, Y1, X2, Y2) :- pos(E, T, P1), pos(E, T+1, P2), point(P1, X1, Y1), point(P2, X2, Y2).
line2d(line(E), X1, Y1, X2, Y2) :- wall(E, P1, P2), point(P1, X1, Y1), point(P2, X2, Y2).
line_ent(L) :- line2d(L, _, _, _, _).

spatial(incidence, L1, L2) :- line_ent(L1), line_ent(L2).
incidence(INC, L1, L2) :- spatial_system(id(default), incidence(INC, L1, L2)).


% space_for_one_person_only :- line_ent(line(W)), line_ent(L2), sgn_distance(id(default), D, line(W), L2)
invades_personal_space(E1, E2, T) :- pos(E1, T, P1), point(P1, X1, Y1), pos(E2, T, P2), point(P2, X2, Y2), @distance2d_(X1, Y1, X2, Y2) < personal_distance. 
squeeze(E, W, T) :- pos(E, T, P), point(P, X1, Y1), wall(W, P2, P3), point(P2, X2, Y2), point(P3, X3, Y3), @distance2d_point_segment_(X1, Y1, X2, Y2, X3, Y3) < squeezing_threshold.

%%% Constraints %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% entity cannot be in two places at the same time point
:- pos(E, T, P1), pos(E, T, P2), P1 != P2.

% entities cannot "go through" walls
:- incidence(intersects, line(W), L), wall(W, _, _), path(_, _, L).

%%% ORDERINGS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#brave_ordering(p1, p3).
#brave_ordering(p1, p2).
% #brave_ordering(p5, p6).

%%% Hypothesis Space %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#modeo(1, squeeze(var(ent), var(wall), var(time))).
#maxp(1).
#weight(1).

