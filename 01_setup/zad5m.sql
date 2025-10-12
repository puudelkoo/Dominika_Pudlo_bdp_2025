--Policz sumę wszystkich wynagrodzeń
SELECT SUM(ksiegowosc.pensja.kwota) as suma_wynagrodzen
FROM ksiegowosc.wynagrodzenia
JOIN ksiegowosc.pensja ON ksiegowosc.wynagrodzenia.id_pensji = ksiegowosc.pensja.id_pensji;
