CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

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
VALUES ('Medicamentos', 'Produtos para tratamento de saúde'),
       ('Cosméticos', 'Produtos de cuidados pessoais'),
       ('Higiene', 'Produtos de higiene pessoal'),
       ('Vitaminas', 'Suplementos vitamínicos'),
       ('Bebês', 'Produtos para bebês');

INSERT INTO tb_produtos (nome_produto, preco, estoque, categoria_id)
VALUES ('Aspirina', 10.50, 100, 1),
       ('Creme Hidratante', 25.75, 50, 2),
       ('Shampoo', 15.00, 80, 3),
       ('Multivitamínico', 60.00, 30, 4),
       ('Fralda', 35.90, 150, 5),
       ('Ibuprofeno', 8.20, 120, 1),
       ('Batom', 12.90, 60, 2),
       ('Sabonete Líquido', 7.50, 90, 3);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.nome_produto, p.preco, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id;

SELECT p.nome_produto, p.preco, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id
WHERE c.nome_categoria = 'Cosméticos';
