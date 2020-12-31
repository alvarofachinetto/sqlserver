--Declaração de variável
DECLARE @valor DECIMAL(10,2);

-- setando o valor
SET @valor = (SELECT preco from livro where ID = 1);

--mostrando na query
SELECT @valor as valor

