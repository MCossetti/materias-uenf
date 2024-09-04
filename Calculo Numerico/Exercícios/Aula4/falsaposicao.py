import numpy as np
import matplotlib.pyplot as plt
import math

# ------------- função -------------------
def f(x):
    return x**2 - 8*x

# ------------- plotar -------------------
def grafico(a, b, iteracoes):
    #plot da função
    vetor_x = np.linspace(a-2, b+2, 100)
    vetor_y = f(vetor_x)
    
    plt.plot(vetor_x, vetor_y, color="red")
    
    #plot da linha
    xline, yline = [a, b], [f(a), f(b)]
    plt.plot(xline, yline, marker="o")
    
    plt.axis([a-1, b+1, f(a)-10, f(b)+10])
    plt.title(r"$x^2 - 8*x$, Iteração {}".format(iteracoes))
    plt.xlabel("eixo x")
    plt.ylabel("eixo y")
    plt.grid()
    plt.show()

# funçao pra mostrar tabela
def tabela(a, b, m):
    print("a = {:.4f} | b = {:.4f} | m = {:.4f} | f(a) = {:.4f} | f(m) = {:.4f} | f(b) = {:.4f} | a-b = {:.4f}\n".format(a, b, m, f(a), f(m), f(b), a-b))

# função pra calcular a falsa posicao
def falsaPosicao(a, b, e):
    itercaoes = 0

    raiz = (a*f(b) - b*f(a))/(f(b) - f(a))
    if f(a) * f(b) < 0:
        while (math.fabs(f(raiz)) > e):
            itercaoes += 1

            raiz = (a*f(b) - b*f(a))/(f(b) - f(a))
            tabela(a, b, raiz)
            grafico(a, b, itercaoes)

            if raiz == 0:
                return raiz
            
            elif f(a) * f(raiz) < 0:
                b = raiz
            else:
                a = raiz
        print(f"Raiz é:  {raiz:.4f}")
    else:
        print("Não existe raiz")

# definição de valor pra intervalo e precisao
a = 5
b = 12
e = 0.01

falsaPosicao(a, b, e)
