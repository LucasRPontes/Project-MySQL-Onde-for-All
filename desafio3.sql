CREATE VIEW historico_reproducao_usuarios AS
SELECT 
     u.nome 'usuario',
     m.nome_musica 'nome'
FROM
historico h
inner join
usuarios u on u.usuario_id = h.usuario_id
inner join 
musicas m on m.musica_id = h.musica_id
order by `usuario`, `nome`
;