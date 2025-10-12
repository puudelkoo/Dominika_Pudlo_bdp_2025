--Wyświetla pracowników, których pierwsza litera imienia zaczyna się na literę ‘J’
SELECT id_pracownika, imie, nazwisko
FROM ksiegowosc.pracownicy
WHERE imie LIKE 'J%';
