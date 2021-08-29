-- Atores
--INSERT INTO atores (nome) VALUES ('Brad Pitt');
--INSERT INTO atores (nome) VALUES ('Leonardo DiCaprio');
--INSERT INTO atores (nome) VALUES ('Johnny Depp');
--INSERT INTO atores (nome) VALUES ('Margot Robbie');
--INSERT INTO atores (nome) VALUES ('Angelina Jolie');
--INSERT INTO atores (nome) VALUES ('Jennifer Aniston');
--SELECT * FROM atores;

--Generos
--INSERT INTO generos (genero) VALUES ('Comédia');
--INSERT INTO generos (genero) VALUES ('Terror');
--INSERT INTO generos (genero) VALUES ('Animação');
--INSERT INTO generos (genero) VALUES ('Aventura');
--INSERT INTO generos (genero) VALUES ('Suspense');
--INSERT INTO generos (genero) VALUES ('Fantasia');
--SELECT * FROM generos;

--Filmes
--INSERT INTO filmes (titulo, valor, id_genero) VALUES ('Tomb raider', 20, 4);
--INSERT INTO filmes (titulo, valor, id_genero) VALUES ('Família do Bagulho', 32, 1);
--INSERT INTO filmes (titulo, valor, id_genero) VALUES ('O Regresso', 25, 5);
--INSERT INTO filmes (titulo, valor, id_genero) VALUES ('Guerra Mundial Z', 20, 2);
--INSERT INTO filmes (titulo, valor, id_genero) VALUES ('A Fantástica Fábrica de Chocolate', 15, 6);
--INSERT INTO filmes (titulo, valor, id_genero) VALUES ('Uma Aventura Lego', 20, 3);
--INSERT INTO filmes (titulo, valor, id_genero) VALUES ('Esquadrão Suicida', 28, 4);
--SELECT * FROM filmes;

--Clientes
--INSERT INTO clientes (nome, sobrenome, telefone, endereco) VALUES ('Maria Clara', 'Silva', '2584-7646', 'R. Da paz, 25');
--INSERT INTO clientes (nome, sobrenome, telefone, endereco) VALUES ('Julia', 'Coutinho', '2884-8644', 'R. Umuarama, 72');
--INSERT INTO clientes (nome, sobrenome, telefone, endereco) VALUES ('João', 'de Deus', '95824-2658', 'Av. Tiradentes, 1001');
--INSERT INTO clientes (nome, sobrenome, telefone, endereco) VALUES ('Rodrigo', 'Constantino', '93854-7467', 'Av. Paulista, 2505');
--INSERT INTO clientes (nome, sobrenome, telefone, endereco) VALUES ('Eduardo', 'Paz Silva', '2532-4446', 'R. Sol da meia noite, 306');
--INSERT INTO clientes (nome, sobrenome, telefone, endereco) VALUES ('Alberto', 'Castro', '3448-9856', 'R. Coelho lisboa, 408');
--INSERT INTO clientes (nome, sobrenome, telefone, endereco) VALUES ('Evelyn', 'Bertolloni', '99425-7742', 'R. Caninana, 679');
--SELECT * FROM clientes;

--Emprestimo
--INSERT INTO imprestimos (data, id_cliente) VALUES ('2021-06-21', 1);
--INSERT INTO imprestimos (data, id_cliente) VALUES ('2021-04-15', 2);
--INSERT INTO imprestimos (data, id_cliente) VALUES ('2021-02-01', 3);
--INSERT INTO imprestimos (data, id_cliente) VALUES ('2021-06-11', 4);
--INSERT INTO imprestimos (data, id_cliente) VALUES ('2021-03-29', 5);
--INSERT INTO imprestimos (data, id_cliente) VALUES ('2021-01-21', 6);
--INSERT INTO imprestimos (data, id_cliente) VALUES ('2021-02-10', 7);
--SELECT * FROM imprestimos; 

--dvds
--INSERT INTO dvds (id_filme, quatidade) VALUES (1,1);
--INSERT INTO dvds (id_filme, quatidade) VALUES (2,1);
--INSERT INTO dvds (id_filme, quatidade) VALUES (3,1);
--INSERT INTO dvds (id_filme, quatidade) VALUES (4,1);
--INSERT INTO dvds (id_filme, quatidade) VALUES (5,1);
--INSERT INTO dvds (id_filme, quatidade) VALUES (6,1);
--INSERT INTO dvds (id_filme, quatidade) VALUES (7,1);
--SELECT * FROM dvds;

--Filmes_imprestimo
--INSERT INTO filmes_imprestimo (id_dvd, id_imprestimos) VALUES (1,1);
--INSERT INTO filmes_imprestimo (id_dvd, id_imprestimos) VALUES (2,2);
--INSERT INTO filmes_imprestimo (id_dvd, id_imprestimos) VALUES (3,3);
--INSERT INTO filmes_imprestimo (id_dvd, id_imprestimos) VALUES (4,4);
--INSERT INTO filmes_imprestimo (id_dvd, id_imprestimos) VALUES (5,5);
--INSERT INTO filmes_imprestimo (id_dvd, id_imprestimos) VALUES (6,6);
--INSERT INTO filmes_imprestimo (id_dvd, id_imprestimos) VALUES (7,7);
--SELECT * FROM filmes_imprestimo;

--devolucao
--INSERT INTO devolucao(id_imprestimo, data) VALUES (1,'2021-06-25');
--INSERT INTO devolucao(id_imprestimo, data) VALUES (2,'2021-04-20');
--INSERT INTO devolucao(id_imprestimo, data) VALUES (3,'2021-02-05');
--INSERT INTO devolucao(id_imprestimo, data) VALUES (4,'2021-06-16');
--INSERT INTO devolucao(id_imprestimo, data) VALUES (5,'2021-04-02');
--INSERT INTO devolucao(id_imprestimo, data) VALUES (6,'2021-02-06');
--INSERT INTO devolucao(id_imprestimo, data) VALUES (7,'2021-02-15');
--SELECT * FROM devolucao;

--filmes_devolucao
--INSERT INTO filme_devolucao (id_devolucao, id_filme_imprestimo) VALUES (1,1);
--INSERT INTO filme_devolucao (id_devolucao, id_filme_imprestimo) VALUES (2,2);
--INSERT INTO filme_devolucao (id_devolucao, id_filme_imprestimo) VALUES (3,3);
--INSERT INTO filme_devolucao (id_devolucao, id_filme_imprestimo) VALUES (4,4);
--INSERT INTO filme_devolucao (id_devolucao, id_filme_imprestimo) VALUES (5,5);
--INSERT INTO filme_devolucao (id_devolucao, id_filme_imprestimo) VALUES (6,6);
--INSERT INTO filme_devolucao (id_devolucao, id_filme_imprestimo) VALUES (7,7);
--SELECT * FROM filme_devolucao;

--atores_filmes
--INSERT INTO atores_filmes(id_filme, id_atores, personagem) VALUES (1,5,'Lara Croft');
--INSERT INTO atores_filmes(id_filme, id_atores, personagem) VALUES (2,6,'Rose Reilly');
--INSERT INTO atores_filmes(id_filme, id_atores, personagem) VALUES (3,2,'Hugh Glass');
--INSERT INTO atores_filmes(id_filme, id_atores, personagem) VALUES (4,1,'Gerry Lane');
--INSERT INTO atores_filmes(id_filme, id_atores, personagem) VALUES (5,3,'Willy Wonka');
--INSERT INTO atores_filmes(id_filme, id_atores, personagem) VALUES (6,4,'Arlequina');
--INSERT INTO atores_filmes(id_filme, id_atores, personagem) VALUES (7,4,'Arlequina');
--SELECT * FROM atores_filmes;









