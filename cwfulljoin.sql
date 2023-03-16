214.
select id_zamowienia, faktury.id_faktury, data_zamowienia, data_wystawienia, forma_wysylki, platnosc FROM zamowienia INNER JOIN faktury on zamowienia.id_faktury = faktury.id_faktury;
215.
select id_klienta, logowania.id_logowania from klienci INNER JOIN logowania ON klienci.id_logowania = logowania.id_logowania where klienci.id_klienta = logowania.id_logowania;
216.
select id_klienta, logowania.id_logowania from klienci INNER JOIN logowania ON klienci.id_logowania = logowania.id_logowania where klienci.id_klienta != logowania.id_logowania;
217.
select tytul, stan_magazynowy, SUM(ilosci.ilosc) from ksiazki INNER JOIN ilosci ON ksiazki.id_ksiazki = ilosci.id_ksiazki GROUP BY tytul;
218.

219.
SELECT data_zamowienia, data_wystawienia from zamowienia INNER JOIN faktury ON zamowienia.id_faktury = faktury.id_faktury WHERE data_zamowienia != data_wystawienia;
220.




