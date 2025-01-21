SELECT DISTINCT nomefab
	FROM compativel_midia
    NATURAL JOIN plataforma
    NATURAL JOIN fabricante
    GROUP BY nomefab
    HAVING COUNT(idmidia)>1
    ORDER BY nomefab;