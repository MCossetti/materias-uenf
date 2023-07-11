# Criando um conjunto
conjunto1 = {1, 2, 3, 4, 5}
print(conjunto1)  

# Criando um conjunto vazio
conjunto2 = set()
print(conjunto2)  

# Removendo um elemento do conjunto
conjunto1.remove(3)
print(conjunto1) 
{1, 2, 3, 4, 5}

# Adicionando um elemento ao conjunto
conjunto1.add(6)
print(conjunto1) 
{1, 2, 3, 4, 5, 6}

# Operacoes entre conjuntos
conjunto2 = {4, 5, 6, 7, 8}
print(conjunto1.union(conjunto2)) 
print(conjunto1.intersection(conjunto2)) 
print(conjunto1.difference(conjunto2)) 

