--wyświetla id pracownikow, któych płaca jest większa niż 1000
SELECT w.id_pracownika
FROM ksiegowosc.wynagrodzenia w
JOIN ksiegowosc.pensja pe ON w.id_pensji = pe.id_pensji
WHERE pe.kwota > 1000;
