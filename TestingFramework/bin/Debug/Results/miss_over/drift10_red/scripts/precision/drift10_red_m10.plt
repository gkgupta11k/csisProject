set terminal png size 12*200,720
set output "recovery/plots/drift10_red_m10.png"

set xrange [0:0+200]
set xtics 0,25
#set log y

set key above width -1 vertical maxrows 2 
set tmargin 2.5

set arrow from 0,0 to 1000,0 nohead

set xlabel "data point"
set ylabel "value" offset 1.5 

plot\
	'recovery/values/reference.txt' index 0 using 1:2 title 'real' with linespoints lt 1 dt 3 lw 3 pt 5 lc rgbcolor "black" pointsize 1, \
	'recovery/values/10/softimp10.txt' index 0 using 1:2 title 'softimp' with linespoints lt 8 dt 2 lw 3 pt 5 lc rgbcolor "dark-violet" pointsize 1.2, \

