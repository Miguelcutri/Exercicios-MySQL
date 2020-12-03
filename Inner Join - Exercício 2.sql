CREATE TABLE categorias(
    id bigint(5) AUTO_INCREMENT, -- Definindo como auto Incremente 1, 2, 3 ...
    tipo varchar(50) NOT NULL,
    estoque boolean,
    PRIMARY KEY (id) -- Definir coluna id como chave primária
);

CREATE TABLE tb_produto (
  id bigint AUTO_INCREMENT,
  nome varchar(50) not NULL,
  preço double(10,2),
  codigo_id bigint not NULL,
  PRIMARY KEY (id), -- Definir coluna id como chave primária
  FOREIGN KEY (codigo_id) REFERENCES categorias (id) -- Definir coluna id como chave estrangeira e referenciando a tb_marcas coluna id
);

INSERT INTO tb (tipo, estoque) VALUES ("Eletrônicos", true);
INSERT INTO categorias (tipo, estoque) VALUES ("Escritório", true);
INSERT INTO categorias (tipo, estoque) VALUES ("Cozinha", true);
INSERT INTO categorias (tipo, estoque) VALUES ("Roupas", true);
INSERT INTO categorias (tipo, estoque) VALUES ("Quarto", true);

INSERT INTO tb_produto (nome, preço, codigo_id) VALUES ("Celular", 1000.00, 1);
INSERT INTO tb_produto (nome, preço, codigo_id) VALUES ("Celular", 3000.00, 1);
INSERT INTO tb_produto (nome, preço, codigo_id) VALUES ("Celular", 1500.00, 1);
INSERT INTO tb_produto (nome, preço, codigo_id) VALUES ("Celular", 800.00, 1);
INSERT INTO tb_produto (nome, preço, codigo_id) VALUES ("Celular", 3500.00, 1);
INSERT INTO tb_produto (nome, preço, codigo_id) VALUES ("Computador", 4000.00, 1);
INSERT INTO tb_produto (nome, preço, codigo_id) VALUES ("Lamparina", 50.00, 2);
INSERT INTO tb_produto (nome, preço, codigo_id) VALUES ("Pasta", 15.00, 2);
INSERT INTO tb_produto (nome, preço, codigo_id) VALUES ("Armário", 800.00, 2);
INSERT INTO tb_produto (nome, preço, codigo_id) VALUES ("Livros", 20.00, 2);
INSERT INTO tb_produto (nome, preço, codigo_id) VALUES ("Jogo de facas", 30.00, 3);
INSERT INTO tb_produto (nome, preço, codigo_id) VALUES ("Mesa", 300.00, 3);
INSERT INTO tb_produto (nome, preço, codigo_id) VALUES ("Escorredor de louça", 50.00, 3);
INSERT INTO tb_produto (nome, preço, codigo_id) VALUES ("Panela de pressão", 50.00, 3);
INSERT INTO tb_produto (nome, preço, codigo_id) VALUES ("Detergente", 10.00, 3);
INSERT INTO tb_produto (nome, preço, codigo_id) VALUES ("Jogo de facas", 30.00, 5);
INSERT INTO tb_produto (nome, preço, codigo_id) VALUES ("Mesa", 300.00, 5);
INSERT INTO tb_produto (nome, preço, codigo_id) VALUES ("Travesseiro", 50.00, 4);
INSERT INTO tb_produto (nome, preço, codigo_id) VALUES ("Quadro", 50.00, 4);
INSERT INTO tb_produto (nome, preço, codigo_id) VALUES ("Pulseira", 10.00, 4);

SELECT preço FROM tb_produto WHERE preço > 2000;

SELECT preço from tb_produto WHERE preço > 1000 and preço < 2000;

SELECT * FROM tb_produto where nome like "C%";

Select nome, preço, categorias.tipo from tb_produto
inner join categorias on categorias.id = tb_produto.codigo_id;

Select nome, preço, categorias.tipo from tb_produto
inner join categorias on categorias.id = tb_produto.codigo_id
where categorias.tipo = "Eletrônicos"

