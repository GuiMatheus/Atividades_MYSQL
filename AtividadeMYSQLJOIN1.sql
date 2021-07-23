CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe
( id_classe INT NOT NULL AUTO_INCREMENT,
 nome VARCHAR (255) NOT NULL,
 arma VARCHAR (255) NOT NULL,
 clam VARCHAR (255) NOT NULL,
 PRIMARY KEY (id_classe)
);

CREATE TABLE tb_personagem
(id_personagem INT NOT NULL AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
cor_cabelo VARCHAR (255) NOT NULL,
origem VARCHAR (255) NOT NULL,
atack  INT NOT NULL,
defesa INT NOT NULL,
fk_classe INT NOT NULL,
PRIMARY KEY (id_personagem),
FOREIGN KEY (fk_classe) REFERENCES tb_classe(id_classe)
);


INSERT INTO tb_classe (	nome, arma, clam) VALUES('maguito', 'tomo', 'montanhez');

 INSERT INTO tb_classe (nome, arma, clam) VALUES('barbari', 'machado', 'nordico');

INSERT INTO tb_classe (	nome, arma, clam) VALUES('azazino', 'adaga', 'sombrio');

INSERT INTO tb_classe (	nome, arma, clam) VALUES('archer', 'arco e flesha', 'florester');

INSERT INTO tb_classe (	nome, arma, clam) VALUES('lutador', 'maos limpas', 'templarios');

INSERT INTO tb_personagem (nome, cor_cabelo, origem, atack, defesa, fk_classe) VALUES ( 'Gui', 'verde', 'elfico', 5000, 1000, 1); 

INSERT INTO tb_personagem (nome, cor_cabelo, origem, atack, defesa, fk_classe) VALUES ( 'Yohinho', 'amarelo', 'oriental', 2200, 2100, 5);

INSERT INTO tb_personagem (nome, cor_cabelo, origem, atack, defesa, fk_classe) VALUES ( 'Lucaix', 'vermelho', 'ocidental', 1500, 1900,  2);  

INSERT INTO tb_personagem (nome, cor_cabelo, origem, atack, defesa, fk_classe) VALUES ( 'Tamix', 'roxo', 'nomade', 2000, 900, 4); 

INSERT INTO tb_personagem (nome, cor_cabelo, origem, atack, defesa, fk_classe) VALUES ( 'Thimendi', 'azul', 'noxus', 4000, 800, 3); 

SELECT * FROM tb_personagem WHERE atack > 2000;

SELECT * FROM tb_personagem WHERE defesa >= 1000 AND defesa <= 2000;

SELECT * FROM tb_personagem WHERE nome LIKE "%T%";

SELECT  tb_personagem.id_personagem,tb_personagem.nome, tb_classe.nome
FROM tb_personagem 
 INNER JOIN tb_classe 
ON tb_classe.id_classe = tb_personagem.fk_classe WHERE tb_classe.nome  LIKE "barbari";