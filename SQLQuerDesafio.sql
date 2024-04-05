--1
SELECT Nome, Ano FROM Filmes 

--2
SELECT Nome, Ano FROM Filmes ORDER BY Ano

--3
SELECT * FROM Filmes WHERE Nome = 'de volta para o futuro'

--4
SELECT * FROM Filmes WHERE Ano = 1997

--5
SELECT * FROM Filmes WHERE Ano LIKE '2%'

--6
SELECT * FROM Filmes WHERE Duracao >= '100' AND Duracao <= '150'
ORDER BY Duracao

--7
SELECT Ano, COUNT(*) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT * FROM Atores
WHERE Genero = 'M'

--9
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT Filmes.Nome, Generos.Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--11
SELECT Filmes.Nome, Generos.Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mistério'

--12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM Filmes F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A ON A.Id = EF.IdAtor