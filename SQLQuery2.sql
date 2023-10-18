--SELECT * FROM Filmes
--SELECT * FROM Atores 
--SELECT * FROM ElencoFilme 
--SELECT * FROM FilmesGenero
--SELECT * FROM Generos

-- Quest�o 1
-- SELECT Nome,Ano FROM Filmes

-- Quest�o 2
-- SELECT Nome,Ano,Duracao FROM Filmes ORDER BY Ano ASC 

-- Quest�o 3
-- SELECT Nome,Ano,Duracao FROM Filmes WHERE Nome LIKE 'de v%'

-- Quest�o 4
-- SELECT Nome,Ano,Duracao FROM Filmes WHERE Ano = '1997'

-- Quest�o 5
-- SELECT Nome,Ano,Duracao FROM Filmes WHERE Ano > '2000'

-- Quest�o 6
-- SELECT Nome,Ano,Duracao FROM Filmes WHERE Duracao > '100' AND Duracao < '150' ORDER BY Duracao ASC

-- Quest�o 7
-- SELECT Ano, COUNT(Ano) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC  

-- Quest�o 8
-- SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

-- Quest�o 9
-- SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC

-- Quest�o 10
-- SELECT F.Nome, G.Genero FROM Filmes F
--	 INNER JOIN FilmesGenero FG ON FG.IdFilme = F.Id
--	 INNER JOIN Generos G ON G.Id = FG.IdGenero

-- Quest�o 11
-- SELECT F.Nome, G.Genero FROM Filmes F
--	 INNER JOIN FilmesGenero FG ON FG.IdFilme = F.Id
--	 INNER JOIN Generos G ON G.Id = FG.IdGenero
--	 WHERE G.Genero LIKE 'Mi%'

--Quest�o 12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM ElencoFilme EF
  INNER JOIN Atores A ON A.Id = EF.IdAtor  
  INNER JOIN Filmes F ON F.Id = EF.IdFilme 

