--Uszereguj pracowników według pensji i premii malejąco. 
SELECT 
    p.imie, p.nazwisko,(pe.kwota + pr.kwota) AS laczne_wynagrodzenie
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenia w ON p.id_pracownika = w.id_pracownika
JOIN ksiegowosc.pensja pe ON w.id_pensji = pe.id_pensji
JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii
ORDER BY laczne_wynagrodzenie DESC;
