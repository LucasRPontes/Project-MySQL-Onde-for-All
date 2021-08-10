CREATE VIEW faturamento_atual AS
SELECT 
ROUND(MIN(valor), 2) 'faturamento_minimo',
ROUND(MAX(valor), 2) 'faturamento_maximo',
ROUND(AVG(valor), 2) 'faturamento_medio',
ROUND(SUM(valor), 2) 'faturamento_total'
FROM
USUARIO u
INNER JOIN
PLANO p ON p.PLANO_ID = u.PLANO_ID;
