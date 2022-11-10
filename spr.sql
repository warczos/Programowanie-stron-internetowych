SELECT (stawka_godzinowa-stawka_godzinowa*0.2359)*168 AS 'Pensja' from egzaminatorzy;
SELECT 99*1.08 AS 'Koszt egzaminu'; 106,92
SELECT AVG(stawka_godzinowa) FROM egzaminatorzy;
SELECT MAX(stawka_godzinowa) FROM egzaminatorzy;
SELECT COUNT(id_egzaminu) FROM egzaminy, osrodki, data_egzaminu WHERE data_egzaminu BETWEEN '2000/01/01' AND '2020/12/31' AND egzaminy.id_osrodka = osrodki.id_osrodka AND nazwa_o = 'zst';
SELECT (COUNT(id_egzaminu)-2)*99*1.08 AS 'Koszt egzaminow' FROM egzaminy WHERE id_ucznia = 100;



SELECT imie,nazwisko, tytul FROM  autorzy a INNER JOIN ksiazki k  ON a.id_autora = k.id_autora;
SELECT imie,nazwisko, tytul FROM  autorzy a NATURAL JOIN ksiazki k;

SELECT imie,nazwisko,wydawnictwo, count(id_ksiazki) FROM  autorzy a NATURAL JOIN ksiazki k group by wydawnictwo;
SELECT imie,nazwisko,wydawnictwo, count(id_ksiazki) FROM  autorzy a INNER JOIN ksiazki k ON a.id_autora = k.id_autora group by wydawnictwo;
