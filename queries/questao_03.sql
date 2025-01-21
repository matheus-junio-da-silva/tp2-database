SELECT nomemid,velocidade_leitura 
	FROM midia
    WHERE velocidade_leitura BETWEEN 10 AND 30
    ORDER BY velocidade_leitura DESC,nomemid; 