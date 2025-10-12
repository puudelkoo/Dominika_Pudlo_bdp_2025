--Uszereguj pracowników według pensji
SELECT imie, nazwisko, ksiegowosc.pensja.kwota as pensja
FROM ksiegowosc.pracownicy
JOIN ksiegowosc.wynagrodzenia ON ksiegowosc.pracownicy.id_pracownika = ksiegowosc.wynagrodzenia.id_pracownika
JOIN ksiegowosc.pensja ON ksiegowosc.wynagrodzenia.id_pensji = ksiegowosc.pensja.id_pensji
ORDER BY ksiegowosc.pensja.kwota;
