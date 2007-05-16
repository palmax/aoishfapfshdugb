
SELECT count( * ) AS montas, SEMENTAL_n_crotal, ANIMAL.nombre
FROM  monta, ANIMAL
WHERE ANIMAL.n_crotal=SEMENTAL_n_crotal
GROUP BY SEMENTAL_n_crotal
ORDER BY  montas DESC, ANIMAL.Nombre ASC;