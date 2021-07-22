create database db_serviçoRH;
/* Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
*/
USE db_serviçoRH;
drop table tb_funcionario;
CREATE TABLE tb_funcionario
(
idFuncionario int (5) not null auto_increment,
nome varchar(80) not null,
idade int(5) not null,
salario float not null,
cargo varchar(80) not null,
primary key (idFuncionario)
);

insert into tb_funcionario
(nome, idade, salario, cargo)
values 
("Gui", 22, 2.000, "aprendiz" );
select * from tb_funcionario;
insert into tb_funcionario
(nome, idade, salario, cargo)
values 
("Yohinho", 19, 1.900, "aprendiz" );
insert into tb_funcionario
(nome, idade, salario, cargo)
values 
("Babi", 18, 5.000, "administradora" );
insert into tb_funcionario
(nome, idade, salario, cargo)
values 
("Max", 20, 7.000, "diretor" );
insert into tb_funcionario
(nome, idade, salario, cargo)
values 
("Sull", 20, 3.000, "vigilante silenciosa" );


select * from db_serviçorh.tb_funcionario where salario < 2.000;
select * from db_serviçorh.tb_funcionario where salario > 2.000;

update tb_funcionario set salario = 2500 where idFuncionario = 2;