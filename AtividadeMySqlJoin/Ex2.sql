CREATE DATABASE `db_pizzaria_legal`;

use `db_pizzaria_legal`;

CREATE TABLE `tb_categorias` (
  `id` int NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `ativo` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `tb_pizzas` (
  `id` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `id_categoria` int NOT NULL,
  `valor` decimal NOT NULL,
  `ativo` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO `tb_categorias` VALUES (1,'salgada','S');
INSERT INTO `tb_categorias` VALUES (2,'doce','S');

INSERT INTO `tb_pizzas` VALUES (1,'Margherita',1,40,'S');
INSERT INTO `tb_pizzas` VALUES (2,'Pepperoni Supreme',1,50,'S');
INSERT INTO `tb_pizzas` VALUES (3,'Hawaiian Delight',1,70,'S');
INSERT INTO `tb_pizzas` VALUES (4,'BBQ Chicken Ranch',1,60,'S');
INSERT INTO `tb_pizzas` VALUES (5,'Chocolate Lovers Dream',2,70,'S');
INSERT INTO `tb_pizzas` VALUES (6,'Mediterranean Veggie',1,40,'S');
INSERT INTO `tb_pizzas` VALUES (7,'Caramel Apple Crisp',2,70,'S');
INSERT INTO `tb_pizzas` VALUES (8,'Meat Feast',1,80,'S');

SELECT * FROM tb_pizzas where valor > 45;

SELECT * FROM tb_pizzas where valor between 50 and 100;

SELECT * FROM tb_pizzas where nome like '%m%';

SELECT * FROM tb_pizzas p inner join tb_categorias c on c.id = p.id_categoria;

SELECT * FROM tb_pizzas p inner join tb_categorias c on c.id = p.id_categoria where c.id = 2;