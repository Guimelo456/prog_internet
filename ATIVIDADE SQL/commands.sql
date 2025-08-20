--database: .db.sqlite

CREATE TABLE produtos (id, nome, preco);

DROP TABLE produtos;

CREATE TABLE clientes (id, nome, email);

CREATE TABLE compras (id,cliente_id,produto_id, data);


CREATE TABLE "produtos"(
    id INTEGER NOT NULL,
    nome TEXT NOT NULL,
    preco REAL NOT NULL
);

CREATE TABLE "compras" (
    id INTEGER NOT NULL,
    cliente_id INTEGER NOT NULL,
    produto_id INTEGER NOT NULL,
    data TEXT NOT NULL
    );



    CREATE TABLE "clientes" (
        id INTEGER NOT NULL,
        nome TEXT NOT NULL,
        email TEXT NOT NULL

    );

    INSERT INTO 
    "produtos" ("id","nome", "preco")
    VALUES
     (1, 'Notebook', 100),
     (2, 'Smartphone', 500),
     (3,'Tablet', 300);


     INSERT INTO
     "clientes" ("id","nome", "email")
     VALUES
     (1,'Maria', 'maria@email.com'),
     (2,'João','joao@email.com');

     INSERT INTO
     "compras"("id", "cliente_id","produto_id","data")
     VALUES
     (1,2,1, '2049-01-01'),
     (2,1,2, '2049-01-02'),
     (3,2,3, '2049-01-03');


     SELECT * FROM "produtos";

     SELECT * FROM 
     "produtos"
     WHERE
     "preco" >400;



     
     






