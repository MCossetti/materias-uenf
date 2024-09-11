#importar a biblioteca matemática
from math import log, ceil

# definição da função
def f(x):
    return (x+1)*(x-1)*(x-3)

# Definição da função bissecao
def bissecao(f, a, b, e):
    # Calcula o valor da função de para a
    fa = f(a)

    # Verifica se f(a) é igual a 0, se for é a raiz
    if fa == 0.0:
        return a
    
    # Calcula o valor da função para b
    fb = f(b)

    # Verifica se f(b) é igual a 0, se for é a raiz
    if fb == 0.0:
        return b
    
    # Verifica a existencia de raiz no intervalo [a, b]
    # Através se os sinais de fa e fb são diferentes
    if fa*fb < 0.0:
        # Calcula o número máximo de iterações
        n = ceil(log(abs(b - a)/e)/log(2.0))
        
        for i in range(n):
            # Calcula o ponto médio do intervalo
            m = 0.5*(a + b)

            # Calcula o valor da função para o ponto médio
            fm = f(m)

            # Verifica se f(m) é igual a 0, se for é a raiz
            if fm == 0.0:
                return m
            
            # Verifica se os sinais de fb e fm são diferentes,
            # Se forem a raiz ta no intervalo [m, b]
            if fb*fm < 0.0:
                a = m
                fa = fm
            
            # Se os sinais forem iguais, a raiz está no intervalo [a, m]
            else:
                b = m
                fb = fm
        # Retorna o valor da raiz
        return (a + b)/2.0
    # Se os sinais de fa e fb forem iguais não existe raiz
    else:
        print(" Não existe raiz no intervalo")
        return None
    
# definir o intervalo inicial [a, b]
a = -4
b = 4

# definir a precisão
e = 0.01

# mostrando o valor após a chamada da função
print(bissecao(f, a, b, e))

