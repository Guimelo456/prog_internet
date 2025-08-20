-- database: ./db.sqlite

CREATE TABLE cursos (id, nome, aulas);

DROP TABLE cursos;


CREATE TABLE cursos (
    id INTEGER NOT NULL,
    nome TEXT NOT NULL,
    aulas INTEGER 
);


PRAGMA TABLE_INFO('cursos');

SELECT * FROM cursos;

INSERT INTO cursos (id, nome, aulas) VALUES
(1,'HTML',  10);

INSERT INTO cursos (id, nome, Aulas)VALUES
(2, 'CSS', 10),
(5, 'HTML', 4),
(4, 'Javascript', 6);


INSERT INTO cursos (id, nome, aulas) VALUES (1,'HTML', 10);

DELETE FROM "cursos";

DELETE FROM "cursos"
WHERE "id" = 1;






SELECT * FROM cursos
LIMIT 2;


UPDATE "cursos" SET "nome" ='HTML e CSS', "aulas" = 20 WHERE
"id" = 1











