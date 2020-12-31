--STDV Retorna o desvio padrão estatístico de todos os valores da expressão especificada
SELECT 
    nome, 
    preco, 
    calc.media, 
    calc.desvio, 
    (preco - calc.media) / calc.desvio as Z_score from livro,
    (select AVG(preco) as media, STDEV(preco) as desvio from livro) calc

-- OVER particiona a ordenação de um conjunto na janela asociada
select nome, preco, 
AVG(preco) OVER() as media,
STDEV(preco) OVER() as desvio, 
(preco - AVG(preco) OVER()) / STDEV(preco) OVER() as Z_score
from livro

SELECT nome, preco, posicao FROM 
(SELECT 
    nome,
    preco,
    RANK() OVER(ORDER BY PRECO) as posicao
FROM livro) dados
where posicao BETWEEN 2 and 3