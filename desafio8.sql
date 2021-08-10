use SpotifyClone;
delimiter $$
create trigger trigger_usuario_delete
BEFORE
delete on USUARIO
for each row 
begin
delete from SEGUIDORES 
where USUARIO_ID = old.USUARIO_ID;
delete from HISTORICO_DE_REPRODUCOES 
where USUARIO_ID = old.USUARIO_ID;
end $$
delimiter ;
