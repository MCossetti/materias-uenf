import sqlite3

conn = sqlite3.connect('exemplo7.2.db')

conn.execute('''CREATE TABLE IF NOT EXISTS clientes
                 (id INTEGER PRIMARY KEY AUTOINCREMENT,
                  nome TEXT NOT NULL,
                  idade INTEGER NOT NULL);''')

conn.execute("INSERT INTO clientes (nome, idade) VALUES ('José', 22)")
conn.execute("INSERT INTO clientes (nome, idade) VALUES ('Mariana', 20)")

cursor = conn.execute("SELECT * FROM clientes")

for row in cursor:
    print(f"ID: {row[0]}, Nome: {row[1]}, Idade: {row[2]}")

conn.close()
