# lamb - показатель экспоненты.
# T    - время интегрирования.
# N    - число точек (включая начальную).

# Истинное решение.
# lamb = -0.7
f(x) = exp(lamb * x)

# Решение разностными схемами.
# N = 5             # Число точек.
# T = 10.0          # Время интегрирования.
delta = T / (N-1) # Шаг.
array times[N]    # Точки.

array ForwardEuler[N]  # Явный Эйлер.
array BackwardEuler[N] # Неявный Эйлер.
array Trapezoid[N]     # Метод трапеций.
array ThetaMethod[N]   # Тета-схема.

theta = 0.878

do for [i=1:N] { times[i] = (i-1) * delta }

ForwardEuler[1] = 1.0
BackwardEuler[1] = 1.0
Trapezoid[1] = 1.0
ThetaMethod[1] = 1.0
do for [i=2:N] {
    ForwardEuler[i] = ForwardEuler[i-1] * (1.0 + lamb * delta)
    BackwardEuler[i] = BackwardEuler[i-1] / (1.0 - lamb * delta)
    Trapezoid[i] = Trapezoid[i-1] * (2.0 + lamb * delta) / (2.0 - lamb * delta)
    ThetaMethod[i] = ThetaMethod[i-1] * (1.0 + (1.0 - theta) * lamb * delta) / (1.0 - theta * lamb * delta)
}
