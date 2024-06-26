-- SQLite
SELECT L.ID AS 'CODIGO DA LOCACAO',
       L.START_DATE AS 'DATA INICIAL',
       L.END_DATE AS 'DATA FINAL',
       L.TOTAL AS 'TOTAL DA LOCACAO',
       C.NAME AS 'CLIENTE',
       CA.NAME AS 'CARRO',
       E.NAME AS 'FUNCIONARIO'
FROM LOCATIONS AS L
INNER JOIN CUSTOMERS AS C ON (L.CUSTOMER_ID = C.ID)
INNER JOIN CARS AS CA ON (L.CAR_ID = CA.ID)
INNER JOIN EMPLOYEES AS E ON (L.EMPLOYEE_ID = E.ID);