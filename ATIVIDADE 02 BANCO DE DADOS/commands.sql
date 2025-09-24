--database: ./db.sqlite
CREATE TABLE
    cargo (
        id INTEGER  PRIMARY KEY,
        nome TEXT 
    );

CREATE TABLE
    Funcionario (
        id INTEGER  PRIMARY KEY,
        nome TEXT,
        cargoId INTEGER,
        FOREIGN KEY (cargoId) REFERENCES cargo (id)
    );

CREATE TABLE
    cliente (
        id INTEGER  PRIMARY KEY,
        nome TEXT 
    );

CREATE TABLE
    livro (
        id INTEGER  PRIMARY KEY,
        nome TEXT,
        categoria TEXT,
        clienteid INTEGER,
        FOREIGN KEY (clienteid) REFERENCES cliente (id)
    );

INSERT INTO
    cliente (id, nome)
VALUES
    (1, 'Jose'),
    (2, 'Guilherme'),
    (3, 'Gabriel'),
    (4, 'Lucas'),
    (5,'Jean');

INSERT INTO
    livro (id, nome, categoria, clienteId)
VALUES
    (1, 'harry potter', 'ficção', 1),
    (2, 'A megera Domada', 'Romance', NULL), 
    (3, 'Codigo limpo', 'tecnologia', 2),
    (4, 'Bíblia', 'Religioso', NULL),
    (5,'Percy Jackson', 'Ficção', 4);

    INSERT INTO
    Cargo(Id, nome)
VALUES
    (1, 'Bibliotecaria'),
    (2, 'Zelador'),
    (3, 'Gerente'),
    (4, 'Recepcionista'),
    (5,'Técnico');

    INSERT INTO
    Funcionario (id, nome, CargoId) 
VALUES
    (1, 'Maria', 1),
    (2, 'Guilherme', 3), 
    (3, 'Yan', 2),
    (4, 'Gabriel', 4),
    (5,'Alisson', 5);

    
DROP TABLE livro;

DROP TABLE cliente;

DROP TABLE Funcionario;

DROP TABLE cargo;
