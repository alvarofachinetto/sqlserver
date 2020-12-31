SELECT nome, preco, 
    CASE 
        WHEN preco < 51.00 THEN PRECO * 1.1
        WHEN preco > 51.00 THEN PRECO * 0.6
    END as Acrescimo_Desconto
FROM livro 