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
% #pos(p3, {}, {}, {

% %%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% agent(agent1).
% agent(agent2).

% % wall 1 
% wall(wall1, w1_s, w1_e).
% point(w1_s, "10.0", "20.0").
% point(w1_e, "60.0", "20.0").

% % wall 2 
% wall(wall2, w2_s, w2_e).
% point(w2_s, "10.0", "10.0").
% point(w2_e, "60.0", "10.0").

% corridor(corridor, wall1, wall2).

% % agent 2 (faster) slows down and stays behind agent 1 (w/o respecting ps)
% pos(agent1, 1, p1_1).
% pos(agent1, 2, p1_2).
% pos(agent1, 3, p1_3).
% pos(agent1, 4, p1_4).
% pos(agent1, 5, p1_5).
% pos(agent1, 6, p1_6).
% pos(agent1, 7, p1_7).
% pos(agent1, 8, p1_8).
% pos(agent1, 9, p1_9).
% pos(agent1, 10, p1_10).

% pos(agent2, 1, p2_1).
% pos(agent2, 2, p2_2).
% pos(agent2, 3, p2_3).
% pos(agent2, 4, p2_4).
% pos(agent2, 5, p2_5).
% pos(agent2, 6, p2_6).
% pos(agent2, 7, p2_7).
% pos(agent2, 8, p2_8).
% pos(agent2, 9, p2_9).
% pos(agent2, 10, p2_10).

% o_point(p1_1, "40.051", "12.880", "180.0").
% o_point(p1_2, "39.051", "12.800", "180.0"). 
% o_point(p1_3, "38.051", "12.800", "180.0").
% o_point(p1_4, "37.051", "12.800", "180.0"). 
% o_point(p1_5, "36.051", "12.800", "180.0").
% o_point(p1_6, "35.051", "12.800", "180.0").
% o_point(p1_7, "34.051", "12.800", "180.0").
% o_point(p1_8, "33.051", "12.800", "180.0").
% o_point(p1_9, "32.051", "12.800", "180.0").
% o_point(p1_10, "31.051", "12.800", "180.0").

% o_point(p2_1, "41.551", "12.800", "180.0").
% o_point(p2_2, "40.640", "12.800", "180.0").
% o_point(p2_3, "39.553", "12.800", "180.0"). 
% o_point(p2_4, "38.000", "12.800", "180.0").
% o_point(p2_5, "37.000", "12.800", "180.0").
% o_point(p2_6, "36.000", "12.800", "180.0").
% o_point(p2_7, "35.000", "12.800", "180.0").
% o_point(p2_8, "34.000", "12.800", "180.0").
% o_point(p2_9, "33.000", "12.800", "180.0").
% o_point(p2_10, "32.000", "12.800", "180.0").

% }).


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
 
#pos(p1_1A_1, {}, {}, {

% Option A

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

o_point(p2_1, "32.551", "12.400", "220.0").
o_point(p2_2, "31.640", "11.800", "200.0").
o_point(p2_3, "29.553", "11.100", "180.0"). 
o_point(p2_4, "27.000", "11.100", "180.0").
o_point(p2_5, "29.000", "11.300", "40.0").
o_point(p2_6, "31.000", "11.800", "40.0").
o_point(p2_7, "32.000", "13.100", "190.0").
o_point(p2_8, "32.000", "13.100", "190.0").
o_point(p2_9, "32.000", "13.000", "190.0").
o_point(p2_10, "32.000", "13.000", "190.0").
o_point(p2_11, "32.000", "13.000", "190.0").
o_point(p2_12, "32.000", "13.000", "190.0").
o_point(p2_13, "32.000", "13.000", "190.0").
o_point(p2_14, "31.000", "11.800", "200.0").
o_point(p2_15, "29.000", "11.100", "180.0").
o_point(p2_16, "27.000", "11.100", "180.0").
o_point(p2_17, "25.000", "11.100", "180.0").
o_point(p2_18, "24.000", "11.100", "180.0").
}).

#pos(p1_1B_1, {}, {}, {

% Option B

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
% as he passes agent 1 on the side (BEFORE MID)
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

o_point(p2_1, "32.551", "12.400", "220.0").
o_point(p2_2, "31.640", "11.800", "200.0").
o_point(p2_3, "29.553", "11.100", "180.0"). 
o_point(p2_4, "27.000", "11.500", "150.0").
o_point(p2_5,  "25.000", "11.910", "180.0").
o_point(p2_6,  "23.000", "11.910", "180.0").
o_point(p2_7,  "21.000", "11.500", "210.0").
o_point(p2_8,  "19.000", "11.100", "180.0").
o_point(p2_9,  "17.000", "11.100", "180.0").
o_point(p2_10, "15.000", "11.100", "180.0").
o_point(p2_11, "13.000", "11.100", "180.0").
o_point(p2_12, "13.000", "11.100", "180.0").
o_point(p2_13, "13.000", "11.100", "180.0").
}).

#pos(p1_1B_2, {}, {}, {

% Option B

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


pos(agent2, 1, p2_1).
pos(agent2, 2, p2_2).
pos(agent2, 3, p2_3).
pos(agent2, 4, p2_4).
pos(agent2, 5, p2_5).
pos(agent2, 6, p2_6).
pos(agent2, 7, p2_7).
pos(agent2, 8, p2_8).
pos(agent2, 9, p2_9).


o_point(p1_1, "17.051", "11.080", "0.0").
o_point(p1_2, "18.051", "11.000", "0.0"). 
o_point(p1_3, "19.051", "11.000", "0.0").
o_point(p1_4, "20.051", "10.800", "0.0"). 
o_point(p1_5, "21.051", "10.800", "0.0").
o_point(p1_6, "22.051", "10.800", "0.0").
o_point(p1_7, "23.051", "11.000", "0.0").
o_point(p1_8, "24.051", "11.000", "0.0").
o_point(p1_9, "25.051", "11.000", "0.0").

o_point(p2_1, "22.551", "11.400", "180.0").
o_point(p2_2, "21.640", "11.700", "140.0").
o_point(p2_3, "20.553", "11.910", "180.0"). 
o_point(p2_4, "19.000", "11.910", "220.0").
o_point(p2_5,  "18.000", "11.100", "180.0").
o_point(p2_6,  "17.000", "11.100", "180.0").
o_point(p2_7,  "16.000", "11.500", "180.0").
o_point(p2_8,  "15.000", "11.100", "180.0").
o_point(p2_9,  "14.000", "11.100", "180.0").
}).


#pos(p1_1C_1, {}, {}, {

% Option C

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

% Agent 2 enters after agent 1 crosses the middle but
% forces him to step out
o_point(p1_1, "21.051", "11.080", "0.0").
o_point(p1_2, "22.551", "11.000", "0.0"). 
o_point(p1_3, "23.051", "11.000", "0.0").
o_point(p1_4, "22.051", "11.000", "180.0"). 
o_point(p1_5, "21.051", "11.000", "180.0").
o_point(p1_6, "20.051", "11.000", "180.0").
o_point(p1_7, "18.051", "11.000", "180.0").
o_point(p1_8, "16.051", "11.000", "140.0").
o_point(p1_9, "14.051", "12.000", "220.0").
o_point(p1_10, "14.051", "13.000", "220.0").
o_point(p1_11, "14.051", "13.000", "220.0").
o_point(p1_12, "14.000", "12.000", "320.0").
o_point(p1_13, "15.051", "11.000", "0.0").
o_point(p1_14, "16.051", "11.000", "0.0").
o_point(p1_15, "17.051", "11.000", "0.0").
o_point(p1_16, "18.051", "11.000", "0.0").
o_point(p1_17, "19.051", "11.000", "0.0").
o_point(p1_18, "20.051", "11.000", "0.0").

o_point(p2_1, "32.551", "12.400", "220.0").
o_point(p2_2, "31.640", "11.800", "200.0").
o_point(p2_3, "29.553", "11.100", "180.0"). 
o_point(p2_4, "27.000", "11.100", "180.0").
o_point(p2_5,  "25.000", "11.100", "180.0").
o_point(p2_6,  "23.000", "11.100", "180.0").
o_point(p2_7,  "21.000", "11.100", "180.0").
o_point(p2_8,  "19.000", "11.100", "180.0").
o_point(p2_9,  "17.000", "11.100", "180.0").
o_point(p2_10, "15.000", "11.100", "180.0").
o_point(p2_11, "13.000", "11.100", "180.0").
o_point(p2_12, "13.100", "11.100", "180.0").
o_point(p2_13, "13.200", "11.100", "180.0").
o_point(p2_14, "13.300", "11.100", "180.0").
o_point(p2_15, "13.400", "11.100", "180.0"). 
o_point(p2_16, "13.500", "11.100", "180.0").
o_point(p2_17, "11.000", "11.100", "180.0"). 
o_point(p2_18, "9.000", "11.100", "180.0").
}).

% ###########################################
% NARROW ALLEY Scenario 2
% ###########################################
%            mid
%  wall1      |
% +------------------------+
%             |
% +------------------------+
%  wall2      |
%

#pos(p1_2A_1, {}, {}, {

% Option A

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

% agent 2 reaches the middle and goes all the way
% back 
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

o_point(p1_1, "32.051", "11.000", "180.0").
o_point(p1_2, "31.051", "11.000", "180.0").
o_point(p1_3, "30.500", "11.000", "180.0"). 
o_point(p1_4, "29.501", "11.000", "180.0").
o_point(p1_5, "27.501", "11.000", "180.0").
o_point(p1_6, "25.051", "11.000", "180.0").
o_point(p1_7, "23.051", "11.000", "180.0").
o_point(p1_8, "21.051", "11.000", "180.0").
o_point(p1_9, "19.051", "11.000", "180.0").
o_point(p1_10, "17.051", "11.000", "180.0").
o_point(p1_11, "15.051", "11.000", "180.0").
o_point(p1_12, "13.051", "11.000", "180.0").

o_point(p2_1, "20.051", "11.100", "0.0").
o_point(p2_2, "22.051", "11.100", "0.0").
o_point(p2_3, "24.050", "11.100", "0.0"). 
o_point(p2_4, "26.501", "11.100", "0.0").
o_point(p2_5, "24.501", "11.100", "180.0").
o_point(p2_6, "22.051", "11.100", "180.0").
o_point(p2_7, "20.051", "11.100", "180.0").
o_point(p2_8, "18.051", "11.100", "180.0").
o_point(p2_9, "16.051", "11.100", "140.0").
o_point(p2_10, "14.051", "12.000", "290.0").
o_point(p2_11, "16.051", "11.100", "0.0").
o_point(p2_12, "18.051", "11.100", "0.0").
}).


#pos(p1_2B_1, {}, {}, {

% Option B

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

% agent two reaches the mid of the corridor first and 
% squeezes by the wall to pass agent 1
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

o_point(p1_1, "20.051", "11.080", "0.0").
o_point(p1_2, "20.051", "11.000", "0.0"). 
o_point(p1_3, "20.051", "11.000", "0.0").
o_point(p1_4, "20.051", "11.000", "0.0"). 
o_point(p1_5, "20.051", "11.000", "0.0").
o_point(p1_6, "20.051", "11.000", "0.0").
o_point(p1_7, "21.051", "11.000", "0.0").
o_point(p1_8, "22.051", "11.000", "0.0").
o_point(p1_9, "23.051", "11.000", "0.0").
o_point(p1_10, "24.051", "11.000", "0.0").
o_point(p1_11, "25.051", "11.000", "0.0").
o_point(p1_12, "26.051", "11.000", "0.0").
o_point(p1_13, "27.051", "11.000", "0.0").
o_point(p1_14, "28.051", "11.000", "0.0").
o_point(p1_15, "29.051", "11.000", "0.0").
o_point(p1_16, "30.051", "11.000", "0.0").
o_point(p1_17, "31.051", "11.000", "0.0").
o_point(p1_18, "32.051", "11.000", "0.0").

o_point(p2_1, "32.551", "12.400", "220.0").
o_point(p2_2, "31.640", "11.800", "200.0").
o_point(p2_3, "29.553", "11.100", "180.0"). 
o_point(p2_4, "27.000", "11.100", "180.0").
o_point(p2_5, "25.000", "11.100", "180.0").
o_point(p2_6, "23.000", "11.800", "180.0").
o_point(p2_7, "21.000", "11.910", "180.0").
o_point(p2_8, "19.000", "11.100", "180.0").
o_point(p2_9, "17.000", "11.100", "180.0").
o_point(p2_10, "15.000", "11.100", "190.0").
o_point(p2_11, "13.000", "11.100", "190.0").
o_point(p2_12, "13.000", "11.100", "190.0").
o_point(p2_13, "13.000", "11.100", "190.0").
o_point(p2_14, "11.000", "11.800", "200.0").
o_point(p2_15, "09.000", "11.100", "180.0").
o_point(p2_16, "07.000", "11.100", "180.0").
o_point(p2_17, "05.000", "11.100", "180.0").
o_point(p2_18, "03.000", "11.100", "180.0").
}).

#pos(p1_2B_2, {}, {}, {

% Option B

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(agent1).
agent(agent2).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "15.0", "12.0").
point(w1_e, "20.0", "12.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "15.0", "10.0").
point(w2_e, "20.0", "10.0").

corridor(corridor, wall1, wall2).

% agent two reaches the mid of the corridor first and 
% squeezes by the wall to pass agent 1
pos(agent1, 1, p1_1).
pos(agent1, 2, p1_2).
pos(agent1, 3, p1_3).
pos(agent1, 4, p1_4).
pos(agent1, 5, p1_5).
pos(agent1, 6, p1_6).
pos(agent1, 7, p1_7).

pos(agent2, 1, p2_1).
pos(agent2, 2, p2_2).
pos(agent2, 3, p2_3).
pos(agent2, 4, p2_4).
pos(agent2, 5, p2_5).
pos(agent2, 6, p2_6).
pos(agent2, 7, p2_7).

o_point(p1_1, "11.051", "11.080", "0.0").
o_point(p1_2, "12.051", "11.000", "0.0"). 
o_point(p1_3, "13.051", "11.000", "0.0").
o_point(p1_4, "14.051", "11.000", "0.0"). 
o_point(p1_5, "15.051", "11.000", "0.0").
o_point(p1_6, "16.051", "11.000", "0.0").
o_point(p1_7, "17.051", "11.000", "0.0").

o_point(p2_1, "22.551", "12.400", "220.0").
o_point(p2_2, "21.640", "11.800", "200.0").
o_point(p2_3, "19.553", "11.100", "180.0"). 
o_point(p2_4, "17.000", "11.100", "180.0").
o_point(p2_5, "16.000", "11.910", "180.0").
o_point(p2_6, "15.000", "11.910", "180.0").
o_point(p2_7, "14.000", "11.100", "180.0").
}).


#pos(p1_2C_1, {}, {}, {

% Option C

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
pos(agent1, 10, p1_10).
pos(agent1, 11, p1_11).
pos(agent1, 12, p1_12).

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


o_point(p1_1, "21.051", "11.000", "0.0").
o_point(p1_2, "23.051", "11.000", "0.0").
o_point(p1_3, "24.050", "11.000", "0.0"). 
o_point(p1_4, "26.501", "11.000", "0.0").
o_point(p1_5, "28.501", "11.000", "0.0").
o_point(p1_6, "30.051", "11.000", "0.0").
o_point(p1_7, "32.051", "11.000", "0.0").
o_point(p1_8, "34.051", "11.000", "0.0").
o_point(p1_9, "36.051", "11.000", "0.0").
o_point(p1_10, "38.051", "11.000", "0.0").
o_point(p1_11, "40.051", "11.000", "0.0").
o_point(p1_12, "42.051", "11.000", "0.0").

o_point(p2_1, "32.051", "11.100", "180.0").
o_point(p2_2, "31.051", "11.100", "180.0").
o_point(p2_3, "29.500", "11.100", "180.0"). 
o_point(p2_4, "30.501", "11.100", "45.0").
o_point(p2_5, "31.501", "12.100", "220.0").
o_point(p2_6, "31.051", "12.100", "220.0").
o_point(p2_7, "31.051", "12.100", "220.0").
o_point(p2_8, "29.051", "11.100", "180.0").
o_point(p2_9, "27.051", "11.100", "180.0").
o_point(p2_10, "25.051", "11.100", "180.0").
o_point(p2_11, "23.051", "11.100", "180.0").
o_point(p2_12, "21.051", "11.100", "180.0").
}).

#pos(p1_2C_2, {}, {}, {

% Option C

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(agent1).
agent(agent2).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "15.0", "12.0").
point(w1_e, "20.0", "12.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "15.0", "10.0").
point(w2_e, "20.0", "10.0").

corridor(corridor, wall1, wall2).

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

o_point(p1_1, "23.051", "11.100", "180.0").
o_point(p1_2, "21.051", "11.100", "180.0").
o_point(p1_3, "19.500", "11.100", "45.0"). 
o_point(p1_4, "21.501", "11.100", "45.0").
o_point(p1_5, "21.501", "12.100", "220.0").
o_point(p1_6, "21.051", "13.100", "220.0").
o_point(p1_7, "21.051", "12.100", "220.0").
o_point(p1_8, "19.051", "11.100", "180.0").
o_point(p1_9, "17.051", "11.100", "180.0").
o_point(p1_10, "15.051", "11.100", "180.0").

o_point(p2_1, "14.051", "11.000", "0.0").
o_point(p2_2, "15.051", "11.000", "0.0").
o_point(p2_3, "16.050", "11.000", "0.0"). 
o_point(p2_4, "17.501", "11.000", "0.0").
o_point(p2_5, "18.501", "11.000", "0.0").
o_point(p2_6, "19.051", "11.000", "0.0").
o_point(p2_7, "20.051", "11.000", "0.0").
o_point(p2_8, "21.051", "11.000", "0.0").
o_point(p2_9, "22.051", "11.000", "0.0").
o_point(p2_10, "23.051", "11.000", "0.0").


}).


% #####################################
% NARROW PASSAGE Scenario 3
% ####################################
% 
%  wall1
% +-----------------------------+
%        ^
%        |      
%        |
%        |
%        v
% +-----------------------------+
% wall 2
%
%

#pos(p1_3A_1, {}, {}, {

% Option A

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(agent1).
agent(agent2).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "15.0", "15.0").
point(w1_e, "30.0", "15.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "15.0", "10.0").
point(w2_e, "30.0", "10.0").

corridor(corridor, wall1, wall2).

% agent 2 steps in and reaches the mid of the corridor, 
% sees agent 1 in, walks out and waits before attempting again
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

o_point(p1_1, "20.051", "11.080", "0.0").
o_point(p1_2, "20.051", "11.000", "0.0"). 
o_point(p1_3, "20.051", "11.000", "0.0").
o_point(p1_4, "20.051", "11.000", "0.0"). 
o_point(p1_5, "20.051", "11.000", "0.0").
o_point(p1_6, "20.051", "11.000", "0.0").
o_point(p1_7, "21.051", "11.000", "0.0").
o_point(p1_8, "22.051", "11.000", "0.0").
o_point(p1_9, "23.051", "11.000", "0.0").
o_point(p1_10, "24.051", "11.000", "0.0").
o_point(p1_11, "25.051", "11.000", "0.0").
o_point(p1_12, "26.051", "11.000", "0.0").
o_point(p1_13, "27.051", "11.000", "0.0").
o_point(p1_14, "28.051", "11.000", "0.0").
o_point(p1_15, "29.051", "11.000", "0.0").
o_point(p1_16, "30.051", "11.000", "0.0").
o_point(p1_17, "31.051", "11.000", "0.0").
o_point(p1_18, "32.051", "11.000", "0.0").

o_point(p2_1, "32.551", "16.400", "220.0").
o_point(p2_2, "31.640", "15.000", "200.0").
o_point(p2_3, "29.553", "13.800", "180.0"). 
o_point(p2_4, "27.000", "13.000", "180.0").
o_point(p2_5, "29.000", "13.000", "180.0").
o_point(p2_6, "31.000", "14.000", "40.0").
o_point(p2_7, "32.000", "15.000", "40.0").
o_point(p2_8, "32.000", "16.000", "40.0").
o_point(p2_9, "32.000", "16.000", "40.0").
o_point(p2_10, "32.000", "16.000", "190.0").
o_point(p2_11, "32.000", "14.000", "190.0").
o_point(p2_12, "31.000", "12.800", "180.0").
o_point(p2_13, "29.000", "12.000", "180.0").
o_point(p2_14, "27.000", "12.000", "180.0").
o_point(p2_15, "25.000", "12.000", "180.0").
o_point(p2_16, "24.000", "12.000", "180.0").
o_point(p2_17, "22.000", "12.000", "180.0").
o_point(p2_18, "20.000", "12.000", "180.0").
}).

#pos(p1_3A_2, {}, {}, {

% Option A

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(agent1).
agent(agent2).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "15.0", "15.0").
point(w1_e, "30.0", "15.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "15.0", "10.0").
point(w2_e, "30.0", "10.0").

corridor(corridor, wall1, wall2).

% agent 2 steps in and reaches the mid of the corridor, 
% sees agent 1 in, walks out and waits before attempting again
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

o_point(p1_1, "25.051", "13.000", "0.0").
o_point(p1_2, "26.051", "13.000", "0.0").
o_point(p1_3, "27.051", "13.000", "0.0").
o_point(p1_4, "28.051", "13.000", "0.0").
o_point(p1_5, "29.051", "13.000", "0.0").
o_point(p1_6, "30.051", "13.000", "0.0").
o_point(p1_7, "31.051", "13.000", "0.0").
o_point(p1_8, "32.051", "13.000", "0.0").
o_point(p1_9, "33.051", "13.000", "0.0").

o_point(p2_1, "31.551", "15.400", "220.0").
o_point(p2_2, "29.640", "14.000", "200.0").
o_point(p2_3, "27.553", "13.800", "180.0"). 
o_point(p2_4, "29.000", "14.000", "0.0").
o_point(p2_5, "31.000", "15.000", "40.0").
o_point(p2_6, "31.000", "14.000", "220.0").
o_point(p2_7, "29.000", "13.000", "180.0").
o_point(p2_8, "27.000", "13.000", "180.0").
o_point(p2_9, "25.000", "13.000", "180.0").
}).


#pos(p1_3B_1, {}, {}, {

% Option B

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(agent1).
agent(agent2).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "15.0", "15.0").
point(w1_e, "30.0", "15.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "15.0", "10.0").
point(w2_e, "30.0", "10.0").

corridor(corridor, wall1, wall2).

% agent 2 gives way to agent 1
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

o_point(p1_1, "24.051", "11.000", "0.0").
o_point(p1_2, "26.051", "11.000", "0.0"). 
o_point(p1_3, "27.051", "11.000", "0.0").
o_point(p1_4, "28.051", "11.000", "0.0").
o_point(p1_5, "29.051", "11.000", "0.0").
o_point(p1_6, "30.051", "11.000", "0.0").
o_point(p1_7, "31.051", "11.000", "0.0").
o_point(p1_8, "32.051", "11.000", "0.0").
o_point(p1_9, "33.051", "11.000", "0.0").
o_point(p1_10, "34.051", "11.000", "0.0").

o_point(p2_1, "30.553", "11.000", "180.0"). 
o_point(p2_2, "29.000", "12.000", "180.0").
o_point(p2_3, "27.000", "13.000", "180.0").
o_point(p2_4, "25.000", "13.000", "140.0").
o_point(p2_5, "24.000", "13.000", "180.0").
o_point(p2_6, "23.000", "13.000", "180.0").
o_point(p2_7, "23.000", "13.000", "180.0").
o_point(p2_8, "23.000", "13.000", "180.0").
o_point(p2_9, "23.000", "13.000", "180.0").
o_point(p2_10, "23.000", "13.000", "180.0").
}).

#pos(p1_3B_2, {}, {}, {

% Option B

%%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
agent(agent1).
agent(agent2).

% wall 1 
wall(wall1, w1_s, w1_e).
point(w1_s, "15.0", "15.0").
point(w1_e, "30.0", "15.0").

% wall 2 
wall(wall2, w2_s, w2_e).
point(w2_s, "15.0", "10.0").
point(w2_e, "30.0", "10.0").

corridor(corridor, wall1, wall2).

% agent 2 gives way to agent 1
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

o_point(p1_1, "34.551", "12.400", "220.0").
o_point(p1_2, "32.640", "11.000", "200.0").
o_point(p1_3, "30.553", "11.000", "180.0"). 
o_point(p1_4, "29.000", "11.000", "180.0").
o_point(p1_5, "27.000", "11.000", "180.0").
o_point(p1_6, "25.000", "11.000", "180.0").
o_point(p1_7, "23.000", "11.000", "180.0").
o_point(p1_8, "21.000", "11.000", "180.0").
o_point(p1_9, "19.000", "11.000", "180.0").
o_point(p1_10, "17.000", "11.000", "180.0").
o_point(p1_11, "15.000", "11.000", "180.0").
o_point(p1_12, "13.000", "11.000", "180.0").

o_point(p2_1, "20.051", "11.080", "0.0").
o_point(p2_2, "22.051", "11.000", "0.0"). 
o_point(p2_3, "24.051", "11.000", "0.0").
o_point(p2_4, "26.051", "12.000", "40.0"). 
o_point(p2_5, "27.051", "13.000", "40.0").
o_point(p2_6, "28.051", "13.000", "0.0").
o_point(p2_7, "29.051", "13.000", "0.0").
o_point(p2_8, "30.051", "13.000", "0.0").
o_point(p2_9, "31.051", "13.000", "0.0").
o_point(p2_10, "32.051", "13.000", "0.0").
o_point(p2_11, "33.051", "13.000", "0.0").
o_point(p2_12, "34.051", "13.000", "0.0").

}).



% #####################################
% NARROW PASSAGE Scenario 4
% ####################################
% 
%  wall1
% +-----------------------------+
%        ^
%        |      
%        |
%        |
%        v
% +-----------------------------+
% wall 2
%
%

 
% #pos(p1_4A_1, {}, {}, {

% %%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% agent(agent1).
% agent(agent2).

% % wall 1 
% wall(wall1, w1_s, w1_e).
% point(w1_s, "10.0", "20.0").
% point(w1_e, "60.0", "20.0").

% % wall 2 
% wall(wall2, w2_s, w2_e).
% point(w2_s, "10.0", "10.0").
% point(w2_e, "60.0", "10.0").

% corridor(corridor, wall1, wall2).

% % Agent 1 overtakes agent 2 on the right, both moving East (<--)
% pos(agent1, 1, p1_1).
% pos(agent1, 2, p1_2).
% pos(agent1, 3, p1_3).
% pos(agent1, 4, p1_4).
% pos(agent1, 5, p1_5).
% pos(agent1, 6, p1_6).
% pos(agent1, 7, p1_7).
% pos(agent1, 8, p1_8).
% pos(agent1, 9, p1_9).
% pos(agent1, 10, p1_10).

% pos(agent2, 1, p2_1).
% pos(agent2, 2, p2_2).
% pos(agent2, 3, p2_3).
% pos(agent2, 4, p2_4).
% pos(agent2, 5, p2_5).
% pos(agent2, 6, p2_6).
% pos(agent2, 7, p2_7).
% pos(agent2, 8, p2_8).
% pos(agent2, 9, p2_9).
% pos(agent2, 10, p2_10).

% o_point(p1_1, "40.551", "12.880", "180.0").
% o_point(p1_2, "39.551", "12.800", "180.0"). 
% o_point(p1_3, "38.551", "12.800", "180.0").
% o_point(p1_4, "37.551", "12.800", "180.0"). 
% o_point(p1_5, "36.551", "12.800", "180.0").
% o_point(p1_6, "35.551", "12.800", "180.0").
% o_point(p1_7, "34.551", "12.800", "180.0").
% o_point(p1_8, "33.551", "12.800", "180.0").
% o_point(p1_9, "32.551", "12.800", "180.0").
% o_point(p1_10, "31.551", "12.800", "180.0").

% o_point(p2_1, "42.551", "12.800", "180.0").
% o_point(p2_2, "40.760", "12.800", "180.0").
% o_point(p2_3, "39.763", "13.150", "170.0"). 
% o_point(p2_4, "37.551", "14.000", "180.0").
% o_point(p2_5, "35.551", "14.000", "180.0").
% o_point(p2_6, "33.551", "14.000", "180.0").
% o_point(p2_7, "32.551", "13.100", "190.0").
% o_point(p2_8, "30.551", "12.800", "180.0").
% o_point(p2_9, "28.551", "12.800", "180.0").
% o_point(p2_10, "26.551", "12.800", "180.0").

% }).

% #pos(p1_4B_1, {}, {}, {

% %%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% agent(agent1).
% agent(agent2).

% % wall 1 
% wall(wall1, w1_s, w1_e).
% point(w1_s, "10.0", "20.0").
% point(w1_e, "60.0", "20.0").

% % wall 2 
% wall(wall2, w2_s, w2_e).
% point(w2_s, "10.0", "10.0").
% point(w2_e, "60.0", "10.0").

% corridor(corridor, wall1, wall2).

% % agent 2 (faster) slows down and stays behind agent 1 (respecting ps)
% pos(agent1, 1, p1_1).
% pos(agent1, 2, p1_2).
% pos(agent1, 3, p1_3).
% pos(agent1, 4, p1_4).
% pos(agent1, 5, p1_5).
% pos(agent1, 6, p1_6).
% pos(agent1, 7, p1_7).
% pos(agent1, 8, p1_8).
% pos(agent1, 9, p1_9).
% pos(agent1, 10, p1_10).

% pos(agent2, 1, p2_1).
% pos(agent2, 2, p2_2).
% pos(agent2, 3, p2_3).
% pos(agent2, 4, p2_4).
% pos(agent2, 5, p2_5).
% pos(agent2, 6, p2_6).
% pos(agent2, 7, p2_7).
% pos(agent2, 8, p2_8).
% pos(agent2, 9, p2_9).
% pos(agent2, 10, p2_10).

% o_point(p1_1, "40.551", "12.880", "180.0").
% o_point(p1_2, "39.551", "12.800", "180.0"). 
% o_point(p1_3, "38.551", "12.800", "180.0").
% o_point(p1_4, "37.551", "12.800", "180.0"). 
% o_point(p1_5, "36.551", "12.800", "180.0").
% o_point(p1_6, "35.551", "12.800", "180.0").
% o_point(p1_7, "34.551", "12.800", "180.0").
% o_point(p1_8, "33.551", "12.800", "180.0").
% o_point(p1_9, "32.551", "12.800", "180.0").
% o_point(p1_10, "31.551", "12.800", "180.0").

% o_point(p2_1, "43.551", "12.800", "180.0").
% o_point(p2_2, "41.640", "12.800", "180.0").
% o_point(p2_3, "40.553", "12.800", "180.0"). 
% o_point(p2_4, "39.000", "12.800", "180.0").
% o_point(p2_5, "38.000", "12.800", "180.0").
% o_point(p2_6, "37.000", "12.800", "180.0").
% o_point(p2_7, "36.000", "12.800", "180.0").
% o_point(p2_8, "35.000", "12.800", "180.0").
% o_point(p2_9, "34.000", "12.800", "180.0").
% o_point(p2_10, "33.000", "12.800", "180.0").

% }).


% #####################################
% NARROW PASSAGE Scenario 5
% ####################################
% 
%  wall1
% +-----------------------------+
%            O-> O->        <--@ 
% +-----------------------------+
% wall 2
%
%

% #pos(p1_5A_1, {}, {}, {

% % Option A

% %%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% agent(agent1).
% agent(agent2).
% agent(agent3).

% % wall 1 
% wall(wall1, w1_s, w1_e).
% point(w1_s, "15.0", "12.0").
% point(w1_e, "30.0", "12.0").

% % wall 2 
% wall(wall2, w2_s, w2_e).
% point(w2_s, "15.0", "10.0").
% point(w2_e, "30.0", "10.0").

% corridor(corridor, wall1, wall2).

% % agent 2 reaches the middle and goes all the way
% % back. agent 3 follows behind agent 2. 
% pos(agent1, 1, p1_1).
% pos(agent1, 2, p1_2).
% pos(agent1, 3, p1_3).
% pos(agent1, 4, p1_4).
% pos(agent1, 5, p1_5).
% pos(agent1, 6, p1_6).
% pos(agent1, 7, p1_7).
% pos(agent1, 8, p1_8).
% pos(agent1, 9, p1_9).
% pos(agent1, 10, p1_10).
% pos(agent1, 11, p1_11).
% pos(agent1, 12, p1_12).

% pos(agent2, 1, p2_1).
% pos(agent2, 2, p2_2).
% pos(agent2, 3, p2_3).
% pos(agent2, 4, p2_4).
% pos(agent2, 5, p2_5).
% pos(agent2, 6, p2_6).
% pos(agent2, 7, p2_7).
% pos(agent2, 8, p2_8).
% pos(agent2, 9, p2_9).
% pos(agent2, 10, p2_10).
% pos(agent2, 11, p2_11).
% pos(agent2, 12, p2_12).

% pos(agent3, 1, p3_1).
% pos(agent3, 2, p3_2).
% pos(agent3, 3, p3_3).
% pos(agent3, 4, p3_4).
% pos(agent3, 5, p3_5).
% pos(agent3, 6, p3_6).
% pos(agent3, 7, p3_7).
% pos(agent3, 8, p3_8).
% pos(agent3, 9, p3_9).
% pos(agent3, 10, p3_10).
% pos(agent3, 11, p3_11).
% pos(agent3, 12, p3_12).
%
% o_point(p1_1, "32.051", "11.000", "180.0").
% o_point(p1_2, "31.051", "11.000", "180.0").
% o_point(p1_3, "30.500", "11.000", "180.0"). 
% o_point(p1_4, "29.501", "11.000", "180.0").
% o_point(p1_5, "27.501", "11.000", "180.0").
% o_point(p1_6, "25.051", "11.000", "180.0").
% o_point(p1_7, "23.051", "11.000", "180.0").
% o_point(p1_8, "21.051", "11.000", "180.0").
% o_point(p1_9, "19.051", "11.000", "180.0").
% o_point(p1_10, "17.051", "11.000", "180.0").
% o_point(p1_11, "15.051", "11.000", "180.0").
% o_point(p1_12, "13.051", "11.000", "180.0").

% o_point(p2_1, "20.051", "11.100", "0.0").
% o_point(p2_2, "22.051", "11.100", "0.0").
% o_point(p2_3, "24.050", "11.100", "0.0"). 
% o_point(p2_4, "26.501", "11.100", "0.0").
% o_point(p2_5, "24.501", "11.100", "180.0").
% o_point(p2_6, "22.051", "11.100", "180.0").
% o_point(p2_7, "20.051", "11.100", "180.0").
% o_point(p2_8, "18.051", "11.100", "180.0").
% o_point(p2_9, "16.051", "11.100", "140.0").
% o_point(p2_10, "14.051", "12.000", "290.0").
% o_point(p2_11, "16.051", "11.100", "0.0").
% o_point(p2_12, "18.051", "11.100", "0.0").

% o_point(p3_1, "18.051", "11.100", "0.0").
% o_point(p3_2, "20.051", "11.100", "0.0").
% o_point(p3_3, "22.050", "11.100", "0.0"). 
% o_point(p3_4, "24.501", "11.100", "0.0").
% o_point(p3_5, "22.501", "11.100", "180.0").
% o_point(p3_6, "20.051", "11.100", "180.0").
% o_point(p3_7, "18.051", "11.100", "180.0").
% o_point(p3_8, "16.051", "11.100", "180.0").
% o_point(p3_9, "14.051", "11.100", "140.0").
% o_point(p3_10, "12.051", "12.000", "290.0").
% o_point(p3_11, "14.051", "11.100", "0.0").
% o_point(p3_12, "16.051", "11.100", "0.0").

% }).


% #pos(p1_5B_1, {}, {}, {

% % Option B

% %%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% agent(agent1).
% agent(agent2).
% agent(agent3).

% % wall 1 
% wall(wall1, w1_s, w1_e).
% point(w1_s, "15.0", "12.0").
% point(w1_e, "30.0", "12.0").

% % wall 2 
% wall(wall2, w2_s, w2_e).
% point(w2_s, "15.0", "10.0").
% point(w2_e, "30.0", "10.0").

% corridor(corridor, wall1, wall2).

% % agent two reaches the mid of the corridor first and 
% % squeezes by the wall to pass agent 1
% pos(agent1, 1, p1_1).
% pos(agent1, 2, p1_2).
% pos(agent1, 3, p1_3).
% pos(agent1, 4, p1_4).
% pos(agent1, 5, p1_5).
% pos(agent1, 6, p1_6).
% pos(agent1, 7, p1_7).
% pos(agent1, 8, p1_8).
% pos(agent1, 9, p1_9).
% pos(agent1, 10, p1_10).
% pos(agent1, 11, p1_11).
% pos(agent1, 12, p1_12).
% pos(agent1, 13, p1_13).
% pos(agent1, 14, p1_14).
% pos(agent1, 15, p1_15).
% pos(agent1, 16, p1_16).
% pos(agent1, 17, p1_17).
% pos(agent1, 18, p1_18).

% pos(agent2, 1, p2_1).
% pos(agent2, 2, p2_2).
% pos(agent2, 3, p2_3).
% pos(agent2, 4, p2_4).
% pos(agent2, 5, p2_5).
% pos(agent2, 6, p2_6).
% pos(agent2, 7, p2_7).
% pos(agent2, 8, p2_8).
% pos(agent2, 9, p2_9).
% pos(agent2, 10, p2_10).
% pos(agent2, 11, p2_11).
% pos(agent2, 12, p2_12).
% pos(agent2, 13, p2_13).
% pos(agent2, 14, p2_14).
% pos(agent2, 15, p2_15).
% pos(agent2, 16, p2_16).
% pos(agent2, 17, p2_17).
% pos(agent2, 18, p2_18).

% pos(agent3, 1, p3_1).
% pos(agent3, 2, p3_2).
% pos(agent3, 3, p3_3).
% pos(agent3, 4, p3_4).
% pos(agent3, 5, p3_5).
% pos(agent3, 6, p3_6).
% pos(agent3, 7, p3_7).
% pos(agent3, 8, p3_8).
% pos(agent3, 9, p3_9).
% pos(agent3, 10, p3_10).
% pos(agent3, 11, p3_11).
% pos(agent3, 12, p3_12).
% pos(agent3, 13, p3_13).
% pos(agent3, 14, p3_14).
% pos(agent3, 15, p3_15).
% pos(agent3, 16, p3_16).
% pos(agent3, 17, p3_17).
% pos(agent3, 18, p3_18).

% o_point(p1_1, "20.051", "11.080", "0.0").
% o_point(p1_2, "20.051", "11.000", "0.0"). 
% o_point(p1_3, "20.051", "11.000", "0.0").
% o_point(p1_4, "20.051", "11.000", "0.0"). 
% o_point(p1_5, "20.051", "11.000", "0.0").
% o_point(p1_6, "20.051", "11.000", "0.0").
% o_point(p1_7, "21.051", "11.000", "0.0").
% o_point(p1_8, "22.051", "11.000", "0.0").
% o_point(p1_9, "23.051", "11.000", "0.0").
% o_point(p1_10, "24.051", "11.000", "0.0").
% o_point(p1_11, "25.051", "11.000", "0.0").
% o_point(p1_12, "26.051", "11.000", "0.0").
% o_point(p1_13, "27.051", "11.000", "0.0").
% o_point(p1_14, "28.051", "11.000", "0.0").
% o_point(p1_15, "29.051", "11.000", "0.0").
% o_point(p1_16, "30.051", "11.000", "0.0").
% o_point(p1_17, "31.051", "11.000", "0.0").
% o_point(p1_18, "32.051", "11.000", "0.0").

% o_point(p2_1, "32.551", "12.400", "220.0").
% o_point(p2_2, "31.640", "11.800", "200.0").
% o_point(p2_3, "29.553", "11.100", "180.0"). 
% o_point(p2_4, "27.000", "11.100", "180.0").
% o_point(p2_5, "25.000", "11.100", "180.0").
% o_point(p2_6, "23.000", "11.800", "180.0").
% o_point(p2_7, "21.000", "11.910", "180.0").
% o_point(p2_8, "19.000", "11.100", "180.0").
% o_point(p2_9, "17.000", "11.100", "180.0").
% o_point(p2_10, "15.000", "11.100", "190.0").
% o_point(p2_11, "13.000", "11.100", "190.0").
% o_point(p2_12, "13.000", "11.100", "190.0").
% o_point(p2_13, "13.000", "11.100", "190.0").
% o_point(p2_14, "11.000", "11.800", "200.0").
% o_point(p2_15, "09.000", "11.100", "180.0").
% o_point(p2_16, "07.000", "11.100", "180.0").
% o_point(p2_17, "05.000", "11.100", "180.0").
% o_point(p2_18, "03.000", "11.100", "180.0").
% }).

% o_point(p3_1, "34.551", "12.400", "220.0").
% o_point(p3_2, "33.640", "11.800", "200.0").
% o_point(p3_3, "31.553", "11.100", "180.0"). 
% o_point(p3_4, "29.000", "11.100", "180.0").
% o_point(p3_5, "27.000", "11.100", "180.0").
% o_point(p3_6, "25.000", "11.800", "180.0").
% o_point(p3_7, "23.000", "11.000", "180.0").
% o_point(p3_8, "21.000", "11.910", "180.0").
% o_point(p3_9, "19.000", "11.100", "180.0").
% o_point(p3_10, "17.000", "11.100", "190.0").
% o_point(p3_11, "15.000", "11.100", "190.0").
% o_point(p3_12, "15.000", "11.100", "190.0").
% o_point(p3_13, "15.000", "11.100", "190.0").
% o_point(p3_14, "13.000", "11.800", "200.0").
% o_point(p3_15, "11.000", "11.100", "180.0").
% o_point(p3_16, "9.000", "11.100", "180.0").
% o_point(p3_17, "7.000", "11.100", "180.0").
% o_point(p3_18, "5.000", "11.100", "180.0").
% }).

% #pos(p1_5B_2, {}, {}, {

% % Option B

% %%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% agent(agent1).
% agent(agent2).
% agent(agent3).

% % wall 1 
% wall(wall1, w1_s, w1_e).
% point(w1_s, "15.0", "12.0").
% point(w1_e, "30.0", "12.0").

% % wall 2 
% wall(wall2, w2_s, w2_e).
% point(w2_s, "15.0", "10.0").
% point(w2_e, "30.0", "10.0").

% corridor(corridor, wall1, wall2).

% % agent two reaches the mid of the corridor first and 
% % squeezes by the wall to pass agent 1
% pos(agent1, 1, p1_1).
% pos(agent1, 2, p1_2).
% pos(agent1, 3, p1_3).
% pos(agent1, 4, p1_4).
% pos(agent1, 5, p1_5).
% pos(agent1, 6, p1_6).
% pos(agent1, 7, p1_7).
% pos(agent1, 8, p1_8).
% pos(agent1, 9, p1_9).
% pos(agent1, 10, p1_10).
% pos(agent1, 11, p1_11).
% pos(agent1, 12, p1_12).
% pos(agent1, 13, p1_13).
% pos(agent1, 14, p1_14).
% pos(agent1, 15, p1_15).
% pos(agent1, 16, p1_16).
% pos(agent1, 17, p1_17).
% pos(agent1, 18, p1_18).

% pos(agent2, 1, p2_1).
% pos(agent2, 2, p2_2).
% pos(agent2, 3, p2_3).
% pos(agent2, 4, p2_4).
% pos(agent2, 5, p2_5).
% pos(agent2, 6, p2_6).
% pos(agent2, 7, p2_7).
% pos(agent2, 8, p2_8).
% pos(agent2, 9, p2_9).
% pos(agent2, 10, p2_10).
% pos(agent2, 11, p2_11).
% pos(agent2, 12, p2_12).
% pos(agent2, 13, p2_13).
% pos(agent2, 14, p2_14).
% pos(agent2, 15, p2_15).
% pos(agent2, 16, p2_16).
% pos(agent2, 17, p2_17).
% pos(agent2, 18, p2_18).

% pos(agent3, 1, p3_1).
% pos(agent3, 2, p3_2).
% pos(agent3, 3, p3_3).
% pos(agent3, 4, p3_4).
% pos(agent3, 5, p3_5).
% pos(agent3, 6, p3_6).
% pos(agent3, 7, p3_7).
% pos(agent3, 8, p3_8).
% pos(agent3, 9, p3_9).
% pos(agent3, 10, p3_10).
% pos(agent3, 11, p3_11).
% pos(agent3, 12, p3_12).
% pos(agent3, 13, p3_13).
% pos(agent3, 14, p3_14).
% pos(agent3, 15, p3_15).
% pos(agent3, 16, p3_16).
% pos(agent3, 17, p3_17).
% pos(agent3, 18, p3_18).

% o_point(p1_1, "20.051", "11.080", "0.0").
% o_point(p1_2, "20.051", "11.000", "0.0"). 
% o_point(p1_3, "20.051", "11.000", "0.0").
% o_point(p1_4, "20.051", "11.000", "0.0"). 
% o_point(p1_5, "20.051", "11.000", "0.0").
% o_point(p1_6, "20.051", "11.000", "0.0").
% o_point(p1_7, "21.051", "11.000", "0.0").
% o_point(p1_8, "22.051", "11.000", "0.0").
% o_point(p1_9, "23.051", "11.000", "0.0").
% o_point(p1_10, "24.051", "11.000", "0.0").
% o_point(p1_11, "25.051", "11.000", "0.0").
% o_point(p1_12, "26.051", "11.000", "0.0").
% o_point(p1_13, "27.051", "11.000", "0.0").
% o_point(p1_14, "28.051", "11.000", "0.0").
% o_point(p1_15, "29.051", "11.000", "0.0").
% o_point(p1_16, "30.051", "11.000", "0.0").
% o_point(p1_17, "31.051", "11.000", "0.0").
% o_point(p1_18, "32.051", "11.000", "0.0").

% o_point(p2_1, "32.551", "12.400", "220.0").
% o_point(p2_2, "31.640", "11.800", "200.0").
% o_point(p2_3, "29.553", "11.100", "180.0"). 
% o_point(p2_4, "27.000", "11.100", "180.0").
% o_point(p2_5, "25.000", "11.100", "180.0").
% o_point(p2_6, "23.000", "11.800", "180.0").
% o_point(p2_7, "21.000", "11.910", "180.0").
% o_point(p2_8, "19.000", "11.100", "180.0").
% o_point(p2_9, "17.000", "11.100", "180.0").
% o_point(p2_10, "15.000", "11.100", "190.0").
% o_point(p2_11, "13.000", "11.100", "190.0").
% o_point(p2_12, "13.000", "11.100", "190.0").
% o_point(p2_13, "13.000", "11.100", "190.0").
% o_point(p2_14, "11.000", "11.800", "200.0").
% o_point(p2_15, "09.000", "11.100", "180.0").
% o_point(p2_16, "07.000", "11.100", "180.0").
% o_point(p2_17, "05.000", "11.100", "180.0").
% o_point(p2_18, "03.000", "11.100", "180.0").
% }).

% o_point(p3_1, "37.551", "12.400", "220.0").
% o_point(p3_2, "36.640", "11.800", "200.0").
% o_point(p3_3, "34.553", "11.050", "180.0"). 
% o_point(p3_4, "32.000", "11.150", "180.0").
% o_point(p3_5, "30.000", "11.150", "180.0").
% o_point(p3_6, "28.000", "11.650", "180.0").
% o_point(p3_7, "26.000", "11.050", "180.0").
% o_point(p3_8, "24.000", "11.050", "180.0").
% o_point(p3_9, "22.800", "11.910", "180.0").
% o_point(p3_10, "20.000", "11.050", "190.0").
% o_point(p3_11, "18.000", "11.050", "190.0").
% o_point(p3_12, "18.000", "11.050", "190.0").
% o_point(p3_13, "18.000", "11.050", "190.0").
% o_point(p3_14, "16.000", "11.050", "200.0").
% o_point(p3_15, "14.000", "11.050", "180.0").
% o_point(p3_16, "12.000", "11.050", "180.0").
% o_point(p3_17, "10.000", "11.050", "180.0").
% o_point(p3_18, "8.000", "11.050", "180.0").
% }).

% #pos(p1_5C_1, {}, {}, {

% % Option C

% %%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% agent(agent1).
% agent(agent2).
% agent(agent3).

% % wall 1 
% wall(wall1, w1_s, w1_e).
% point(w1_s, "15.0", "12.0").
% point(w1_e, "30.0", "12.0").

% % wall 2 
% wall(wall2, w2_s, w2_e).
% point(w2_s, "15.0", "10.0").
% point(w2_e, "30.0", "10.0").

% corridor(corridor, wall1, wall2).

% % agent 1 passes the mid and forces agent 2 (just entering)
% % to step out and wait 
% pos(agent1, 1, p1_1).
% pos(agent1, 2, p1_2).
% pos(agent1, 3, p1_3).
% pos(agent1, 4, p1_4).
% pos(agent1, 5, p1_5).
% pos(agent1, 6, p1_6).
% pos(agent1, 7, p1_7).
% pos(agent1, 8, p1_8).
% pos(agent1, 9, p1_9).
% pos(agent1, 10, p1_10).
% pos(agent1, 11, p1_11).
% pos(agent1, 12, p1_12).

% pos(agent2, 1, p2_1).
% pos(agent2, 2, p2_2).
% pos(agent2, 3, p2_3).
% pos(agent2, 4, p2_4).
% pos(agent2, 5, p2_5).
% pos(agent2, 6, p2_6).
% pos(agent2, 7, p2_7).
% pos(agent2, 8, p2_8).
% pos(agent2, 9, p2_9).
% pos(agent2, 10, p2_10).
% pos(agent2, 11, p2_11).
% pos(agent2, 12, p2_12).
% pos(agent2, 13, p2_13).

% pos(agent3, 1, p3_1).
% pos(agent3, 2, p3_2).
% pos(agent3, 3, p3_3).
% pos(agent3, 4, p3_4).
% pos(agent3, 5, p3_5).
% pos(agent3, 6, p3_6).
% pos(agent3, 7, p3_7).
% pos(agent3, 8, p3_8).
% pos(agent3, 9, p3_9).
% pos(agent3, 10, p3_10).
% pos(agent3, 11, p3_11).
% pos(agent3, 12, p3_12).

% o_point(p1_1, "21.051", "11.000", "0.0").
% o_point(p1_2, "23.051", "11.000", "0.0").
% o_point(p1_3, "24.050", "11.000", "0.0"). 
% o_point(p1_4, "26.501", "11.000", "0.0").
% o_point(p1_5, "28.501", "11.000", "0.0").
% o_point(p1_6, "30.051", "11.000", "0.0").
% o_point(p1_7, "32.051", "11.000", "0.0").
% o_point(p1_8, "34.051", "11.000", "0.0").
% o_point(p1_9, "36.051", "11.000", "0.0").
% o_point(p1_10, "38.051", "11.000", "0.0").
% o_point(p1_11, "40.051", "11.000", "0.0").
% o_point(p1_12, "42.051", "11.000", "0.0").

% o_point(p2_1, "32.051", "11.100", "180.0").
% o_point(p2_2, "31.051", "11.100", "180.0").
% o_point(p2_3, "29.500", "11.100", "180.0"). 
% o_point(p2_4, "30.501", "11.100", "45.0").
% o_point(p2_5, "31.501", "12.100", "220.0").
% o_point(p2_6, "31.051", "12.100", "220.0").
% o_point(p2_7, "31.051", "12.100", "220.0").
% o_point(p2_8, "31.051", "12.100", "220.0").
% o_point(p2_9, "29.051", "11.100", "180.0").
% o_point(p2_10, "27.051", "11.100", "180.0").
% o_point(p2_11, "25.051", "11.100", "180.0").
% o_point(p2_12, "23.051", "11.100", "180.0").
% o_point(p2_13, "21.051", "11.100", "180.0").
%
% o_point(p3_1, "19.051", "11.000", "0.0").
% o_point(p3_2, "21.051", "11.000", "0.0").
% o_point(p3_3, "22.050", "11.000", "0.0"). 
% o_point(p3_4, "24.501", "11.000", "0.0").
% o_point(p3_5, "26.501", "11.000", "0.0").
% o_point(p3_6, "28.051", "11.000", "0.0").
% o_point(p3_7, "30.051", "11.000", "0.0").
% o_point(p3_8, "32.051", "11.000", "0.0").
% o_point(p3_9, "34.051", "11.000", "0.0").
% o_point(p3_10, "36.051", "11.000", "0.0").
% o_point(p3_11, "38.051", "11.000", "0.0").
% o_point(p3_12, "40.051", "11.000", "0.0").


% }).

% #pos(p1_5C_2, {}, {}, {

% % Option C

% %%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% agent(agent1).
% agent(agent2).
% agent(agent3).

% % wall 1 
% wall(wall1, w1_s, w1_e).
% point(w1_s, "15.0", "12.0").
% point(w1_e, "20.0", "12.0").

% % wall 2 
% wall(wall2, w2_s, w2_e).
% point(w2_s, "15.0", "10.0").
% point(w2_e, "20.0", "10.0").

% corridor(corridor, wall1, wall2).

% % agent 2 passes the mid and forces agent 1 (just entering)
% % to step out and wait 
% pos(agent1, 1, p1_1).
% pos(agent1, 2, p1_2).
% pos(agent1, 3, p1_3).
% pos(agent1, 4, p1_4).
% pos(agent1, 5, p1_5).
% pos(agent1, 6, p1_6).
% pos(agent1, 7, p1_7).
% pos(agent1, 8, p1_8).
% pos(agent1, 9, p1_9).
% pos(agent1, 10, p1_10).

% pos(agent2, 1, p2_1).
% pos(agent2, 2, p2_2).
% pos(agent2, 3, p2_3).
% pos(agent2, 4, p2_4).
% pos(agent2, 5, p2_5).
% pos(agent2, 6, p2_6).
% pos(agent2, 7, p2_7).
% pos(agent2, 8, p2_8).
% pos(agent2, 9, p2_9).
% pos(agent2, 10, p2_10).

% pos(agent3, 1, p3_1).
% pos(agent3, 2, p3_2).
% pos(agent3, 3, p3_3).
% pos(agent3, 4, p3_4).
% pos(agent3, 5, p3_5).
% pos(agent3, 6, p3_6).
% pos(agent3, 7, p3_7).
% pos(agent3, 8, p3_8).
% pos(agent3, 9, p3_9).
% pos(agent3, 10, p3_10).


% o_point(p1_1, "23.051", "11.100", "180.0").
% o_point(p1_2, "21.051", "11.100", "180.0").
% o_point(p1_3, "19.500", "11.100", "45.0"). 
% o_point(p1_4, "21.501", "11.100", "45.0").
% o_point(p1_5, "21.501", "12.100", "220.0").
% o_point(p1_6, "21.051", "13.100", "220.0").
% o_point(p1_7, "21.051", "13.100", "220.0").
% o_point(p1_8, "21.051", "13.100", "220.0").
% o_point(p1_9, "21.051", "12.100", "200.0").
% o_point(p1_10, "19.051", "11.100", "180.0").

% o_point(p2_1, "14.051", "11.000", "0.0").
% o_point(p2_2, "15.051", "11.000", "0.0").
% o_point(p2_3, "16.050", "11.000", "0.0"). 
% o_point(p2_4, "17.501", "11.000", "0.0").
% o_point(p2_5, "18.501", "11.000", "0.0").
% o_point(p2_6, "19.051", "11.000", "0.0").
% o_point(p2_7, "20.051", "11.000", "0.0").
% o_point(p2_8, "21.051", "11.000", "0.0").
% o_point(p2_9, "22.051", "11.000", "0.0").
% o_point(p2_10, "23.051", "11.000", "0.0").

% o_point(p3_1, "12.051", "11.000", "0.0").
% o_point(p3_2, "13.051", "11.000", "0.0").
% o_point(p3_3, "14.050", "11.000", "0.0"). 
% o_point(p3_4, "15.501", "11.000", "0.0").
% o_point(p3_5, "16.501", "11.000", "0.0").
% o_point(p3_6, "17.051", "11.000", "0.0").
% o_point(p3_7, "18.051", "11.000", "0.0").
% o_point(p3_8, "19.051", "11.000", "0.0").
% o_point(p3_9, "20.051", "11.000", "0.0").
% o_point(p3_10, "21.051", "11.000", "0.0").



% }).


% #####################################
% NARROW PASSAGE Scenario 6
% ####################################
% 
%  wall1
% +-----------------------------+
%
%         talking pair
%
% +-----------------------------+
% wall 2
%
%

% #pos(p1_6A_1, {}, {}, {

% % Option A

% %%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% agent(agent1).
% agent(agent2).
% agent(agent3).

% % wall 1 
% wall(wall1, w1_s, w1_e).
% point(w1_s, "15.0", "15.0").
% point(w1_e, "20.0", "15.0").

% % wall 2 
% wall(wall2, w2_s, w2_e).
% point(w2_s, "15.0", "10.0").
% point(w2_e, "20.0", "10.0").

% corridor(corridor, wall1, wall2).
%
% talking(agent1, agent2, 1).
% talking(agent1, agent2, 2).
% talking(agent1, agent2, 3).
% talking(agent1, agent2, 4).
% talking(agent1, agent2, 5).
% talking(agent1, agent2, 6).
%
%
% % agent 2 passes the mid and forces agent 1 (just entering)
% % to step out and wait 
% pos(agent1, 1, p1_1).
% pos(agent1, 2, p1_2).
% pos(agent1, 3, p1_3).
% pos(agent1, 4, p1_4).
% pos(agent1, 5, p1_5).
% pos(agent1, 6, p1_6).
% pos(agent1, 7, p1_7).
% pos(agent1, 8, p1_8).
% pos(agent1, 9, p1_9).
% pos(agent1, 10, p1_10).

% pos(agent2, 1, p2_1).
% pos(agent2, 2, p2_2).
% pos(agent2, 3, p2_3).
% pos(agent2, 4, p2_4).
% pos(agent2, 5, p2_5).
% pos(agent2, 6, p2_6).
% pos(agent2, 7, p2_7).
% pos(agent2, 8, p2_8).
% pos(agent2, 9, p2_9).
% pos(agent2, 10, p2_10).

% pos(agent3, 1, p3_1).
% pos(agent3, 2, p3_2).
% pos(agent3, 3, p3_3).
% pos(agent3, 4, p3_4).
% pos(agent3, 5, p3_5).
% pos(agent3, 6, p3_6).
% pos(agent3, 7, p3_7).
% pos(agent3, 8, p3_8).
% pos(agent3, 9, p3_9).
% pos(agent3, 10, p3_10).


% o_point(p1_1, "23.051", "10.900", "90.0").
% o_point(p1_2, "23.051", "10.900", "90.0").
% o_point(p1_3, "23.051", "10.900", "90.0"). 
% o_point(p1_4, "23.051", "10.900", "90.0").
% o_point(p1_5, "23.051", "10.900", "90.0").
% o_point(p1_6, "23.051", "10.900", "90.0").
% o_point(p1_7, "22.051", "11.100", "180.0").
% o_point(p1_8, "21.051", "11.100", "180.0").
% o_point(p1_9, "20.051", "11.100", "180.0").
% o_point(p1_10, "19.051", "11.100", "180.0").

% o_point(p2_1, "23.051", "13.900", "270.0").
% o_point(p2_2, "23.051", "13.900", "270.0").
% o_point(p2_3, "23.051", "13.900", "270.0"). 
% o_point(p2_4, "23.051", "13.900", "270.0").
% o_point(p2_5, "23.051", "13.900", "270.0").
% o_point(p2_6, "23.051", "13.900", "270.0").
% o_point(p2_7, "24.051", "13.000", "0.0").
% o_point(p2_8, "25.051", "13.000", "0.0").
% o_point(p2_9, "26.051", "13.000", "0.0").
% o_point(p2_10, "27.051", "13.000", "0.0").

% o_point(p3_1, "20.051", "12.000", "0.0").
% o_point(p3_2, "21.051", "12.000", "0.0").
% o_point(p3_3, "21.051", "12.000", "0.0"). 
% o_point(p3_4, "21.051", "12.000", "0.0").
% o_point(p3_5, "21.051", "12.000", "0.0").
% o_point(p3_6, "21.051", "12.000", "0.0").
% o_point(p3_7, "22.051", "12.000", "0.0").
% o_point(p3_8, "23.051", "12.000", "0.0").
% o_point(p3_9, "24.051", "12.000", "0.0").
% o_point(p3_10, "25.051", "12.000", "0.0").

% }).

% #pos(p1_6A_2, {}, {}, {

% % Option A

% %%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% agent(agent1).
% agent(agent2).
% agent(agent3).

% % wall 1 
% wall(wall1, w1_s, w1_e).
% point(w1_s, "15.0", "15.0").
% point(w1_e, "20.0", "15.0").

% % wall 2 
% wall(wall2, w2_s, w2_e).
% point(w2_s, "15.0", "10.0").
% point(w2_e, "20.0", "10.0").

% corridor(corridor, wall1, wall2).
%
% talking(agent1, agent2, 1).
% talking(agent1, agent2, 2).
% talking(agent1, agent2, 3).
% talking(agent1, agent2, 4).
% talking(agent1, agent2, 5).
% talking(agent1, agent2, 6).
%
%
% % agent 2 passes the mid and forces agent 1 (just entering)
% % to step out and wait 
% pos(agent1, 1, p1_1).
% pos(agent1, 2, p1_2).
% pos(agent1, 3, p1_3).
% pos(agent1, 4, p1_4).
% pos(agent1, 5, p1_5).
% pos(agent1, 6, p1_6).
% pos(agent1, 7, p1_7).
% pos(agent1, 8, p1_8).
% pos(agent1, 9, p1_9).
% pos(agent1, 10, p1_10).

% pos(agent2, 1, p2_1).
% pos(agent2, 2, p2_2).
% pos(agent2, 3, p2_3).
% pos(agent2, 4, p2_4).
% pos(agent2, 5, p2_5).
% pos(agent2, 6, p2_6).
% pos(agent2, 7, p2_7).
% pos(agent2, 8, p2_8).
% pos(agent2, 9, p2_9).
% pos(agent2, 10, p2_10).

% pos(agent3, 1, p3_1).
% pos(agent3, 2, p3_2).
% pos(agent3, 3, p3_3).
% pos(agent3, 4, p3_4).
% pos(agent3, 5, p3_5).
% pos(agent3, 6, p3_6).
% pos(agent3, 7, p3_7).
% pos(agent3, 8, p3_8).
% pos(agent3, 9, p3_9).
% pos(agent3, 10, p3_10).


% o_point(p1_1, "23.051", "10.900", "90.0").
% o_point(p1_2, "23.051", "10.900", "90.0").
% o_point(p1_3, "23.051", "10.900", "90.0"). 
% o_point(p1_4, "23.051", "10.200", "90.0").
% o_point(p1_5, "23.051", "10.200", "90.0").
% o_point(p1_6, "23.051", "10.200", "90.0").
% o_point(p1_7, "22.051", "11.100", "180.0").
% o_point(p1_8, "21.051", "11.100", "180.0").
% o_point(p1_9, "20.051", "11.100", "180.0").
% o_point(p1_10, "19.051", "11.100", "180.0").

% o_point(p2_1, "23.051", "13.900", "270.0").
% o_point(p2_2, "23.051", "13.900", "270.0").
% o_point(p2_3, "23.051", "13.900", "270.0"). 
% o_point(p2_4, "23.051", "13.200", "270.0").
% o_point(p2_5, "23.051", "13.200", "270.0").
% o_point(p2_6, "23.051", "13.200", "270.0").
% o_point(p2_7, "24.051", "13.000", "0.0").
% o_point(p2_8, "25.051", "13.000", "0.0").
% o_point(p2_9, "26.051", "13.000", "0.0").
% o_point(p2_10, "27.051", "13.000", "0.0").

% o_point(p3_1, "20.051", "12.000", "0.0").
% o_point(p3_2, "21.051", "12.000", "0.0").
% o_point(p3_3, "22.051", "11.500", "0.0"). 
% o_point(p3_4, "23.051", "11.500", "0.0").
% o_point(p3_5, "24.051", "11.500", "0.0").
% o_point(p3_6, "25.051", "11.500", "0.0").
% o_point(p3_7, "26.051", "11.500", "0.0").
% o_point(p3_8, "27.051", "11.500", "0.0").
% o_point(p3_9, "28.051", "11.500", "0.0").
% o_point(p3_10, "29.051", "11.500", "0.0").

% }).

% #pos(p1_6A_3, {}, {}, {

% % Option A

% %%%% Agents %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% agent(agent1).
% agent(agent2).
% agent(agent3).

% % wall 1 
% wall(wall1, w1_s, w1_e).
% point(w1_s, "15.0", "15.0").
% point(w1_e, "20.0", "15.0").

% % wall 2 
% wall(wall2, w2_s, w2_e).
% point(w2_s, "15.0", "10.0").
% point(w2_e, "20.0", "10.0").

% corridor(corridor, wall1, wall2).
%
% talking(agent1, agent2, 1).
% talking(agent1, agent2, 2).
% talking(agent1, agent2, 3).
% talking(agent1, agent2, 4).
% talking(agent1, agent2, 5).
% talking(agent1, agent2, 6).
%
%
% % agent 2 passes the mid and forces agent 1 (just entering)
% % to step out and wait 
% pos(agent1, 1, p1_1).
% pos(agent1, 2, p1_2).
% pos(agent1, 3, p1_3).
% pos(agent1, 4, p1_4).
% pos(agent1, 5, p1_5).
% pos(agent1, 6, p1_6).
% pos(agent1, 7, p1_7).
% pos(agent1, 8, p1_8).
% pos(agent1, 9, p1_9).
% pos(agent1, 10, p1_10).

% pos(agent2, 1, p2_1).
% pos(agent2, 2, p2_2).
% pos(agent2, 3, p2_3).
% pos(agent2, 4, p2_4).
% pos(agent2, 5, p2_5).
% pos(agent2, 6, p2_6).
% pos(agent2, 7, p2_7).
% pos(agent2, 8, p2_8).
% pos(agent2, 9, p2_9).
% pos(agent2, 10, p2_10).

% pos(agent3, 1, p3_1).
% pos(agent3, 2, p3_2).
% pos(agent3, 3, p3_3).
% pos(agent3, 4, p3_4).
% pos(agent3, 5, p3_5).
% pos(agent3, 6, p3_6).
% pos(agent3, 7, p3_7).
% pos(agent3, 8, p3_8).
% pos(agent3, 9, p3_9).
% pos(agent3, 10, p3_10).


% o_point(p1_1, "23.051", "10.900", "90.0").
% o_point(p1_2, "23.051", "10.900", "90.0").
% o_point(p1_3, "23.051", "10.900", "90.0"). 
% o_point(p1_4, "23.051", "11.500", "90.0").
% o_point(p1_5, "23.051", "11.500", "90.0").
% o_point(p1_6, "23.051", "10.900", "90.0").
% o_point(p1_7, "22.051", "11.100", "180.0").
% o_point(p1_8, "21.051", "11.100", "180.0").
% o_point(p1_9, "20.051", "11.100", "180.0").
% o_point(p1_10, "19.051", "11.100", "180.0").

% o_point(p2_1, "23.051", "13.900", "270.0").
% o_point(p2_2, "23.051", "13.900", "270.0").
% o_point(p2_3, "23.051", "13.900", "270.0"). 
% o_point(p2_4, "23.051", "13.900", "270.0").
% o_point(p2_5, "23.051", "13.900", "270.0").
% o_point(p2_6, "23.051", "13.900", "270.0").
% o_point(p2_7, "24.051", "13.000", "0.0").
% o_point(p2_8, "25.051", "13.000", "0.0").
% o_point(p2_9, "26.051", "13.000", "0.0").
% o_point(p2_10, "27.051", "13.000", "0.0").

% o_point(p3_1, "20.051", "12.000", "0.0").
% o_point(p3_2, "21.051", "11.000", "0.0").
% o_point(p3_3, "22.051", "10.400", "-40.0"). 
% o_point(p3_4, "23.051", "10.100", "0.0").
% o_point(p3_5, "24.051", "10.100", "0.0").
% o_point(p3_6, "25.051", "11.000", "40.0").
% o_point(p3_7, "26.051", "11.000", "0.0").
% o_point(p3_8, "27.051", "11.000", "0.0").
% o_point(p3_9, "28.051", "11.000", "0.0").
% o_point(p3_10, "29.051", "11.000", "0.0").
% }).







%%% ORDERINGS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Context 1, scenario 1
#brave_ordering(p1_1A_1, p1_1B_1).
#brave_ordering(p1_1A_1, p1_1B_2).
#cautious_ordering(p1_1A_1, p1_1C_1).
#cautious_ordering(p1_1B_1, p1_1C_1).
#cautious_ordering(p1_1B_2, p1_1C_1).

% Context 1, scenario 2
#brave_ordering(p1_2C_1, p1_2B_1).
#brave_ordering(p1_2C_2, p1_2B_1).
#brave_ordering(p1_2C_1, p1_2B_2).
#brave_ordering(p1_2C_2, p1_2B_2).
#cautious_ordering(p1_2C_1, p1_2A_1).
#cautious_ordering(p1_2C_2, p1_2A_1).
#brave_ordering(p1_2B_1, p1_2A_1).
#brave_ordering(p1_2B_2, p1_2A_1).

% Context 1, scenario 3
#brave_ordering(p1_3B_1, p1_3A_1).
#brave_ordering(p1_3B_2, p1_3A_1).
#brave_ordering(p1_3B_1, p1_3A_2).
#brave_ordering(p1_3B_2, p1_3A_2).

%%% Hypothesis Space %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% #modeo(1, overtake(var(ent), var(ent), var(time))).
% #modeo(1, invades_personal_space(var(ent), var(ent), var(time))).
#modeo(1, squeeze_by_wall(var(ent), var(wall), var(time))).
#modeo(1, past_mid(var(ent), const(room), var(time))).
#modeo(1, step_out_and_wait(var(ent), var(ent), const(room), var(time))).
% #modeo(1, push_out(var(ent), var(ent), const(room), var(time))).
#modeo(1, give_way(var(ent), var(ent), var(time), const(room))).
#modeo(1, one_person_width(const(room))).
% #modeo(1, after(var(time), var(time))).
#maxp(2).
#maxv(3).
#constant(room, corridor).
#weight(-1).
#weight(1).
% #weight(2).

%%% Display %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% #show overtake/3.
% #show behind/3.
% #show in_front/3.

