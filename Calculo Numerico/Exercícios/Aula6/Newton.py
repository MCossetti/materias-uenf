import sympy as sp
from sympy import *

def f(x):
    return x + exp(x) - 2

def newton(p0, max_iteracoes):
    # p0 de froam que f'(p0) != 0
    iteracoes = 0

    # valores iniciais
    error_x = 1
    epsilon = 10**(-10) # tolerancia
    x = sp.symbols("x")
    p0_aux = float(p0)

    print("Método de Newton")

    while((error_x > epsilon) and (iteracoes < max_iteracoes)):
        d = sp.diff(f(x), x)
        vfuncao = f(p0_aux)
        vderivada = d.subs(x, p0_aux)
        p = p0_aux - vfuncao/vderivada
        print(f"iterações = {iteracoes}  valor de p = {p}")
        iteracoes += 1
        p0_aux = p 
    return p

max_iteracoes = 100
print(f"Zero aproximado: {newton(0.5, max_iteracoes)} ")
