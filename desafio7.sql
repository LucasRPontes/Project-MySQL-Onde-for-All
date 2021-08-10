CREATE VIEW perfil_artistas AS
SELECT
ar.NOME 'artista',
al.NOME 'album',
(SELECT COUNT(A.NOME) 
FROM SEGUIDORES S 
INNER JOIN ARTISTA A 
ON A.ARTISTA_ID = S.ARTISTA_ID 
WHERE ar.NOME = A.NOME ) 'seguidores'
FROM
ALBUM al
INNER JOIN
ARTISTA ar on ar.ARTISTA_ID = al.ARTISTA_ID
order by `seguidores` desc, `artista`;
