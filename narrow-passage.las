#include "background-knowledge.lp".

%%%% Same direction in narrow alley, space enough for two people

%%%% Environment
%
% wall 1
% ----------------------------------------------
%        	^
%        	|
%        	|-- space for two entities to walk 
%        	|   side by side
%        	|
% wall 2 	v
% ----------------------------------------------
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



 %%%%%%%%%%%%%%%%%%%
% P-INTERPRETATIONS %%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%%%%%%%%%%%%%%%%%

%%%  
% - same direction
% - overtaking
% - following behind
%
%
 
#pos(p1, {}, {}, {

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

#pos(p2, {}, {}, {

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

#pos(p3, {}, {}, {

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

o_point(p1_1, "40.051", "12.880", "180.0").
o_point(p1_2, "39.051", "12.800", "180.0"). 
o_point(p1_3, "38.051", "12.800", "180.0").
o_point(p1_4, "37.051", "12.800", "180.0"). 
o_point(p1_5, "36.051", "12.800", "180.0").
o_point(p1_6, "35.051", "12.800", "180.0").
o_point(p1_7, "34.051", "12.800", "180.0").
o_point(p1_8, "33.051", "12.800", "180.0").
o_point(p1_9, "32.051", "12.800", "180.0").
o_point(p1_10, "31.051", "12.800", "180.0").

o_point(p2_1, "41.551", "12.800", "180.0").
o_point(p2_2, "40.640", "12.800", "180.0").
o_point(p2_3, "39.553", "12.800", "180.0"). 
o_point(p2_4, "38.000", "12.800", "180.0").
o_point(p2_5, "37.000", "12.800", "180.0").
o_point(p2_6, "36.000", "12.800", "180.0").
o_point(p2_7, "35.000", "12.800", "180.0").
o_point(p2_8, "34.000", "12.800", "180.0").
o_point(p2_9, "33.000", "12.800", "180.0").
o_point(p2_10, "32.000", "12.800", "180.0").

}).

% NARROW PASSAGE SCENARIO 1 ################################################
% ##########################################################################

%%%%%%%%%%%%%%%%%%%%%%
% opposite directions
%
%                      | wall3
% wall1                | 
% ---------------------+
%
% ---------------------+
% wall2                | 
%                      | wall4


#pos(p4, {}, {}, {

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
 
#pos(p5, {}, {}, {

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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

#pos(p6, {}, {}, {

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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

%%% ORDERINGS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#brave_ordering(p1, p2).
#brave_ordering(p1, p3).
#brave_ordering(p2, p3).
#brave_ordering(p4, p5).
#brave_ordering(p4, p6).

%%% Hypothesis Space %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#modeo(1, overtake(var(ent), var(ent), var(time))).
#modeo(1, invades_personal_space(var(ent), var(ent), var(time))).
#modeo(1, squeeze(var(ent), var(wall), var(time))).
#maxp(2).
#weight(-1).
#weight(1).
#weight(2).

%%% Display %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% #show overtake/3.
% #show behind/3.
% #show in_front/3.

