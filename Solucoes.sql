-- Selecionar nome e ano dos filmes

Select Nome, Ano from Filmes;

--Buscar o nome e ano dos filmes, ordenados de forma crecente pelo ano

Select Nome, Ano
	from Filmes
	Order by ANO asc;

-- Buscar pelo filme de coltaa para, trazendo o nome, ano e a duração
SELECT * FROM Filmes
	WHERE Filmes.Nome = 'De volta para o futuro'

-- Buscar os filmes lançados em 1997
SELECT *FROM Filmes
	WHERE Filmes.Ano = '1997';

--Buscar os filmes lançados APÓS o ano 2000
SELECT * FROM Filmes
	WHERE Filmes.Ano > '2000';

--Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT * FROM Filmes 
	WHERE Filmes.Duracao > 100 AND Filmes.Duracao < 150
	ORDER BY Filmes.Duracao asc;

-- Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(ANO) AS Quantidade 
	FROM Filmes
GROUP BY Filmes.Ano
ORDER BY Quantidade desc;

--Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome FROM Atores 
WHERE Atores.Genero = 'M';

--Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome FROM Atores 
WHERE Atores.Genero = 'F'
ORDER BY PrimeiroNome;

--Buscar o nome do filme e o gênero
SELECT Nome, Genero FROM Filmes
Inner Join FilmesGenero
	ON Filmes.Id = FilmesGenero.IdFilme
Inner Join Generos
	ON FilmesGenero.IdGenero = Generos.Id;
	 
--Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT Nome, Genero FROM Filmes
Inner Join FilmesGenero
	ON Filmes.Id = FilmesGenero.IdFilme
Inner Join Generos
	ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério';

--Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Filmes.Nome, PrimeiroNome, UltimoNome, Papel From Filmes
INNER JOIN ElencoFilme
	ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores
	ON ElencoFilme.IdAtor= Atores.Id;