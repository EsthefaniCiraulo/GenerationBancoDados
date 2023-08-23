CREATE DATABASE `rh`;

CREATE TABLE `colaboradores` (
  `id` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(200) NOT NULL,
  `dataNascimento` datetime NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `salario` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `colaboradores` VALUES (1,'João','Teste 1','1992-07-25 00:00:00','11111111111',1500);
INSERT INTO `colaboradores` VALUES (2,'Maria','Teste 2','1961-11-10 00:00:00','22222222222',1000);
INSERT INTO `colaboradores` VALUES (3,'Jóse','Teste 3','1964-10-01 00:00:00','3333333333333',3000);
INSERT INTO `colaboradores` VALUES (4,'Esthefani','Teste 4','1993-11-07 00:00:00','444444444444',15000);
INSERT INTO `colaboradores` VALUES (5,'Josias','Teste 5','1995-10-07 00:00:00','5555555555555555',20000);

SELECT * FROM rh.colaboradores where salario > 2000;

SELECT * FROM rh.colaboradores where salario < 2000;

update rh.colaboradores set salario = 1500 where salario > 2000;