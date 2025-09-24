--database: ./db.sqlite

CREATE TABLE produtos (id,nome, preco);

CREATE TABLE clientes (id,nome,email);


CREATE TABLE compras (id,cliente_id,produto_id,data);

CREATE TABLE fornecedores (id,nome,cidade);


CREATE TABLE estoque (id,produto_id,quantidade);

INSERT INTO produtos (id,nome,preco) 
VALUES
(1,'Notbook', 1000),
(2,'Smartphone', 500),
(3,'Tablet',300),
(4,'Monitor',700),
(5,'Impressora',450);


INSERT INTO clientes (id,nome,email)
VALUES
(1,'Maria','maria@email.com'),
(2,'João','joao@email.com'),
(3,'Ana','ana@email.com'),
(4,'Pedro','pedro@email.com');



INSERT INTO compras (id,cliente_id,produto_id,data) 
VALUES
(1, 2, 1, '2049-01-01'),
(2, 1, 2,'2049-01-02'),
(3, 2, 3,'2049-01-03'),
(4, 3, 4,'2049-01-04'),
(5, 4, 5,'2049-01-05');


INSERT INTO fornecedores (id,nome,cidade)
VALUES
(1,'Tecinfo', 'São paulo'),
(2,'Megatech', 'Rio de janeiro'),
(3,'PCWorld', 'Belo horizonte');


INSERT INTO estoque (id,produto_id,quantidade)
VALUES

(1,'Produto 1(Notbook)',5),
(2,'Produto 2 (Smartphone)',10),
(3,'Produto 3(Tablet)',8),
(4, 'Produto 4(Monitor)',3),
(5, 'Produto 5(Impressora)',6);


SELECT * FROM produtos;

SELECT nome,preco FROM produtos WHERE  preco > 400;


SELECT cliente_id,produto_id,data FROM compras;


SELECT * FROM fornecedores;

SELECT  * FROM produtos WHERE preco> 5;



UPDATE produtos set preco =  350 where id =3;

UPDATE clientes set email = 'maria@email.com' where id =1;


UPDATE estoque set quantidade = 7 where rowid= 4;


DELETE FROM compras WHERE rowid In(3);

DELETE FROM  clientes where rowid IN(4);

INSERT INTO clientes(id,nome,email) 
VALUES

(4,'Lucas', 'lucas@email.com');


INSERT INTO produtos (id,nome,preco)
VALUES
(6, 'Teclado', 150);


INSERT INTO estoque (id,produto_id,quantidade)
VALUES
(6,6, 12);

INSERT INTO compras (id,cliente_id,produto_id,data)
VALUES
(6,4,6, '2049-01-06');

SELECT * FROM compras ORDER BY 1 DESC, 2 DESC;

SELECT produto_id FROM compras WHERE cliente_id = 2;











