CREATE DATABASE atvloja2;
USE atvloja2;



CREATE TABLE cliente(
codigo INT PRIMARY KEY auto_increment,
nome VARCHAR(30) NOT null,
rg VARCHAR(15) NOT NULL
);



CREATE TABLE endereco(
codigo INT PRIMARY KEY auto_increment,
rua VARCHAR(30) NOT NULL,
num INT NOT NULL,
compl VARCHAR(10) NOT null,
bairro VARCHAR(25) NOT null,
cidade VARCHAR(15) NOT null,
uf CHAR(2) NOT null,
cep INT(8) NOT null,
codCliente INT NOT null,
FOREIGN KEY(codCliente) REFERENCES cliente(codigo)
);



CREATE TABLE telefone(
codigo INT PRIMARY KEY auto_increment,
DDD CHAR(3) NOT null,
numero CHAR(9) NOT null,
tipo VARCHAR(10) NOT null,
codCliente INT NOT null,
FOREIGN KEY(codCliente) REFERENCES cliente(codigo)
);



CREATE TABLE compra(
codigo INT PRIMARY KEY AUTO_INCREMENT,
vlTotal DECIMAL(7,2) NOT null,
dataa DATE NOT null,
codCliente INT NOT null,
FOREIGN KEY(codCliente) REFERENCES cliente(codigo)
);



CREATE TABLE produto(
codigo INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(20) NOT NULL,
tipo VARCHAR(15) NOT NULL,
quantidade INT NOT NULL,
valor DECIMAL(5,2) NOT NULL
);



CREATE TABLE produtocompra(
codigo INT PRIMARY KEY AUTO_INCREMENT,
qtdVendida INT NOT NULL,
precoVenda DECIMAL(7,2) NOT null,
codProduto INT NOT NULL,
codCompra INT NOT null,
FOREIGN KEY(codProduto) REFERENCES produto(codigo),
FOREIGN KEY(codCompra) REFERENCES compra(codigo)
);



SHOW TABLES;



INSERT INTO cliente (`nome`, `rg`) VALUES
('Ale','12345678'),
('Julio','72345678'),
('Maria','62345678'),
('Joao','52345678'),
('Narcos','42345678');

INSERT INTO endereco (`rua`, `num`, `compl`, `bairro`, `cidade`, `uf`, `cep`, `codCliente`) VALUES
('Rua Paula Gomes', '123', 'Casa', 'Pq. Maria', 'Loirandia', 'SP', '13181321', 1),
('Rua Silva Pereira', '731', 'Casa', 'Pq. Gomes', 'Sivandia', 'RJ', '13181325', 2),
('Rua Gustavo Alves', '54', 'Predio', 'Pq. Pereira', 'Parandia', 'MG', '13181326', 3),
('Rua Paulista', '547', 'Predio', 'Pq. Monalisa', 'Norolandia', 'SC', '13181327', 4),
('Rua Monalisa', '321', 'Casa', 'Pq. Paulista', 'Gomeslandia', 'SE', '13181328', 5);

INSERT INTO telefone (`ddd`, `numero`, `tipo`, `codCliente`)VALUES
(19,'912345798', 'Celular',1),
(21,'912345889', 'Celular',2),
(31,'912345961', 'Celular',3),
(64,'912345152', 'Celular',4),
(78,'912345343', 'Celular',5);

INSERT INTO compra (`vlTotal`, `dataa`, `codCliente`) VALUES
(18345.67, '2021-08-01', 1),
(24345.67, '2021-10-20', 2),
(36345.67, '2021-01-07', 3),
(49345.67, '2021-09-19', 4),
(58345.67, '2021-12-31', 5);

INSERT INTO produto (`nome`, `tipo`, `quantidade`, `valor`) VALUES
('Maça','Fruta',1,150.50),
('Pera','Fruta',5,050.50),
('Peito de frango','Frango',2,550.50),
('Escova','Higiene',1,999.99),
('Chuveira','Banheiro',1,500.99);

INSERT INTO produtocompra(`qtdVendida`, `precoVenda`, `codProduto`, `codCompra`) VALUES
(10,1500.99,1,5),
(15,9500.99,2,4),
(2,6500.99,3,3),
(30,8000.99,4,2),
(5,1000.99,5,1);