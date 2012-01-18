default: all

all: pubs authorized_keys

# so, this bombs out if pubkeys/*.pub doesn't return any files
# also if one of the files gets deleted. just re-run make
# and it never runs if a file is added. just re-run make
# Oh well.
authorized_keys: pubs pubkeys/*.pub mkauth.sh
	./mkauth.sh

pubs:
	svn update
