SELECT nomejogo
	FROM compativel_jogo_plataforma
    NATURAL JOIN jogo
    GROUP BY nomejogo
    HAVING COUNT(*)>1;