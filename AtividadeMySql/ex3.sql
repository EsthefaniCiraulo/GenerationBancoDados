CREATE DATABASE `escola`;

CREATE TABLE `estudantes` (
  `id` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `RA` varchar(200) NOT NULL,
  `turma` varchar(200) NOT NULL,
  `nota` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `estudantes` VALUES (1,'joao','RA00001','5 serie',5);
INSERT INTO `estudantes` VALUES (2,'maria','RA00002','6 serie',8);
INSERT INTO `estudantes` VALUES (3,'jose','RA00003','7 serie',7.5);
INSERT INTO `estudantes` VALUES (4,'pedro','RA00004','5 serie',4);
INSERT INTO `estudantes` VALUES (5,'rute','RA00005','6 serie',2);
INSERT INTO `estudantes` VALUES (6,'henrique','RA00006','5 serie',10);
INSERT INTO `estudantes` VALUES (7,'esthefani','RA00007','7 serie',9);
INSERT INTO `estudantes` VALUES (8,'esther','RA00008','8 serie',7);



SELECT * FROM escola.estudantes where nota > 7;

SELECT * FROM escola.estudantes where nota < 7;

update escola.estudantes set nota = 7 where nota < 7;