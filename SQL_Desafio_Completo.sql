-- Desafio 1
SELECT Nome, Ano FROM Filmes

-- Desafio 2
SELECT * FROM Filmes ORDER BY (Ano) ASC

-- Desafio 3
SELECT * FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- Desafio 4
SELECT * FROM Filmes WHERE Ano = '1997'

-- Desafio 5
SELECT * FROM Filmes WHERE Ano > '2000'

-- Desafio 6
SELECT * FROM Filmes WHERE Duracao > '100' AND Duracao < '150' ORDER BY (Duracao) ASC

-- Desafio 7
SELECT Ano, COUNT(Ano) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

-- Desafio 8
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'

-- Desafio 9
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY (PrimeiroNome) ASC

-- Desafio 10
SELECT f.Nome, g.Genero FROM Filmes f
LEFT JOIN FilmesGenero fg ON fg.IdFilme = f.Id
LEFT JOIN Generos g ON g.Id = fg.IdGenero

-- Desafio 11
SELECT f.Nome, g.Genero FROM Filmes f
LEFT JOIN FilmesGenero fg ON fg.IdFilme = f.Id
LEFT JOIN Generos g ON g.Id = fg.IdGenero
WHERE g.Genero = 'Mistério'

-- Desafio 12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel FROM ElencoFilme ef
LEFT JOIN Filmes f ON f.Id = ef.IdFilme
LEFT JOIN Atores a ON a.Id = ef.IdAtor
