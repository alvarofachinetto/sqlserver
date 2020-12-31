-- Declarando as variáveis do cursor
DECLARE @nome VARCHAR(50),
        @preco DECIMAL(10,2);

-- criando o cursor
DECLARE cur_NomePrecoLivro CURSOR
FOR SELECT TOP 3 nome, preco FROM livro

-- abrindo o cursor
OPEN cur_NomePrecoLivro;

-- iteração entre os dados retornados do cursor
WHILE @@FETCH_STATUS = 0
BEGIN

-- seleciona os dados 
FETCH NEXT FROM cur_NomePrecoLivro
INTO @nome, @preco;

END
SELECT @nome, @preco;

-- fecha e desaloca o cursor da memória
CLOSE cur_NomePrecoLivro;
DEALLOCATE cur_NomePrecoLivro;