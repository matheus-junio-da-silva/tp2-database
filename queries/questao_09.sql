SELECT AVG(memoria) AS media_memoria_utilizada
FROM (
    SELECT DISTINCT jogo.idjogo, plataforma.memoria
    FROM jogo
    JOIN compativel_jogo_plataforma 
    ON jogo.idjogo = compativel_jogo_plataforma.idjogo
    JOIN plataforma 
    ON compativel_jogo_plataforma.idplataforma = plataforma.idplataforma
) AS jogos_unicos;