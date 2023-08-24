CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    categoria_id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria TEXT
);

CREATE TABLE tb_produtos (
    produto_id INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(categoria_id)
);


INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES ('Carnes Bovinas', 'Cortes de carne bovina'),
       ('Carnes Suínas', 'Cortes de carne suína'),
       ('Aves', 'Cortes de frango e outras aves'),
       ('Embutidos', 'Produtos embutidos'),
       ('Mariscos', 'Produtos do mar');

INSERT INTO tb_produtos (nome_produto, preco, estoque, categoria_id)
VALUES ('Filé Mignon', 55.00, 30, 1),
       ('Costela', 32.50, 20, 1),
       ('Linguiça Calabresa', 18.75, 40, 4),
       ('Salmão Fresco', 62.00, 15, 5),
       ('Peito de Frango', 28.00, 25, 3),
       ('Picanha', 65.90, 10, 1),
       ('Lula', 45.20, 12, 5),
       ('Presunto', 15.50, 30, 4);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.nome_produto, p.preco, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id;

SELECT p.nome_produto, p.preco, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id
WHERE c.nome_categoria IN ('Aves', 'Frutas');
