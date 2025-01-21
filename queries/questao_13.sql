-- Qual mascote representa cada plataforma
SELECT p.nomeplat AS plataforma, m.nome_mascote AS mascote
FROM mascote_plataforma m
JOIN plataforma p ON m.idplataforma = p.idplataforma;
