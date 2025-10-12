--Policz sumę wynagrodzeń w ramach danego stanowiska
SELECT stanowisko,
    SUM(pensja.kwota) + COALESCE(SUM(premia.kwota), 0) AS suma_wynagrodzen
FROM ksiegowosc.wynagrodzenia
LEFT JOIN ksiegowosc.pensja ON ksiegowosc.wynagrodzenia.id_pensji = ksiegowosc.pensja.id_pensji
LEFT JOIN ksiegowosc.premia ON ksiegowosc.wynagrodzenia.id_premii = ksiegowosc.premia.id_premii
GROUP BY ksiegowosc.pensja.stanowisko;
