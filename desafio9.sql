
use SpotifyClone;
delimiter $$

create procedure albuns_do_artista(in nome varchar(45))
begin
SELECT 
    ar.NOME 'artista', al.NOME 'album'
FROM
    ARTISTA ar
        INNER JOIN
    ALBUM al ON al.ARTISTA_ID = ar.ARTISTA_ID
WHERE
    ar.NOME = nome
    order by `album`;
end$$
delimiter ;
