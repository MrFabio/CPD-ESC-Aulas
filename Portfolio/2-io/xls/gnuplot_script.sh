#for dir in */; do
#	cd $dir
	for file in *.txt; do
		gengnuplot.sh $file write
		cd write
		cp $file.gnuplot file.gnuplot
		gnuplot < ../gp.txt
		mv file.png $file.png
		rm file.gnuplot
		cd ..
	done
#	cd ..
#done
