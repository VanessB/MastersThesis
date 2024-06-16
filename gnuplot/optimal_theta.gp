set xlabel "$ z $"
set ylabel "$ \\theta $"
set key spacing 2.0

set yrange [0:1.2]

theta(x) = 1.0 / x - 1.0 / (exp(x) - 1)

plot file_name using 1:2 with lines lw 2 t "$ \\theta^*(-\\infty, z) $", \
     theta(x) lw 2 t "$ \\theta^*(z) $"
