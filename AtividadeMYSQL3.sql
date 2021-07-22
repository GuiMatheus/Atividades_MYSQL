/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.

Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/
create database db_Uagadou;
use db_Uagadou;

create table tb_infozinhas
(
id INT (6) NOT NULL AUTO_INCREMENT,
nome VARCHAR (55) NOT NULL,
idade INT NOT NULL,
nacionalidade VARCHAR (55) NOT NULL,
nota FLOAT NOT NULL,
magia VARCHAR (55) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_infozinhas (nome, idade, nacionalidade, nota, magia) VALUES ("Gui", 16, "BR", 10, "Luz");

INSERT INTO tb_infozinhas (nome, idade, nacionalidade, nota, magia) VALUES ("Yohinho", 14, "JP", 9, "Ar");

INSERT INTO tb_infozinhas (nome, idade, nacionalidade, nota, magia) VALUES ("Tami", 17, "PT", 8, "Fogo");

INSERT INTO tb_infozinhas (nome, idade, nacionalidade, nota, magia) VALUES ("Sabrion", 15, "FR", 6, "Agua");

INSERT INTO tb_infozinhas (nome, idade, nacionalidade, nota, magia) VALUES ("Hera", 13, "GR", 5, "Terra");

INSERT INTO tb_infozinhas (nome, idade, nacionalidade, nota, magia) VALUES ("Lilith", 12, "BR", 5, "Sombras");

SELECT * FROM tb_infozinhas;

SELECT * FROM tb_infozinhas WHERE nota > 7;

SELECT * FROM tb_infozinhas WHERE nota < 7;

UPDATE tb_infozinhas SET nota = 10 WHERE id = 2;