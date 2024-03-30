-- SQLite
SELECT E.ID AS 'CÓDIGO',
       E.NAME AS 'NOME',
       E.[PHONE NUMBER] AS 'NUMERO DE TELEFONE',
       E.CONTRACT_DATE AS 'DATA DO CONTRATO',
       E.POSITION_ID AS 'CODIGO DO CARGO',
       COUNT(L.ID) AS 'QUANTIDADE DE LOCACAO'
FROM EMPLOYEES AS E
LEFT JOIN LOCATIONS AS L ON (E.ID = L.EMPLOYEE_ID)
GROUP BY E.NAME
HAVING COUNT(L.ID) >= 2;