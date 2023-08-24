CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

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
VALUES ('Ferramentas', 'Ferramentas para construção e reparos'),
       ('Materiais Elétricos', 'Produtos elétricos para construção'),
       ('Hidráulica', 'Produtos hidráulicos para construção'),
       ('Pisos e Revestimentos', 'Materiais para pisos e revestimentos'),
       ('Tintas e Acabamentos', 'Produtos para pintura e acabamento');

INSERT INTO tb_produtos (nome_produto, preco, estoque, categoria_id)
VALUES ('Martelo', 15.50, 40, 1),
       ('Fio Elétrico', 2.50, 200, 2),
       ('Vaso Sanitário', 120.00, 10, 3),
       ('Porcelanato', 45.00, 30, 4),
       ('Tinta Látex', 22.75, 50, 5),
       ('Serra Circular', 180.00, 15, 1),
       ('Cimento', 20.90, 100, 4),
       ('Chuveiro Elétrico', 85.00, 25, 2);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.nome_produto, p.preco, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id;

SELECT p.nome_produto, p.preco, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id
WHERE c.nome_categoria = 'Hidráulica';
