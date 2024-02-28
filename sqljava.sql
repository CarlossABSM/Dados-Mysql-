--
-- a linha abixo cria um banco de dados 
create database dbinfox;
-- a linha a baixo escolhe o banco de dados s ser ultilizado 
use dbinfox;
-- o bloco de instruções a baixo cria uma tabela
create table tbusuarios(
id int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null
);
-- o campo a baixo descreve a tabela 
describe tbusuarios;
-- A linha a baixo inseri dados na tabela (crud) 
-- Create -> insert
insert into tbusuarios(id,usuario,fone,login,senha)
values(1,'Jose de Assis','999-999','josedeassis','123456');
-- linha a baixo exibe dados da tabela(CRUD)
-- read -> select from
select* from tbusuarios;

insert into tbusuarios(id,usuario,fone,login,senha)
values(2,'joão francisco','999-999','jfd','123456');
insert into tbusuarios(id,usuario,fone,login,senha)
values(3,'adan sandler ','999-999','sandlesr','123456');
-- a linha a baixo modifica a tabela (CRUD) 
-- update --> update 

update tbusuarios set fone= '888-8888' where id=2;
-- a linha a baixo apaga um usuario da tabela 
-- delete -> delete 

delete from tbusuarios where id=3;

select * from tbusuarios;

create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
cidadecli varchar (50),
estadocli varchar(50),
fonecli varchar(50) not null,
emailcli varchar(50)
);

describe tbclientes;

insert into tbclientes(nomecli,cidadecli,estadocli,fonecli,emailcli)
values ('rodolfo abrantes','jundiai','SP','4002-8922','rodolfo@gmail.codm');


select * from tbclientes;

use dbinfox;

create table tbos(
os int primary key auto_increment,
data_os timestamp default current_timestamp ,
equipamento varchar(150) not null,
defeito varchar(150) not null,
serviço varchar(150),
tecnico varchar(150),
valor decimal(10,2),
idcli int not null,
foreign key(idcli) references tbclientes(idcli) 
);

describe tbos;

insert tbos (equipamento,defeito,serviço
