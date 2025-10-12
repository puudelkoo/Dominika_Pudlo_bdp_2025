--Wyświetla imię i nazwisko pracowników oraz liczbę ich nadgodzin, przyjmując, iż standardowy czas pracy to 160h miesięcznie. 
SELECT DISTINCT p.imie, p.nazwisko
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenia w ON p.id_pracownika = w.id_pracownika
JOIN ksiegowosc.godziny g 
      ON w.id_pracownika = g.id_pracownika 
     AND w.data = g.data
JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii
WHERE g.liczba_godzin > 160  
  AND pr.kwota = 0;  
