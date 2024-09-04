import numpy as np
import matplotlib.pyplot as plt

#definir o intervalo inicial [a, b]
a = 1
b = 2
# definir precisão
e = 0.00001

#------------------------------------
# definir uma função
def f(x):
    return (x**3 + 4*(x**2) - 10)

#------------------------------------
# Plotar função no intervalo inicial
xp = np.linspace(a, b, 100)
yp = f(xp)

plt.plot(xp, yp, color='blue')
plt.title(r"função $x^3 + 4*(x^2) - 10$ no intervalo [1, 2]")
plt.xlabel("eixo x")
plt.ylabel("eixo y")
plt.grid()
# plt.grid(axis='y')
plt.show()

#------------------------------------
# teorema de Bolzano
if(f(a)*f(b) < 0):
    while(np.fabs((b - a)/2) > e):
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
    print(" O sinal de f(a) = ", np.sign(f(a)))
    print(" O valor de f(b) = ", np.sign(f(b)))
    print(" Não se cumpre: f(a)*f(b) < 0")
    print(" Não existe raíz neste intervalo ")