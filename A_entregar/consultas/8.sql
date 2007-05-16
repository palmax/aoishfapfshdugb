SELECT VACA.n_crotal, COUNT(PARE.n_crotal_madre)AS Num_Hijos
FROM VACA, PARE
WHERE VACA.n_crotal=PARE.n_crotal_madre
GROUP BY PARE.n_crotal_madre;
