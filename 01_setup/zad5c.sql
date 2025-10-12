--Wyświetla id pracowników nieposiadających premii, których płaca jest większa niż 2000
SELECT w.id_pracownika
FROM ksiegowosc.wynagrodzenia w
JOIN ksiegowosc.pensja pe ON w.id_pensji = pe.id_pensji
JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii
WHERE pr.kwota = 0 AND pe.kwota > 2000;
