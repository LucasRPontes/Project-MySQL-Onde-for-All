SELECT 
a.NOME 'artista' ,
COUNT(*) 'seguidores'
FROM
ARTISTA a
inner join
SEGUIDORES s
on s.ARTISTA_ID = a.ARTISTA_ID
group by `artista`
order by `seguidores` desc
limit 3
;
