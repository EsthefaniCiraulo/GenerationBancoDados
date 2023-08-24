CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    categoria_id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria TEXT
);


CREATE TABLE tb_cursos (
    curso_id INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    carga_horaria INT NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(categoria_id)
);


INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES ('Programação', 'Cursos de programação e desenvolvimento'),
       ('Design', 'Cursos de design e criação visual'),
       ('Negócios', 'Cursos de empreendedorismo e negócios'),
       ('Idiomas', 'Cursos de aprendizado de idiomas'),
       ('Saúde', 'Cursos na área de saúde');

INSERT INTO tb_cursos (nome_curso, preco, carga_horaria, categoria_id)
VALUES ('Curso de Python', 550.00, 40, 1),
       ('Curso de Design Gráfico', 750.00, 60, 2),
       ('Empreendedorismo Digital', 680.00, 50, 3),
       ('Inglês Intermediário', 350.00, 30, 4),
       ('Curso de Nutrição Básica', 520.00, 45, 5),
       ('Curso de Java', 800.00, 60, 1),
       ('Espanhol para Viagens', 280.00, 20, 4),
       ('Introdução à Psicologia', 480.00, 40, 5);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome_curso LIKE '%J%';

SELECT c.nome_curso, c.preco, ca.nome_categoria
FROM tb_cursos c
INNER JOIN tb_categorias ca ON c.categoria_id = ca.categoria_id;

SELECT c.nome_curso, c.preco, ca.nome_categoria
FROM tb_cursos c
INNER JOIN tb_categorias ca ON c.categoria_id = ca.categoria_id
WHERE ca.nome_categoria = 'Programação';
