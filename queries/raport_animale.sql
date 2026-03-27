SELECT
    t.tip,
    t.denumire,
    COUNT(a.coda) AS numar_animale,
    TRUNC(AVG(a.varsta), 0) AS varsta_medie
FROM
    aTip t
LEFT JOIN
    aAnimal a ON a.tip = t.tip
GROUP BY
    t.tip, t.denumire
ORDER BY
    t.tip;