for src in terminfo-*.src; do
	echo "compiling ${src}"
	tic -x -o .terminfo ${src}
done
