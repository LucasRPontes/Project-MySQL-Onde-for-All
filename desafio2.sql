CREATE VIEW estatisticas_musicais AS
SELECT 
COUNT(NOME) 'cancoes', 
(SELECT COUNT(ARTISTA_ID) FROM ARTISTA)'artistas',
(SELECT COUNT(NOME) FROM ALBUM)'albuns'
FROM CANCOES
;
