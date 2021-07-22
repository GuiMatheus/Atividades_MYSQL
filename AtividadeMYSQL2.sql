/*Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/
create database db_lojita;
use db_lojita;

create table tb_produtis
(
idProduto int (6) not null auto_increment,
nome varchar (50) not null,
tamanho varchar (50) not null,
categoria varchar (50) not null,
preco float not null,
primary key (idProduto)
);

insert into tb_produtis (nome, tamanho, categoria, preco)values ("Urso","gigane", "pelucias", 1500);

insert into tb_produtis (nome, tamanho, categoria, preco)values ("controle universal","normal", "tecnologia", 2700);

insert into tb_produtis (nome, tamanho, categoria, preco)values ("Jaqueta","exg", "roupas caras", 5500);

insert into tb_produtis (nome, tamanho, categoria, preco)values ("Mouse sem fio","pequeno", "tecnologia", 50);

insert into tb_produtis (nome, tamanho, categoria, preco)values ("Rosa","enorme", "planta", 100);

insert into tb_produtis (nome, tamanho, categoria, preco)values ("Prato","fundo", "louça cara", 200);

insert into tb_produtis (nome, tamanho, categoria, preco)values ("Vaso","grandao", "decoracao", 300);

select * from tb_produtis;

select * from tb_produtis where preco > 500;

select * from tb_produtis where preco < 500;

update tb_produtis set preco = 2500 where idProduto = 2;

