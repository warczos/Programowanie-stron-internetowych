186.
SELECT DISTINCT imie, nazwisko, id_zamowienia, data_zamowienia FROM klienci LEFT JOIN zamowienia ON klienci.id_klienta=zamowienia.id_klienta;
187.
SELECT DISTINCT imie, nazwisko, id_zamowienia FROM klienci LEFT JOIN zamowienia ON klienci.id_klienta=zamowienia.id_klienta WHERE id_zamowienia IS NULL OR id_zamowienia='';
188.
SELECT login, email, nazwisko, imie FROM klienci RIGHT JOIN logowania ON klienci.id_logowania=logowania.id_logowania WHERE telefon IS NULL OR telefon='' OR miejscowosc IS NULL OR miejscowosc='' OR kod_pocztowy IS NULL OR kod_pocztowy='' OR ulica IS NULL OR ulica='' OR nr_domu IS NULL OR nr_domu='';
189.
SELECT nazwisko, imie, id_zamowienia, data_zamowienia FROM klienci INNER JOIN zamowienia ON klienci.id_klienta=zamowienia.id_klienta RIGHT JOIN faktury ON zamowienia.id_faktury=faktury.id_faktury WHERE platnosc IS NULL OR data_wystawienia IS NULL;
190.
SELECT zamowienia.id_zamowienia, SUM(ilosc) FROM zamowienia LEFT JOIN ilosci ON zamowienia.id_zamowienia=ilosci.id_zamowienia GROUP BY zamowienia.id_zamowienia;
191.
SELECT login, email, imie, nazwisko FROM logowania LEFT JOIN klienci ON logowania.id_logowania=klienci.id_logowania;
192.
SELECT login, imie, nazwisko FROM logowania LEFT JOIN klienci ON logowania.id_logowania=klienci.id_logowania WHERE imie IS NULL AND nazwisko IS NULL;
193.
SELECT ilosc, ilosci.id_ksiazki FROM ilosci LEFT JOIN ksiazki ON ksiazki.id_ksiazki=ilosci.id_ksiazki WHERE ilosci.id_ksiazki IS NULL;