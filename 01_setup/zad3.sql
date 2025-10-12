--Tworzenie czterech tabel
--tabela pracownicy
CREATE TABLE ksiegowosc.pracownicy (
    id_pracownika VARCHAR(10) PRIMARY KEY,
    imie VARCHAR(50) NOT NULL,
    nazwisko VARCHAR(50) NOT NULL,
    adres VARCHAR(100),
    telefon VARCHAR(15)
);
COMMENT ON TABLE ksiegowosc.pracownicy IS 'Tabela zawiera dane pracownikow.';


--tabela godziny
CREATE TABLE ksiegowosc.godziny (
    id_godziny VARCHAR(10) PRIMARY KEY,
    data DATE NOT NULL,
    liczba_godzin INT NOT NULL CHECK (liczba_godzin >= 0),
    id_pracownika VARCHAR(10) NOT NULL REFERENCES ksiegowosc.pracownicy(id_pracownika) ON DELETE CASCADE

);

COMMENT ON TABLE ksiegowosc.godziny IS 'Tabela przechowująca dane o przepracowanych godzinach pracownikow.';


-- tabela pensja
CREATE TABLE ksiegowosc.pensja (
    id_pensji VARCHAR(10) PRIMARY KEY,
    stanowisko VARCHAR(50) NOT NULL,
    kwota NUMERIC(10,2) NOT NULL CHECK (kwota >= 0)
);

COMMENT ON TABLE ksiegowosc.pensja IS 'Tabela zawierajaca stawki wynagrodzenia dla stanowisk.';


-- tabela premia
CREATE TABLE ksiegowosc.premia (
    id_premii VARCHAR(10) PRIMARY KEY,
    rodzaj VARCHAR(50) NOT NULL,
    kwota NUMERIC(10,2) NOT NULL CHECK (kwota >= 0)
);

COMMENT ON TABLE ksiegowosc.premia IS 'Tabela zawierajaca rodzaje i kwoty premii.';


-- tabela wynagrodzenia
CREATE TABLE ksiegowosc.wynagrodzenia (
    id_wynagrodzenia VARCHAR(10) PRIMARY KEY,
    data DATE NOT NULL,
    id_pracownika VARCHAR(10) REFERENCES ksiegowosc.pracownicy(id_pracownika),
    id_pensji VARCHAR(10) REFERENCES ksiegowosc.pensja(id_pensji),
    id_premii VARCHAR(10) REFERENCES ksiegowosc.premia(id_premii)
);

COMMENT ON TABLE ksiegowosc.wynagrodzenia IS 'Tabela przechowujaca informacje o wyplatach wynagrodzen.';
