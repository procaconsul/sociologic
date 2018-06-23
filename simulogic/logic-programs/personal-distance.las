#include "common/background-knowledge.lp".

#pos(p1, {}, {}, {
  agent(focus_agent).
  agent(agent2).
  time(1).
  pos(focus_agent, 1, p1_1).
  pos(agent2, 1, p2_1).
  o_point(p1_1, "10.0", "10.0", "0.0").
  o_point(p2_1, "8.0", "10.0", "0.0").
}).

#pos(p2, {}, {}, {
  agent(focus_agent).
  agent(agent2).
  time(1).
  pos(focus_agent, 1, p1_1).
  pos(agent2, 1, p2_1).
  o_point(p1_1, "10.0", "10.0", "0.0").
  o_point(p2_1, "9.0", "10.0", "0.0").
}).



#brave_ordering(p1, p2).

#modeo(1, invades_personal_space(const(ent), var(ent), var(time))).

#weight(1).
#weight(-1).
#maxp(1).
#maxv(2).
#constant(ent, focus_agent).
