SELECT DISTINCT nomeplat 
	FROM compativel_midia 
    NATURAL JOIN midia 
    NATURAL JOIN plataforma
    WHERE velocidade_leitura>100;