# importando biblioteca
from collections import defaultdict

# criando um defaultdict com uma lista vazia
vasco = defaultdict(list)

# adicionando valores ao defaultdict
vasco['goleiro'].append('Leo Jardim')
vasco['goleiro'].append('Ivan')
vasco['atacante'].append('Gabriel Pec')
vasco['atacante'].append('Pedro Raul')

# acessando valores no defaultdict
print(vasco['goleiro'])   
print(vasco['atacante'])
print(vasco['zagueiro'])

