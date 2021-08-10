CREATE VIEW historico_reproducao_usuarios AS
SELECT 
u.NOME 'usuario',
m.NOME 'nome'
FROM
HISTORICO_DE_REPRODUCOES h
inner join
USUARIO u on u.USUARIO_ID = h.USUARIO_ID
inner join 
CANCOES m on m.CANCOES_ID = h.CANCOES_ID
order by `usuario`, `nome`
;
