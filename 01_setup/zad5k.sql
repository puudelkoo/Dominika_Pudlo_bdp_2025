--Policz średnią, minimalną i maksymalną płacę dla stanowiska ‘kierownik’
SELECT
    AVG(ksiegowosc.pensja.kwota) AS srednia_placa_Kierownik,
    MIN(ksiegowosc.pensja.kwota) AS min_placa_Kierownik,
    MAX(ksiegowosc.pensja.kwota) AS max_placa_Kierownik
FROM ksiegowosc.pensja
WHERE ksiegowosc.pensja.stanowisko = 'Kierownik';
