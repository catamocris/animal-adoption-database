SELECT 
    a.coda,
    a.nume,
    a.varsta,
    COUNT(c.cID) AS numar_cereri
FROM aAnimal a
LEFT JOIN aCerereAdoptie c ON a.coda = c.coda
GROUP BY a.coda, a.nume, a.varsta
ORDER BY numar_cereri DESC;