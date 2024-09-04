# importar a biblioteca matemática
import math

# definir o intervalo inicial [a, b]
a = 1
b = 6

# definir a precisão
e = 0.01

# definir uma função
def f(x):
    return (x**2 - 5)

# teorema de Bolzano
if(f(a)*f(b) < 0):
    while(math.fabs((b - a)/2) > e):
        m = (a + b)/2
        if(f(m) == 0):
            print(' A raíz é = ', m)
            break
        else:
            if(f(a)*f(m) < 0):
                b = m
            else:
                a = m
    print(' O valor aproximado da raiz é = ', m)
else:
    print(" O valor de f(a) = ", f(a))
    print(" O valor de f(b) = ", f(b))
    print(" Não se cumpre: f(a)*f(b) < 0")
    print(" Não existe raíz neste intervalo ")