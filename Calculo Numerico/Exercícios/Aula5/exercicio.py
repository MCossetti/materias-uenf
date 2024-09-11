import numpy as np
import matplotlib.pyplot as plt
import os

def f(x):
    return np.sin(x) - x

def g(x):
    # Defina aqui a função g(x) que transforma f(x) = 0 em x = g(x)
    return np.sin(x)

def ponto_fixo_iterativo(x0, tol, max_iter):
    # x0: valor inicial
    # tol: tolerância para o critério de parada
    # max_iter: numero maximo de iterações
    x = x0
    for i in range(max_iter):
        x_new = g(x)
        if np.abs(x_new - x) < tol:
            print(f"Convergência alcançada após {i+1} iterações.")
            return x_new
        x = x_new
    print('Número máximo de iterações alcançado.')
    return x

def plot_grafico(a, b):
    xp = np.linspace(a, b, 100)
    yp = f(xp)
    plt.plot(xp, yp, c='b')
    plt.axhline(0, c='r')
    plt.axvline(0.003, c="r")
    plt.scatter([raiz], [0], c="r", s = 50)
    plt.axis([a, b, f(a) - 5, f(b) + 5])
    #plt.title(r"Ponto Fixo[{}, {:.2}]".format(a, b))
    plt.title(r"raiz = {:.4}".format(raiz))
    plt.xlabel('eixo x ')
    plt.ylabel('eixo y ')
    plt.grid()
    plt.show()

# Parâmetros
x0 = 0.80 # valor inicial
tol = 1e-3 # tolerância
max_iter = 500 # número máximo de iterações
os.system("cls")
raiz = ponto_fixo_iterativo(x0, tol, max_iter)
print(f'A raiz aproximada é: {raiz:.8}')
#plotar o gráfico
plot_grafico(0, raiz+1)