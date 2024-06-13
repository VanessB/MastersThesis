set xlabel "$ \\overline{z} $"
set ylabel "$ \\theta $"

set yrange [0:1]

plot file_name using 1:2 with lines lw 3 t "$ \\theta^*_{(-\\infty, \\overline{z}]} $", \
