SELECT nazwa_zwyczajowa, COUNT(id_obserwacji) AS 'Ilość obserwacji' FROM gatunki NATURAL JOIN obserwacje GROUP BY nazwa_zwyczajowa ORDER BY COUNT(id_obserwacji) DESC LIMIT 3;
