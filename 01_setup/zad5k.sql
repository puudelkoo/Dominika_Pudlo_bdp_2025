--Zlicz i pogrupuj pracowników według pola ‘stanowisko’
SELECT stanowisko, COUNT(*) 
FROM ksiegowosc.pensja
GROUP BY ksiegowosc.pensja.stanowisko;
