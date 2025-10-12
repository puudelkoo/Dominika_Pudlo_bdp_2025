--Wyznacz liczbe premii przyznanych dla pracowników danego stanowiska
SELECT
    ksiegowosc.pensja.stanowisko,
    COUNT(ksiegowosc.premia.id_premii) AS liczba_premii
FROM ksiegowosc.wynagrodzenia
LEFT JOIN ksiegowosc.pensja ON ksiegowosc.wynagrodzenia.id_pensji = ksiegowosc.pensja.id_pensji
LEFT JOIN ksiegowosc.premia ON ksiegowosc.wynagrodzenia.id_premii = ksiegowosc.premia.id_premii
GROUP BY ksiegowosc.pensja.stanowisko;
