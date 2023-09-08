# if helix exists make it the primary editor
# I wonder if I shouldn't make this some sort of priority list at some point
# but mostly I think if hx exists, use it, otherwise use the default (probably vi)
if type helix >/dev/null 2>&1 ; then
  export EDITOR=hx
fi
