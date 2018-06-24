#! /usr/bin/env python3 

import sys
import json
import re

out = sys.argv[1]
j_in = sys.stdin.read()
data = json.loads(j_in)
scenario = data['Call'][0]['Witnesses'][0]['Value']

metadata = """
% :name=validation
% :centrex=22.5
% :centrey=11.0
"""

with open(out, 'a+') as f:
    f.write(metadata) 
    for predicate in scenario:
        if not re.match('(^point\(p)', predicate): 
            f.write(predicate + '.\n')

