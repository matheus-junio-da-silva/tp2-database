-- Tabela Mascote_Plataforma
CREATE TABLE mascote_plataforma (
    idmascote INT PRIMARY KEY AUTO_INCREMENT,
    nome_mascote VARCHAR(30),
    idplataforma INT,
    FOREIGN KEY (idplataforma) REFERENCES plataforma(idplataforma)
);

-- Tabela Estatisticas_Jogo
CREATE TABLE estatisticas_jogo (
    idestatistica INT PRIMARY KEY AUTO_INCREMENT,
    idjogo INT,
    perdas INT DEFAULT 0,
    abandonos INT DEFAULT 0,
    FOREIGN KEY (idjogo) REFERENCES jogo(idjogo)
);
