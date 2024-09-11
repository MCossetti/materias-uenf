from math import pi, e, sqrt, factorial

def absoluto(num1, num2):
    num3 = abs(num1 - num2)
    print("O valor absoluto é {:.6f}".format(num3))

def relativo(num1, num2):
    num3 = abs((num1 - num2)/num1)
    print("O valor relativo é {:.6f}".format(num3))
    
def resolver(num1, num2):
    print("\n------------------------------------------------------")
    print("Calculo com os números {} e {}:".format(num1, num2))
    print("------------------------------------------------------")
    absoluto(num1, num2)
    relativo(num1, num2)

# Primeria atividade
# resolver(231.29, 232.04)
# resolver(0.5682, 0.5701)
# resolver(12.329, 12.331)

# perguntas discursivas
# todas as questões podem ser respondidas que é apenas utilizar o erro relativo

# 1 

# resolver(pi, 22/7)
# resolver(pi, 3.1416)
# resolver(e, 2.718)
# resolver(sqrt(2), 1.414)

#2
print("AQUI:")
resolver(e**10, 22000)
resolver(10**pi, 1400)
resolver(factorial(8), 39900)
resolver(factorial(9), sqrt(18*pi)*((9/e)**9))

#3
# A) deve estar entre = 150 - 150*10^(-3), 150 + 150*10^(-3)
# B) deve estar entre = 900 - 900*10^(-3), 900 + 900*10^(-3) 
# C) deve estar entre = 1500 - 1500*10^(-3), 1500 + 1500 * 10^-3 
# D) deve estar entre = 90 - 90*10^(-3), 90 + 90 * 10^-3, 90 + 90 * 10^-3

#4
# A) deve estar entre = pi - pi*(10^-4), pi + pi*(10^-4)
# B) deve estar entre = e - e*(10^-4), e + e*(10^-4)
# C) deve estar entre = sqrt(2) - sqrt(2)*(10^-4), sqrt(2) + sqrt(2)*(10^-4)
# D) deve estar entre = 7**(1/3) - (7**(1/3))*(10^-4), 7**(1/3) + (7**(1/3))*(10^-4) 

