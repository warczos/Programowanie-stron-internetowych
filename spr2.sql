SELECT COUNT(id_egzaminu), id_osrodka FROM egzaminy GROUP BY id_osrodka
SELECT  ROUND(AVG(stawka_godzinowa),2), miasto FROM egzaminatorzy GROUP BY miasto
SELECT COUNT(id_egzaminu), id_osrodka, data_egzaminu FROM egzaminy HAVING id_osrodka = 1 AND data_egzaminu BETWEEN '2021-01-01' AND '2021-12-31';
SELECT
SELECT miasto, COUNT(id_ucznia), nazwisko FROM uczniowie GROUP BY miasto HAVING nazwisko = 'Kowalski';
SELECT COUNT(id_egzaminu), miasto, nazwa_p FROM egzaminy, osrodki, przedmioty WHERE egzaminy.id_osrodka = osrodki.id_osrodka AND egzaminy.id_przedmiotu = przedmioty.id_przedmiotu GROUP BY miasto HAVING nazwa_p = "INF02" ORDER BY COUNT(id_egzaminu) DESC;  
