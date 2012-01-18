#!/bin/sh

echo "# --- Kitchen's authorized_keys file generated `date`" >> authorized_keys.tmp
for i in pubkeys/*.pub 
do
	echo "# - $i" >> authorized_keys.tmp
	cat $i >> authorized_keys.tmp
	echo >> authorized_keys.tmp
done
mv authorized_keys.tmp authorized_keys
