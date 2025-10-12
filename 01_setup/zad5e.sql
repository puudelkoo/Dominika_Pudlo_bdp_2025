--Wyświetla pracowników, których nazwisko zawiera literę ‘n’ oraz imię kończy się na literę ‘a’
SELECT id_pracownika, imie, nazwisko
FROM ksiegowosc.pracownicy
WHERE nazwisko LIKE '%n%' AND imie LIKE '%a';
