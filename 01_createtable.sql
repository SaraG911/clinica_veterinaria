BEGIN TRANSACTION;


---------tabela cliente----
Create table cliente(
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT(100),
    telefone TEXT(15)
);

------tabela pet-----

Create table pet(
    id_pet INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    especie TEXT,
    idade INTEGER,
    id_cliente INTEGER,
    FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente)
);

------tabela veterinario-----
Create table veterinario(
    id_veterinario INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    crmv TEXT NOT NULL
);

-------tabela consullta-------
Create table consulta(
    id_consulta INTEGER PRIMARY KEY AUTOINCREMENT,
    data TEXT NOT NULL,
    tipo_de_servico TEXT,
    id_pet INTEGER,
    id_veterinario INTEGER,
    FOREIGN KEY(id_pet) REFERENCES pet(id_pet),
    FOREIGN KEY(id_veterinario) REFERENCES veterinario(id_veterinario)
);

--------tabela medicamento-----
Create table medicamento(
    id_medicamento INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    quantidade INTEGER,
    data_de_validade TEXT,
    id_consulta INTEGER,
    FOREIGN KEY(id_consulta) REFERENCES consulta(id_consulta)
);

-------tabela medicamento_consulta------
Create table medicamento_consulta(
    id_medicamento INTEGER,
    id_consulta INTEGER,
    dose_aplicada TEXT,    
    FOREIGN KEY(id_medicamento) REFERENCES medicamento(id_medicamento),
    FOREIGN KEY(id_consulta) REFERENCES consulta(id_consulta)
);
