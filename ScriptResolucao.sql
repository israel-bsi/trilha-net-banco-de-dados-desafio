--Passo 1
SELECT 
	Nome, Ano
FROM 
	Filmes

--Passo 2
SELECT 
	Nome, Ano
FROM 
	Filmes
ORDER BY
	Ano ASC

--Passo 3
SELECT 
	Nome, Ano, Duracao
FROM 
	Filmes
WHERE Nome = 'De volta para o Futuro'

--Passo 4
SELECT 
	Nome, Ano, Duracao
FROM 
	Filmes
WHERE Ano = 1997

--Passo 5
SELECT 
	Nome, Ano, Duracao
FROM 
	Filmes
WHERE Ano > 2000

--Passo 6
SELECT 
	Nome, Ano, Duracao
FROM 
	Filmes
WHERE Duracao > 100 AND Duracao < 150
	ORDER BY Duracao ASC

--Passo 7
SELECT 
	Ano, COUNT(*) Quantidade
FROM 
	Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--Passo 8
SELECT
	Id, PrimeiroNome, UltimoNome, Genero
FROM
	Atores
WHERE	
	Genero = 'M'

--Passo 9
SELECT
	Id, PrimeiroNome, UltimoNome, Genero
FROM
	Atores
WHERE	
	Genero = 'F'
ORDER BY
	PrimeiroNome

--Passo 10
SELECT f.Nome, g.Genero
	From Filmes f
	JOIN FilmesGenero fg on f.Id = fg.IdFilme
	JOIN Generos g on fg.IdGenero = g.Id

--Passo 11
SELECT f.Nome, g.Genero
	From Filmes f
	JOIN FilmesGenero fg on f.Id = fg.IdFilme
	JOIN Generos g on fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério'

--Passo 12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
	From Filmes f
	JOIN ElencoFilme ef on ef.IdFilme = f.Id
	JOIN Atores a on a.Id = ef.IdAtor	
	