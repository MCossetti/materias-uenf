# importando a biblioteca
import numpy as np 

# decalrando a função
def f(x):
    return x**3 - 10*x**2 + 5

# definindo o método
def meu_metodo(f, a, b, tol):
    # verifica se os sinais de f(a) e f(b) são iguais
    if np.sign(f(a)) == np.sign(f(b)):
        # se os sinais forem iguais não existe raiz
        raise Exception("Não existe raiz nop intervalo [a, b]")
    
    # calcula o ponto médio do intervalo
    m = (a + b)/2

    # verifica se o valor absoluto de f(m) é menor que a tolerancia
    if np.abs(f(m)) < tol:
        # se for menor m é próximo da raiz
        return m
    
    # verifica se o sinal de f(a) é igual de f(m)
    elif np.sign(f(a)) == np.sign(f(m)):
        # se for a raiz ta no intervalo [m, b]
        # entao chama a função recursivamente
        return meu_metodo(f, m, b, tol)
    
    # verifica se o sinal de f(b) é igual de f(m)
    elif np.sign(f(b)) == np.sign(f(m)):
        # se for a raiz ta no intervalo [a, m]
        # entao chama a função recursivamente
        return meu_metodo(f, a, m, tol)
    
# define os valores para o intervalo e a precisao
a = 0
b = 1
tol = 10**(-6)

# atribui a variável o valor da raiz
raiz_aprox = meu_metodo(f, a, b, tol)

# mostra o valor da raiz
print("Raiz aproximada: ", raiz_aprox)
