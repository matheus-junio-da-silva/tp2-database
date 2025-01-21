INSERT INTO `mydb`.`plataforma` (
    `idplataforma`, 
    `nomeplat`, 
    `ano_lancamento`, 
    `memoria`, 
    `idfabricante`
) 
    VALUES (
        7, 
        'WiiU', 
        2012, 
        '2147483648', 
        (SELECT idfabricante FROM fabricante 
            WHERE nomefab="Nintendo" 
        )  
    );