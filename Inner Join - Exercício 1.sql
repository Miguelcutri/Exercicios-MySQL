CREATE TABLE tb_cargos(
    id bigint(5) AUTO_INCREMENT, -- Definindo como auto Incremente 1, 2, 3 ...
    funcao varchar(20) NOT NULL,
    ativo boolean,
    PRIMARY KEY (id) -- Definir coluna id como chave primária
);

INSERT INTO tb_cargos (funcao, ativo) VALUES ("Dev Front-end", true);
INSERT INTO tb_cargos (funcao, ativo) VALUES ("Dev Back-end", true);
INSERT INTO tb_cargos (funcao, ativo) VALUES ("Dev Full-Stack", true);
INSERT INTO tb_cargos (funcao, ativo) VALUES ("Gerente de projetos", true);
INSERT INTO tb_cargos (funcao, ativo) VALUES ("Scrum Master", true);

select * from tb_cargos;

CREATE TABLE tb_funcionario (
  id bigint AUTO_INCREMENT,
  nome varchar(50) not NULL,
  salario double(10,2),
  cargo_id bigint not NULL,
  PRIMARY KEY (id), -- Definir coluna id como chave primária
  FOREIGN KEY (cargo_id) REFERENCES tb_cargos (id) -- Definir coluna id como chave estrangeira e referenciando a tb_marcas coluna id
);

INSERT INTO tb_funcionario (nome,salario,cargo_id) VALUES ("Vitor Miguel",1600.53, 1);
INSERT INTO tb_funcionario (nome,salario,cargo_id) VALUES ("Gabriel Miguel",1800.53,2);
INSERT INTO tb_funcionario (nome,salario,cargo_id) VALUES ("Carlos Miguel", 2000.53, 4);
INSERT INTO tb_funcionario (nome,salario,cargo_id) VALUES ("Lucas Miguel",2200.53, 3);
INSERT INTO tb_funcionario (nome,salario,cargo_id) VALUES ("Tauber Miguel",2400.53, 5);
INSERT INTO tb_funcionario (nome,salario,cargo_id) VALUES ("Caue Miguel",2600.53, 6);
INSERT INTO tb_funcionario (nome,salario,cargo_id) VALUES ("Bruno Miguel", 2800.53 ,4);
INSERT INTO tb_funcionario (nome,salario,cargo_id) VALUES ("Jefferson Miguel",3000.53,3);
INSERT INTO tb_funcionario (nome,salario,cargo_id) VALUES ("Anderson Miguel",3200.53,2);
INSERT INTO tb_funcionario (nome,salario,cargo_id) VALUES ("Everton Miguel",3400.53,1 );
INSERT INTO tb_funcionario (nome,salario,cargo_id) VALUES ("Frederico Miguel",3600.53,4);
INSERT INTO tb_funcionario (nome,salario,cargo_id) VALUES ("Cleiton Miguel",3800.53,5);
INSERT INTO tb_funcionario (nome,salario,cargo_id) VALUES ("Pedro Miguel",4000.53,6);
INSERT INTO tb_funcionario (nome,salario,cargo_id) VALUES ("Thiago Miguel",4200.53,5);
INSERT INTO tb_funcionario (nome,salario,cargo_id) VALUES ("João Miguel",4400.53,5);
INSERT INTO tb_funcionario (nome,salario,cargo_id) VALUES ("Judas Miguel",4600.53,6);
INSERT INTO tb_funcionario (nome,salario,cargo_id) VALUES ("Davi Miguel",4800.53,2);
INSERT INTO tb_funcionario (nome,salario,cargo_id) VALUES ("Rogério Miguel",5000.53,1);
INSERT INTO tb_funcionario (nome,salario,cargo_id) VALUES ("Paulo Miguel",5200.53,3);
INSERT INTO tb_funcionario (nome,salario,cargo_id) VALUES ("Cesar Miguel",5400.53,4);

SELECT salario FROM tb_funcionario WHERE salario > 2000;
SELECT salario from tb_funcionario WHERE salario > 1000 and salario < 2000;
SELECT * FROM tb_funcionario where nome like "C%";

Select nome, salario, tb_cargos.funcao from tb_funcionario
inner join tb_cargos on tb_cargos.id = tb_funcionario.cargo_id;
-- pedindo um cargo específico
Select nome, salario, tb_cargos.funcao from tb_funcionario
inner join tb_cargos on tb_cargos.id = tb_funcionario.cargo_id
where tb_cargos.funcao = "Dev Front-end"