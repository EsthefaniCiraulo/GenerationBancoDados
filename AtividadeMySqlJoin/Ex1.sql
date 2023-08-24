CREATE DATABASE `db_generation_game_online`;

use `db_generation_game_online`;

CREATE TABLE `tb_classes` (
  `id` int NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `ativo` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `tb_personagens` (
  `id` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `id_classe` int NOT NULL,
  `poder_ataque` int NOT NULL,
  `poder_defesa` int NOT NULL,
  `ativo` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

INSERT INTO `tb_classes` VALUES (1,'arqueiro','S');
INSERT INTO `tb_classes` VALUES (2,'mago','S');
INSERT INTO `tb_classes` VALUES (3,'espadachin','S');
INSERT INTO `tb_classes` VALUES (4,'paladino','S');
INSERT INTO `tb_classes` VALUES (5,'rogue','S');

INSERT INTO `tb_personagens` VALUES (1,'ArcaneSorcerer',2,2000,1000,'S');
INSERT INTO `tb_personagens` VALUES (2,'Shadowblade',3,3000,6000,'S');
INSERT INTO `tb_personagens` VALUES (3,'LunaMyst',4,1000,10000,'S');
INSERT INTO `tb_personagens` VALUES (4,'IronHearted',3,5000,5000,'S');
INSERT INTO `tb_personagens` VALUES (5,'EmberWarden',4,10000,10000,'S');
INSERT INTO `tb_personagens` VALUES (6,'NovaHex',2,1000,500,'S');
INSERT INTO `tb_personagens` VALUES (7,'SeraphicReaper',1,6000,1000,'S');
INSERT INTO `tb_personagens` VALUES (8,'AstralRogue',5,4000,2000,'S');

SELECT * FROM tb_personagens where poder_ataque > 2000;

SELECT * FROM tb_personagens where poder_defesa between 1000 and 2000;

SELECT * FROM tb_personagens where nome like '%c%';

SELECT * FROM tb_personagens p inner join tb_classes c on c.id = p.id_classe;

SELECT * FROM tb_personagens p inner join tb_classes c on c.id = p.id_classe where c.id = 2;