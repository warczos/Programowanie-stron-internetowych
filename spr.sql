SELECT (stawka_godzinowa-stawka_godzinowa*0.2359)*168 AS 'Pensja' from egzaminatorzy;
SELECT 99*1.08 AS 'Koszt egzaminu'; 106,92
SELECT AVG(stawka_godzinowa) FROM egzaminatorzy;
SELECT MAX(stawka_godzinowa) FROM egzaminatorzy;
SELECT COUNT(id_egzaminu) FROM egzaminy, osrodki, data_egzaminu WHERE data_egzaminu BETWEEN '2000/01/01' AND '2020/12/31' AND egzaminy.id_osrodka = osrodki.id_osrodka AND nazwa_o = 'zst';
SELECT (COUNT(id_egzaminu)-1)*99*1.08 AS 'Koszt egzaminow' FROM egzaminy WHERE id_ucznia = 100;
