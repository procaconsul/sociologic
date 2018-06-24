

% NARROW PASSAGE
% 1, 2, 3, 6
:~ give_way(focus_agent, V0, V1, V2).[-1@1, 1, V0, V1, V2]
:~ squeeze_by_wall(focus_agent, V0, V1, V2).[-1@1, 2, V0, V1, V2]
:~ wait_end_of_talk(focus_agent, V0, V1, V2, V3).[1@1, 3, V0, V1, V2, V3]
:~ push_out(focus_agent, V0, V1, V2), past_mid(focus_agent, V3, V2).[-1@2, 4, V0, V1, V2, V3]
:~ step_out_and_wait(focus_agent, V0, V1, V2), following(V3, focus_agent, V2).[1@2, 5, V0, V1, V2, V3]
:~ push_out(focus_agent, V0, V1, V2), following(V3, focus_agent, V2), one_person_width(V1).[-1@2, 6, V0, V1, V2, V3]
:~ step_out_and_wait(focus_agent, V0, V1, V2), not past_mid(focus_agent, V1, V2), one_person_width(V3).[-1@2, 7, V0, V1, V2, V3]
:~ overtake_in_corridor(focus_agent, V0, V1, V2), not one_person_width(V2).[-1@1, 1, V0, V1, V2]

% CROSSINGS
:~ go_behind(focus_agent, V0, V1).[-1@2, 1, V0, V1]

% QUEUES/GROUPS
:~ go_through(focus_agent, V0, V1).[1@1, 1, V0, V1]
:~ wait_agglomerate_dispersion(focus_agent, V0, V1, V2).[1@2, 2, V0, V1]
:~ squeeze_between_wall_and_agglomerate(focus_agent, V0, V1, V2), straight_queue(V0, V2).[1@2, 3, V0, V1, V2]

