use SpotifyClone;
create view cancoes_premium as
SELECT 
C.NOME 'nome', COUNT(*) 'reproducoes'
FROM
HISTORICO_DE_REPRODUCOES H
INNER JOIN
CANCOES C ON H.CANCOES_ID = C.CANCOES_ID
WHERE
H.USUARIO_ID IN (SELECT 
USUARIO_ID
FROM
USUARIO
WHERE
PLANO_ID IN (SELECT 
PLANO_ID
FROM
PLANO
WHERE
NOME IN ('Familiar' , 'Universitário')))
GROUP BY `nome`
ORDER BY `nome`
;
