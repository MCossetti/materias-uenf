from dataclasses import dataclass

def checked(classe):
    def novo_init(self, *args, **kwargs):
        for nome, tipo in classe.__annotations__.items():
            if nome in kwargs:
                if not isinstance(kwargs[nome], tipo):
                    raise TypeError(f"{nome} deve ser do tipo {tipo.__name__}")
            elif not any(nome == arg_name for arg_name in classe.__dataclass_fields__):
                raise TypeError(f"Argumento {nome} não fornecido")

        original_init(self, *args, **kwargs)

    original_init = classe.__init__
    classe.__init__ = novo_init
    return classe

@checked
@dataclass
class Filme:
    titulo: str
    ano: int
    preco: float

filme = Filme(titulo= 'O Poderoso Chefao', ano= 1972, preco= 137.6)

print(filme.titulo) 
print(filme)

