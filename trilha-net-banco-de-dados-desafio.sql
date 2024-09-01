select Nome, Ano from Filmes;

select Nome, Ano from Filmes order by Ano;

select Nome, Ano, Duracao from Filmes where Nome = 'De Volta para o Futuro';

select Nome, Ano, Duracao from Filmes where Ano = 1997;

select Nome, Ano, Duracao from Filmes where Ano > 2000;

select Nome, Ano, Duracao from Filmes where Duracao between 101 and 149 order by Duracao;

select Ano, count(*) Quantidade from Filmes group by Ano order by Quantidade desc;

select Id, PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M'

select Id, PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'F' order by PrimeiroNome;

select F.Nome, G.Genero from Filmes F inner join FilmesGenero FG on F.Id = FG.IdFilme inner join Generos G on FG.IdGenero = G.Id;

select F.Nome, G.Genero from Filmes F inner join FilmesGenero FG on F.Id = FG.IdFilme inner join Generos G on FG.IdGenero = G.Id where G.Genero = 'Mistério';

select F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel from Filmes F inner join ElencoFilme EF on F.Id = EF.IdFilme inner join Atores A on EF.IdAtor = A.Id;