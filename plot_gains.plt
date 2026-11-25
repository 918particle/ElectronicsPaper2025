set terminal pdf
set output "Nov25_plot1.pdf"
set xrange [6:19]
set yrange [-10:20]
set xlabel "Frequency [GHz]" font "Courier,20" offset 0,-0.25
set ylabel "Gain (dB)" font "Courier,20" offset -1.25,0
set xtics font "Courier,20"
set ytics font "Courier,20"
set datafile separator ","
set bmargin 4
set lmargin 9
set key bottom right box on font "Courier,16"
unset key
set linestyle 1 pt 6 lc -1 ps 1.2
set linestyle 2 pt 1 lc -1 ps 1.2
set linestyle 3 lw 1 lc -1
plot "data.csv" using 1:2 w p ls 1, "data.csv" using 1:10 w p ls 2, "data.csv" using 1:($10+10) w l ls 3
