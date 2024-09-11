class Gato:
    def __init__(self, nome, idade):
        self.nome = nome
        self.idade = idade

class Dono:
    def __init__(self, nome, profissao):
        self.nome = nome
        self.profissao = profissao

gato = Gato("Auau", 1)
dono = Dono("Mariana", "Estudante")

print("\nInformações do Cachorro:")
print("Nome:", gato.nome)
print("Idade:", gato.idade)
print("\nInformações do Dono:")
print("Nome:", dono.nome)
print("Profissão:", dono.profissao)
