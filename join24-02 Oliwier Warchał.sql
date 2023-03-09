1.
SELECT telefon, email FROM widzowie w INNER JOIN rezerwacje r ON w.id_widza = r.id_widza INNER JOIN repertuar rep ON r.id_repertuaru = rep.id_repertuaru INNER JOIN filmy f ON rep.id_filmu = f.id_filmu WHERE tytul="Avatar" AND data="2022-12-32" AND godzina="20:00:00";
2.
SELECT ROUND(SUM(cena),2) AS 'Cena', COUNT(rodzaj) AS 'Rodzaj' FROM bilety b INNER JOIN seanse s ON b.id_biletu = s.id_biletu INNER JOIN repertuar rep ON s.id_repertuaru = rep.id_repertuaru INNER JOIN filmy f ON rep.id_filmu = f.id_filmu WHERE tytul="Avatar" AND data="2022-12-31" AND godzina="22:00:00" GROUP BY b.rodzaj;
3.
SELECT telefon, email FROM widzowie w INNER JOIN rezerwacje r ON w.id_widza = r.id_widza INNER JOIN repertuar rep ON r.id_repertuaru = rep.id_repertuaru WHERE (data="2022-12-25" OR data="2022-12-26" OR data="2022-12-29" OR data="2022-12-30") AND (godzina="13:00:00" OR godzina="17:00:00");
4.
SELECT COUNT(miejsce) AS 'Wszystkie miesjca', COUNT(bilety.id_biletu) AS 'Miejsca sprzedane', COUNT(miejsce)-COUNT(bilety.id_biletu) AS 'Miejsca wolne' FROM sale INNER JOIN seanse ON sale.id_sali
5.
SELECT tytul, gatunek FROM filmy LEFT JOIN repertuar ON filmy.id_filmu = repertuar.id_filmu WHERE (repertuar.id_repertuaru = NULL OR repertuar.id_repertuaru='') ORDER BY tytul ASC;
6.
SELECT id_seansu FROM seanse LEFT JOIN repertuar ON seanse.id_repertuaru = repertuar.id_repertuaru WHERE (seanse.id_rezerwacji IS NULL OR seanse.id_rezerwacji='') AND data BETWEEN "2022-01-01" AND "2022-12-31";
