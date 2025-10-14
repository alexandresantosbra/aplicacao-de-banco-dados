CREATE TABLE cliente (
    id_cliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100),
    email VARCHAR(150) UNIQUE,
    telefone VARCHAR(20),
    data_cadastro DATE
);

INSERT INTO comidas_favoritas (nome_pessoa, comida, tipo, nota, cidade) VALUES
('João Silva', 'Feijoada', 'Brasileira', 10, 'São Paulo'),
('Maria Oliveira', 'Sushi Uramaki', 'Japonesa', 9, 'Rio de Janeiro'),
('Pedro Souza', 'Pizza Margherita', 'Italiana', 8, 'Curitiba'),
('Ana Costa', 'Acarajé', 'Baiana', 10, 'Salvador'),
('Carlos Lima', 'Hamburguer Gourmet', 'Americana', 7, 'Belo Horizonte');


USE abd_03361_a_alexandre_correa;


CREATE TABLE comidas_favoritas (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_pessoa VARCHAR(100) NOT NULL,
    comida VARCHAR(100) NOT NULL,
    tipo VARCHAR(50),
    nota INT CHECK (nota >= 1 AND nota <= 10),
    cidade VARCHAR(100)
);

INSERT INTO comidas_favoritas (nome_pessoa, comida, tipo, nota, cidade) VALUES
('Marta Ferreira', 'Pão de Queijo', 'Mineira', 9, 'Belo Horizonte'),
('Gabriel Dias', 'Churrasco Gaúcho', 'Gaúcha', 10, 'Porto Alegre'),
('Lúcia Nunes', 'Torta Holandesa', 'Doce', 8, 'Campinas'),
('Rafael Mello', 'Esfiha Aberta', 'Árabe', 9, 'São Paulo'),
('Clara Silveira', 'Vatapá', 'Baiana', 10, 'Salvador');

SELECT nome_pessoa, comida, nota, cidade
FROM comidas_favoritas
WHERE nota > 8;

