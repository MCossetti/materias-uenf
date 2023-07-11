def somar(a, b):
    return a + b

def subtrair(a, b):
    return a - b

def multiplicar(a, b):
    return a * b

def dividir(a, b):
    if b != 0:
        return a / b
    else:
        return "Erro: divisão por zero"

print("Selecione a operacao:")
print("1. Somar")
print("2. Subtrair")
print("3. Multiplicar")
print("4. Dividir")

operacao = input("Qual operacao? (1,2,3,4): ")
x = float(input("Digite o primeiro número: "))
y = float(input("Digite o segundo número: "))

if operacao == '1':
    resultado = somar(x, y)
    print("Resultado:", resultado)
elif operacao == '2':
    resultado = subtrair(x, y)
    print("Resultado:", resultado)
elif operacao == '3':
    resultado = multiplicar(x, y)
    print("Resultado:", resultado)
elif operacao == '4':
    resultado = dividir(x, y)
    print("Resultado:", resultado)
else:
    print("Escolha inválida")

