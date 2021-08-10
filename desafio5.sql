CREATE VIEW top_2_hits_do_momento AS
SELECT 
m.NOME 'cancao' ,
COUNT(*) 'reproducoes'
FROM
CANCOES m
inner join
HISTORICO_DE_REPRODUCOES h
on h.CANCOES_ID = m.CANCOES_ID
group by `cancao`
order by `reproducoes` desc, `cancao`
limit 2
;
