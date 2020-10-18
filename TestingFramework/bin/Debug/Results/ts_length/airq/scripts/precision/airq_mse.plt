set terminal postscript eps enhanced color "Helvetica" 30
set output "error/plots/airq_mse.eps"

set xrange [200-1:1000+1]
set xtics 200,100
set yrange [0:1]
#set log y

set key above width -2 vertical maxrows 3
set tmargin 4.0

set xlabel "number of rows"
set ylabel "mean squared error" offset 1.5 

plot\
	'error/mse/MSE_softimp.dat' index 0 using 1:2 title 'softimp' with linespoints lt 8 dt 2 lw 3 pt 5 lc rgbcolor "dark-violet" pointsize 1.2, \


set output "error/plots/airq_rmse.eps"
set ylabel "root mean squared error" offset 1.5 

plot\
	'error/rmse/RMSE_softimp.dat' index 0 using 1:2 title 'softimp' with linespoints lt 8 dt 2 lw 3 pt 5 lc rgbcolor "dark-violet" pointsize 1.2, \

set output "error/plots/airq_mae.eps"
set ylabel "mean absolute error" offset 1.5 

plot\
	'error/mae/MAE_softimp.dat' index 0 using 1:2 title 'softimp' with linespoints lt 8 dt 2 lw 3 pt 5 lc rgbcolor "dark-violet" pointsize 1.2, \