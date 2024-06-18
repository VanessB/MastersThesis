# Легенда

set key spacing (exist("small_plot") ? 1.0 : 1.8)

# Сетка

set style line 100 lt 1 lc rgb "#444444" lw 1
set style line 101 lt 1 lc rgb "#CCCCCC" lw 1
set style line 102 lt 1 lc rgb "#EEEEEE" lw 1

set grid mytics ytics ls 101
set grid mxtics xtics ls 101

# Основные линии

do for [N=1:8] {
    set linetype N linewidth (exist("small_plot") ? 1.5 : 2.0)
}

# Дополнительные линии

set style line 200 lt 1 lc "black" lw (exist("small_plot") ? 2.0 : 3.0)
