#!/usr/bin/awk -f

# This file should live in ~/bin, as per the path above.

BEGIN { in_block = 0 }
/^# BEGIN / { in_block = 1 ; print $0; }
/^# END / { in_block = 0 }
{ if (! in_block) { print $0; } }

