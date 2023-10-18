--SELECT * FROM Filmes
--SELECT * FROM Atores 
--SELECT * FROM ElencoFilme 
--SELECT * FROM FilmesGenero
--SELECT * FROM Generos

-- Questão 1
-- SELECT Nome,Ano FROM Filmes

-- Questão 2
-- SELECT Nome,Ano,Duracao FROM Filmes ORDER BY Ano ASC 

-- Questão 3
-- SELECT Nome,Ano,Duracao FROM Filmes WHERE Nome LIKE 'de v%'

-- Questão 4
-- SELECT Nome,Ano,Duracao FROM Filmes WHERE Ano = '1997'

-- Questão 5
-- SELECT Nome,Ano,Duracao FROM Filmes WHERE Ano > '2000'

-- Questão 6
-- SELECT Nome,Ano,Duracao FROM Filmes WHERE Duracao > '100' AND Duracao < '150' ORDER BY Duracao ASC

-- Questão 7
-- SELECT Ano, COUNT(Ano) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC  

-- Questão 8
-- SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

-- Questão 9
-- SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC

-- Questão 10
-- SELECT F.Nome, G.Genero FROM Filmes F
--	 INNER JOIN FilmesGenero FG ON FG.IdFilme = F.Id
--	 INNER JOIN Generos G ON G.Id = FG.IdGenero

-- Questão 11
-- SELECT F.Nome, G.Genero FROM Filmes F
--	 INNER JOIN FilmesGenero FG ON FG.IdFilme = F.Id
--	 INNER JOIN Generos G ON G.Id = FG.IdGenero
--	 WHERE G.Genero LIKE 'Mi%'

--Questão 12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM ElencoFilme EF
  INNER JOIN Atores A ON A.Id = EF.IdAtor  
  INNER JOIN Filmes F ON F.Id = EF.IdFilme 

