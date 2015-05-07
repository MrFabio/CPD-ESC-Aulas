
for dir in */; do
	cd dir
	gnuplot < "
	set logscale x 2
	set logscale y 2
	set autoscale z
	set grid lt 2 lw 1
	set zlabel 'Kbytes/sec'
	set style data lines
	set dgrid3d 80,80,3
	splot '$dir.gnuplot' title '$dir'
	quit"
done