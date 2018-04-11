
%
% First formalisation in LOAS
%

%%%%%%% Background knowledge for Scenario 1.4
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


% wall 1 
point(w1_s, 10, 20).
point(w1_e, 60, 20).
start(w1_s, wall1).
end(w1_e, wall1).
line(wall1). 

% wall 2 
point(w2_s, 10, 10).
point(w2_e, 60, 10).
start(w2_s, wall2).
end(w2_e, wall2).
line(wall2). 

%%%% Agents
agent(agent1).
agent(agent2).


%%%%%%%%%%%%%%%%%%%%%%%%%%%% End of Background Knowledge

%%% person 2 (faster) overtakes person 1.
#pos(p1, {

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

  % person 1 walks straight
o_point(p1_1, "40.551", "12.880", 0).
o_point(p1_2, "41.551", "12.876", 0).
o_point(p1_3, "42.551", "12.877", 0).
o_point(p1_4, "43.551", "12.876", 0).
o_point(p1_5, "44.551", "12.878", 0).
o_point(p1_6, "45.551", "12.880", 0).
o_point(p1_7, "46.551", "12.881", 0).
o_point(p1_8, "47.551", "12.879", 0).
o_point(p1_9, "48.551", "12.879", 0).
o_point(p1_10, "49.551", "12.879", 0).
o_point(p1_11, "50.544", "12.879", 0).
o_point(p1_12, "51.551", "12.879", 0).
o_point(p1_13, "52.551", "12.879", 0).

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

  % person 2 overtakes
o_point(p2_1, "38.551", "12.880", 0).
o_point(p2_2, "40.551", "13.876", 2).
o_point(p2_3, "42.580", "15.002", 0).
o_point(p2_4, "44.551", "15.876", 0).
o_point(p2_5, "46.551", "14.878", -2).
o_point(p2_6, "48.551", "13.880", -2).
o_point(p2_7, "50.551", "12.881", 0).
o_point(p2_8, "52.551", "12.879", 0).
o_point(p2_9, "54.551", "12.879", 0).
o_point(p2_10, "56.551", "12.879", 0).
o_point(p2_11, "58.544", "12.879", 0).
o_point(p2_12, "60.551", "12.879", 0).
o_point(p2_13, "62.551", "12.879", 0).

},{}).

%%% person 2 (faster) slows down and stays behind person 1
#pos({}, {}, {

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

  % person 1 walks straight
o_point(p1_1, "40.551", "12.880", 0).
o_point(p1_2, "41.551", "12.876", 0).
o_point(p1_3, "42.551", "12.877", 0).
o_point(p1_4, "43.551", "12.876", 0).
o_point(p1_5, "44.551", "12.878", 0).
o_point(p1_6, "45.551", "12.880", 0).
o_point(p1_7, "46.551", "12.881", 0).
o_point(p1_8, "47.551", "12.879", 0).
o_point(p1_9, "48.551", "12.879", 0).
o_point(p1_10, "49.551", "12.879", 0).
o_point(p1_11, "50.544", "12.879", 0).
o_point(p1_12, "51.551", "12.879", 0).
o_point(p1_13, "52.551", "12.879", 0).

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

  % person 2 follows behind 
o_point(p2_1, "38.551", "12.880", 0).
o_point(p2_2, "40.551", "12.876", 0).
o_point(p2_3, "41.551", "12.877", 0).
o_point(p2_4, "42.551", "12.876", 0).
o_point(p2_5, "43.551", "12.878", 0).
o_point(p2_6, "44.551", "12.880", 0).
o_point(p2_7, "45.551", "12.881", 0).
o_point(p2_8, "46.551", "12.879", 0).
o_point(p2_9, "47.551", "12.879", 0).
o_point(p2_10, "48.551", "12.879", 0).
o_point(p2_11, "49.544", "12.879", 0).
o_point(p2_12, "50.551", "12.879", 0).
o_point(p2_13, "51.551", "12.879", 0).

}).

point(P, X, Y) :- o_point(P, X, Y, _).

line2d(line(Ent, T), X1, Y1, X2, Y2) :- pos(Ent, T, P1), pos(Ent, T+1, P2), point(P1, X1, Y1), point(P2, X2, Y2).


%  p1_T ----- p2_T ====== p2_T+1



behind(E1, E2, T) :- pos(E1, T, P1), 
		spatial_system(id(default),orientation(collinear(P1, line(E2, T)), 
		pos(E2, T,P2), o_point(P1, X1, Y1, O1), 
		o_point(P2, X2, Y2, O2), @is_behind(X1, Y1, O1, X2, Y2, O2) > 0. 
		     		
	
after(E1, E2, T) :- behind(E2, E1, T).

% not sure how to specify it
% spatial(orientation, P, L) :-

% overtake :- before(T), after(T+1)

#brave_ordering()

/* #modeo() % body of the weak constraints */
#modeh(overtake(var(ent), var(ent), var(time)))
#



 