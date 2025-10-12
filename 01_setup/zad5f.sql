--Wyświetla imię i nazwisko pracowników oraz liczbę ich nadgodzin, przyjmując, standardowy czas pracy to 160 h miesięcznie
SELECT p.imie,p.nazwisko,
    GREATEST(SUM(g.liczba_godzin) - 160, 0) AS nadgodziny
FROM ksiegowosc.pracownicy p
LEFT JOIN ksiegowosc.godziny g ON p.id_pracownika = g.id_pracownika
GROUP BY p.id_pracownika, p.imie, p.nazwisko;
