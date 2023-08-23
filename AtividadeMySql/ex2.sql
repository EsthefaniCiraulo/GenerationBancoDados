CREATE DATABASE `ecommerce`;

CREATE TABLE `produtos` (
  `id` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `codigo` varchar(200) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `preco` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `produtos` VALUES (1,'celular','00001','celular novo xingling',1500);
INSERT INTO `produtos` VALUES (2,'computador','00002','computador negativo',2000);
INSERT INTO `produtos` VALUES (3,'laptop','00003','laptop da nasa',3000);
INSERT INTO `produtos` VALUES (4,'tablet','00004','tablet',2000);
INSERT INTO `produtos` VALUES (5,'teclado','00005','teclado luminoso',350);
INSERT INTO `produtos` VALUES (6,'mouse','00006','mouse sem fio',1000);
INSERT INTO `produtos` VALUES (7,'fone de ouvido wireless','00007','fone de ouvido sem fio',2000);
INSERT INTO `produtos` VALUES (8,'impressora','00008','impressora colodira a laser',2000);

SELECT * FROM ecommerce.produtos where preco > 500;

SELECT * FROM ecommerce.produtos where preco < 500;

update ecommerce.produtos set preco = 1000 where preco < 500;