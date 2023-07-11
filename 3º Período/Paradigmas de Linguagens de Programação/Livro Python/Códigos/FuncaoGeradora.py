# Funcao geradora que produz tres numeros
def gen_123():
  yield 1
  yield 2
  yield 3

for i in gen_123():
    print(i)

