--DML
--atores
--SELECT * FROM atores;

--clientes
--SELECT * FROM clientes;

--filmes
--SELECT * FROM filmes;

--generos
--SELECT * FROM generos;

--DML - Consulta mais específica - filmes / genero
--SELECT f.titulo, g.genero, f.valor FROM filmes AS f, generos as g WHERE f.id_genero = g.id;

--DML - Consulta mais específica - Eu quem fiz sou foda
--SELECT f.titulo, a.nome, x.personagem, g.genero, f.valor 
	--FROM filmes as f, atores as a, atores_filmes as x, generos as g
		--WHERE f.id_genero = g.id and x.id_atores = a.id and x.id_filme = f.id; 
		
-- Funcoes agregadas
--SELECT SUM(valor) FROM filmes;
--SELECT MAX(valor) FROM filmes;

--Subconsulta
--SELECT * FROM atores_filmes;
--SELECT * FROM atores_filmes WHERE personagem = 'Arlequina';








