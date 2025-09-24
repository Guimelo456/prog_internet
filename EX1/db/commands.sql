--database: ./db.sqlite

CREATE TABLE PRODUTOS (id, nome, preco);

CREATE TABLE CLIENTES (id,nome,email);

CREATE TABLE COMPRAS (id, cliente_Id, produto_id,data);


INSERT INTO PRODUTOS (id, nome, preco) 
VALUES
(1, 'Notbook', 1000),   
(2, 'Smartphone', 500),
(3, 'Tablet', 300);


INSERT INTO CLIENTES (id, nome, email) 
VALUES

(1,'Maria', 'maria@email.com'),
(2, 'João', 'joao@email.com');

INSERT INTO COMPRAS (id,cliente_Id, produto_id, data)
VALUES
(1, 2, 1, '2049-01-01'),
(2,1,2, '2049-01-02'),
(3,2,3,'2049-01-03');


SELECT * FROM PRODUTOS;

SELECT nome FROM PRODUTOS WHERE preco > 400;

SELECT nome FROM PRODUTOS;

SELECT * FROM COMPRAS;

DROP TABLE CLIENTES;

DROP TABLE PRODUTOS;

DROP TABLE COMPRAS;









