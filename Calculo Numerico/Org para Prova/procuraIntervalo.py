# ---------------------------------------------
# Procurar intervalo onde existe uma raíz
# -------------------------------------------

def f(x):
    return x**3 - 10*x**2 + 5

def procuraIntervalo(a, b, delta_x):
    x1 = a
    f1 = f(a)
    x2 = a + delta_x
    f2 = f(x2)

    while f1*f2 > 0.0:
        if x1 >= b:
            return None, None
        x1 = x2
        f1 = f2
        x2 = x1 + delta_x
        f2 = f(x2)
    return x1, x2

# valores iniciais
a = 0.0
b = 1.0
delta_x = 0.2
na, nb = procuraIntervalo(a, b, delta_x)

if (na != a) and (nb != b):
    print("Existe raiz no intervalo --> [{:.3}, {:.3}]".format(na, nb))
else:
    print("Não existe raiz neste intervalo")