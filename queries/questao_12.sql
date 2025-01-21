-- Inserção de mascotes associados às plataformas
INSERT INTO mascote_plataforma (nome_mascote, idplataforma)
VALUES 
    ('Mario', 1), -- Mascote da Nintendo
    ('Sonic', 2); -- Mascote da Sega

-- Inserção de estatísticas dos jogos
INSERT INTO estatisticas_jogo (idjogo, perdas, abandonos)
VALUES 
    (1, 500, 50), -- Jogo 1: 500 perdas, 50 abandonos
    (2, 100, 20); -- Jogo 2: 100 perdas, 20 abandonos
