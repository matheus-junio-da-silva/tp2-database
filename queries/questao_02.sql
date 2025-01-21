SELECT nomeplat,ano_lancamento 
	FROM plataforma
    JOIN fabricante
    ON plataforma.idfabricante=fabricante.idfabricante
    WHERE ano_fundacao>1970;