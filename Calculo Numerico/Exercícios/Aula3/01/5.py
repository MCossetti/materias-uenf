# importar a biblioteca matemática
import math

# definir o intervalo inicial [a, b]
a = 1
b = 2

# definir a precisão
e = 0.00001

# definir uma função
def f(x):
    return (x**3 + 4*(x**2) - 10)

# cálculo do número de iterações
L = abs(b - a)
iteracoes = math.ceil((math.log2(L/e)/ math.log2(2)) + 1)

# teorema de Bolzano
if (f(a) * f(b) < 0):
    for x in range(iteracoes):
        m = (a+b)/2

        if f(m) == 0:
            print("A raiz é = ", m)
            break

        elif (f(a) * f(m)) < 0:
            b = m

        else:
            a = m
    print("O valor aproximado da raiz é = ", m)
    print("Numero de Iterações= ", iteracoes)
else:
    print("Valor de f(a) = ", f(a)) 
    print("Valor de f(b) = ", f(b)) 
    print("Não cumpre f(a)*f(b) < 0 ") 
    print("Não existe raiz nesse intervalo") 

