SELECT nomejogo,ano_lancamento_jogo,nomeplat
	FROM compativel_jogo_plataforma 
    NATURAL JOIN jogo
    NATURAL JOIN plataforma
    WHERE ano_lancamento_jogo=(
		SELECT MIN(ano_lancamento_jogo) 
			FROM compativel_jogo_plataforma
		);