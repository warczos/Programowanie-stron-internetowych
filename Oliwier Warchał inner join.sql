171.
SELECT imie, nazwisko, platnosc, ip FROM faktury INNER JOIN ((klienci INNER JOIN logowania ON logowania.id_logowania = klienci.id_logowania) INNER JOIN zamowienia ON klienci.id_klienta = zamowienia.id_klienta) ON zamowienia.id_faktury = faktury.id_faktury ORDER BY platnosc, ip;
173.
SELECT logowania.id_logowania, nazwisko, wydawnictwo FROM ksiazki INNER JOIN (((logowania INNER JOIN klienci ON logowania.id_logowania=klienci.id_logowania) INNER JOIN zamowienia ON klienci.id_klienta=zamowienia.id_klienta) INNER JOIN ilosci ON zamowienia.id_zamowienia=ilosci.id_zamowienia) ON ksiazki.id_ksiazki=ilosci.id_ksiazki GROUP BY id_logowania HAVING (id_logowania BETWEEN 7 AND 19) AND (nazwisko >= 'p' AND nazwisko <= 'z');
174.
SELECT miejsce_wydania, rok_wydania, autorzy.id_autora, autorzy.imie, autorzy.nazwisko, tytul, data_zamowienia, klienci.imie, klienci.nazwisko FROM  klienci INNER JOIN (((autorzy INNER JOIN ksiazki ON autorzy.id_autora=ksiazki.id_autora) INNER JOIN ilosci ON ksiazki.id_ksiazki=ilosci.id_ksiazki) INNER JOIN zamowienia ON ilosci.id_zamowienia=zamowienia.id_zamowienia) ON klienci.id_klienta=zamowienia.id_klienta WHERE (miejsce_wydania='Warszawa' OR 'Gliwice') AND (rok_wydania BETWEEN 2010 AND 2015);
175.
SELECT CONCAT(imie, " ",nazwisko, " ",kod_pocztowy," ",miejscowosc, " ",ulica," ",nr_domu," ",telefon," ", email) AS "DANE ODBIORCY", id_zamowienia FROM zamowienia INNER JOIN (logowania INNER JOIN klienci ON logowania.id_logowania=klienci.id_logowania) ON klienci.id_klienta=zamowienia.id_klienta ORDER BY id_zamowienia;
178.
SELECT tytul , ROUND(sum(cena*ilosc),2) AS 'Wartość sprzedaży Pana Tadeusza' FROM ksiazki INNER JOIN (ilosci INNER JOIN zamowienia ON ilosci.id_zamowienia = zamowienia.id_zamowienia) ON ksiazki.id_ksiazki = ilosci.id_ksiazki WHERE tytul = "Pan Tadeusz" AND data_zamowienia BETWEEN '2022-01-01' AND '2022-03-31';
179.
SELECT ksiazki.id_ksiazki, tytul, gatunek, klienci.imie, klienci.nazwisko, zamowienia.id_zamowienia, klienci.id_klienta, COUNT(zamowienia.id_zamowienia) FROM ksiazki INNER JOIN (( klienci INNER JOIN zamowienia ON klienci.id_klienta=zamowienia.id_klienta) INNER JOIN ilosci ON zamowienia.id_zamowienia=ilosci.id_zamowienia) ON ksiazki.id_ksiazki=ilosci.id_ksiazki GROUP BY klienci.id_klienta HAVING COUNT(zamowienia.id_zamowienia)>=5;
