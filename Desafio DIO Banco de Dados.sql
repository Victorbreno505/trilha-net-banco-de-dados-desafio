-- 1
SELECT
Nome, Ano 
FROM Filmes

--2
SELECT Nome, Ano, Duracao 
FROM Filmes
ORDER BY Ano

--3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro';

--4
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997;

--5
SELECT Nome, Ano,Duracao
FROM Filmes
WHERE Ano > 2000;
--6
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao;

--7
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;
--8
SELECT * FROM Atores
WHERE Genero = 'M';
--9
SELECT * 
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;
--10
SELECT 
	f.Nome,
	g.Genero
FROM FilmesGenero fg
JOIN Filmes f ON f.id = fg.IdFilme
JOIN Generos g ON g.Id = fg.IdGenero;
--11
SELECT 
	f.Nome,
	g.Genero
FROM FilmesGenero fg
join Filmes f ON f.id = fg.IdFilme
join Generos g ON g.Id = fg.IdGenero
WHERE g.Genero = 'Mistério';
--12
SELECT 
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
FROM ElencoFilme ef
join Filmes f ON f.id = ef.IdFilme
join Atores a ON a.Id = ef.IdAtor;

