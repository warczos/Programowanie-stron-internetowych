149.
SELECT imie,nazwisko,tytul FROM autorzy INNER JOIN ksiazki ON autorzy.id_autora = ksiazki.id_autora WHERE autorzy.id_autora <= 100;
SELECT imie,nazwisko,tytul FROM autorzy JOIN ksiazki USING (id_autora) WHERE autorzy.id_autora <= 100;
SELECT imie,nazwisko,tytul FROM autorzy NATURAL JOIN ksiazki WHERE autorzy.id_autora <= 100;
150.
SELECT au.id_autora,imie,nazwisko,tytul FROM autorzy AS au INNER JOIN ksiazki ON au.id_autora = ksiazki.id_autora WHERE au.id_autora >=30 ORDER BY nazwisko ASC;
SELECT id_autora,imie,nazwisko,tytul FROM autorzy AS au JOIN ksiazki USING(id_autora) WHERE au.id_autora >=30 ORDER BY nazwisko ASC;
SELECT id_autora,imie,nazwisko,tytul FROM autorzy AS au NATURAL JOIN ksiazki WHERE au.id_autora >=30 ORDER BY nazwisko ASC;
151.
SELECT login,nazwisko,imie,email FROM klienci INNER JOIN logowania ON klienci.id_klienta = logowania.id_logowania;
SELECT login,nazwisko,imie,email FROM klienci JOIN logowania USING(id_logowania);
SELECT login,nazwisko,imie,email FROM klienci NATURAL JOIN logowania;
152.
SELECT imie,nazwisko,wydawnictwo,COUNT(id_ksiazki) AS'ilosc wydanych ksiazek' FROM autorzy INNER JOIN ksiazki ON autorzy.id_autora = ksiazki.id_autora GROUP BY wydawnictwo;
SELECT imie,nazwisko,wydawnictwo,COUNT(id_ksiazki) AS'ilosc wydanych ksiazek' FROM autorzy JOIN ksiazki USING(id_autora) GROUP BY wydawnictwo;
SELECT imie,nazwisko,wydawnictwo,COUNT(id_ksiazki) AS'ilosc wydanych ksiazek' FROM autorzy NATURAL JOIN ksiazki GROUP BY wydawnictwo;
153.
SELECT imie,nazwisko,COUNT(tytul) FROM autorzy JOIN ksiazki ON autorzy.id_autora = ksiazki.id_autora GROUP BY nazwisko HAVING COUNT(tytul)>=2;
SELECT imie,nazwisko,COUNT(tytul) FROM autorzy JOIN ksiazki USING (id_autora) GROUP BY nazwisko HAVING COUNT(tytul)>=2;
SELECT imie,nazwisko,COUNT(tytul) FROM autorzy NATURAL JOIN ksiazki GROUP BY nazwisko HAVING COUNT(tytul)>=2;
154.
SELECT imie AS 'Imię Autora', nazwisko AS 'Nazwisko Autora',tytul AS 'Tytuł ksiażki',cena AS 'Cena brutto',ROUND(cena/1.08,2) AS 'Cena netto',ROUND((cena/1.08)0.08,2) AS VAT FROM autorzy NATURAL JOIN ksiazki;
SELECT imie AS 'Imię Autora', nazwisko AS 'Nazwisko Autora',tytul AS 'Tytuł ksiażki',cena AS 'Cena brutto',ROUND(cena/1.08,2) AS 'Cena netto',ROUND((cena/1.08)0.08,2) AS VAT FROM autorzy JOIN ksiazki USING(id_autora);
SELECT imie AS 'Imię Autora', nazwisko AS 'Nazwisko Autora',tytul AS 'Tytuł ksiażki',cena AS 'Cena brutto',ROUND(cena/1.08,2) AS 'Cena netto',ROUND((cena/1.08)*0.08,2) AS VAT FROM autorzy INNER JOIN ksiazki ON autorzy.id_autora = ksiazki.id_autora;
155.
SELECT tytul,(SUM(ilosc)*cena) AS 'Wartość sprzedaży' FROM ksiazki INNER JOIN ilosci ON ksiazki.id_ksiazki = ilosci.id_ksiazki WHERE tytul = 'Pan Tadeusz';
SELECT tytul,(SUM(ilosc)*cena) AS 'Wartość sprzedaży' FROM ksiazki NATURAL JOIN ilosci WHERE tytul = 'Pan Tadeusz';
156.
SELECT COUNT(ilosci.ilosc),faktury.platnosc FROM ilosci INNER JOIN zamowienia ON zamowienia.id_zamowienia=ilosci.id_zamowienia INNER JOIN faktury ON zamowienia.id_faktury=faktury.id_faktury GROUP BY platnosc ORDER BY COUNT(ilosci.ilosc) DESC;
SELECT COUNT(ilosci.ilosc),faktury.platnosc FROM ilosci JOIN zamowienia USING(id_zamowienia) JOIN faktury USING (id_faktury) GROUP BY platnosc ORDER BY COUNT(ilosci.ilosc) DESC;
SELECT COUNT(ilosci.ilosc),faktury.platnosc FROM ilosci NATURAL JOIN zamowienia NATURAL JOIN faktury GROUP BY platnosc ORDER BY COUNT(ilosci.ilosc) DESC;
157.
SELECT ROUND(AVG(koszt_wysylki),2) AS 'Średni koszt wysyłki',miejscowosc FROM zamowienia NATURAL JOIN klienci GROUP BY miejscowosc;
SELECT ROUND(AVG(koszt_wysylki),2) AS 'Średni koszt wysyłki',miejscowosc FROM zamowienia INNER JOIN klienci ON zamowienia.id_klienta = klienci.id_klienta GROUP BY miejscowosc;
SELECT ROUND(AVG(koszt_wysylki),2) AS 'Średni koszt wysyłki',miejscowosc FROM zamowienia JOIN klienci USING (id_klienta) GROUP BY miejscowosc;
158.
SELECT imie,nazwisko,forma_wysylki,COUNT(forma_wysylki) AS'Ilosc wybranej wysyłki' FROM klienci NATURAL JOIN zamowienia GROUP BY id_klienta;
SELECT imie,nazwisko,forma_wysylki,COUNT(forma_wysylki) AS'Ilosc wybranej wysyłki' FROM klienci JOIN zamowienia USING (id_klienta) GROUP BY id_klienta;
SELECT imie,nazwisko,forma_wysylki,COUNT(forma_wysylki) AS'Ilosc wybranej wysyłki' FROM klienci INNER JOIN zamowienia ON klienci.id_klienta = zamowienia.id_klienta GROUP BY zamowienia.id_klienta;
159.
SELECT COUNT(tytul) AS 'Ilość tytułów', wydawnictwo FROM autorzy INNER JOIN ksiazki ON autorzy.id_autora = ksiazki.id_autora WHERE nazwisko = 'Pokorska' GROUP BY wydawnictwo;
SELECT COUNT(tytul) AS 'Ilość tytułów', wydawnictwo FROM autorzy JOIN ksiazki USING (id_autora)WHERE nazwisko = 'Pokorska' GROUP BY wydawnictwo;
SELECT COUNT(tytul) AS 'Ilość tytułów', wydawnictwo FROM autorzy NATURAL JOIN ksiazki WHERE nazwisko = 'Pokorska' GROUP BY wydawnictwo;
160.
SELECT CONCAT(klienci.imie , ' ' , klienci.nazwisko) AS 'Imie i nazwisko', SUM(ilosci.ilosc) FROM klienci INNER JOIN zamowienia ON klienci.id_klienta = zamowienia.id_klienta INNER JOIN ilosci ON ilosci.id_zamowienia = zamowienia.id_zamowienia WHERE ilosc > 1 GROUP BY klienci.id_klienta ORDER BY ilosc DESC;
SELECT CONCAT(klienci.imie , ' ' , klienci.nazwisko) AS 'Imie i nazwisko', SUM(ilosci.ilosc) FROM klienci JOIN zamowienia USING(id_klienta) JOIN ilosci USING(id_zamowienia) WHERE ilosc > 1 GROUP BY klienci.id_klienta ORDER BY ilosc DESC;
SELECT CONCAT(klienci.imie , ' ' , klienci.nazwisko) AS 'Imie i nazwisko', SUM(ilosci.ilosc) FROM klienci NATURAL JOIN zamowienia NATURAL JOIN ilosci WHERE ilosc > 1 GROUP BY klienci.id_klienta ORDER BY ilosc DESC;
162.
SELECT imie,nazwisko,id_klienta FROM klienci WHERE id_klienta=(SELECT MIN(id_klienta) FROM klienci) OR id_klienta=(SELECT MAX(id_klienta) FROM klienci);
