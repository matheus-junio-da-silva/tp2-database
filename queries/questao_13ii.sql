-- Quais são os jogos mais abandonados pelos colecionadores?
SELECT j.nomejogo AS jogo, e.abandonos AS total_abandonos
FROM estatisticas_jogo e
JOIN jogo j ON e.idjogo = j.idjogo
ORDER BY e.abandonos DESC
LIMIT 5;
