--Wypełnianie tabeli rekordami
INSERT INTO ksiegowosc.pracownicy (id_pracownika, imie, nazwisko, adres, telefon)
VALUES
('123', 'Jan', 'Kowalski', 'Leśne 62', '543992102'),
('456', 'Anna', 'Nowak',  'Wodna', '774992002'),
('789', 'Karol', 'Wiśniewski', 'Podwodna 53', '420691213'),
('012', 'Bartosz', 'Kubicki', 'Długa 74', '532137069'),
('345', 'Robert', 'Lewandowski', 'Słoneczna 45', '748490123'),
('678', 'Ewa', 'Kubica', 'Miodowa 16', '757830215'),
('901', 'Tomasz', 'Zieliński', 'Ogrodowa 87', '940832774'),
('234', 'Magdalena', 'Smutna', 'Krótka 98', '785931293'),
('567', 'Krzysztof', 'Zielony', 'Zielona 99', '554832929'),
('890', 'Agnieszka', 'Wójcik', 'Polna 10', '997998999');


INSERT INTO ksiegowosc.godziny (id_godziny, data, liczba_godzin, id_pracownika) 
VALUES
('G1', '2023-01-01', 161, '123'),
('G2', '2023-01-02', 20, '789'),
('G3', '2023-01-03', 163, '456'),
('G4', '2023-01-04', 20, '901'),
('G5', '2023-01-05', 20, '012'),
('G6', '2023-01-06', 20, '345'),
('G7', '2023-01-07', 20, '678'),
('G8', '2023-01-08', 21, '901'),
('G9', '2023-01-09',  8, '456'),
('G10', '2023-01-10', 9, '567');


INSERT INTO ksiegowosc.pensja (id_pensji, stanowisko, kwota)
VALUES
('P1', 'Stanowisko_A', 1200),
('P2', 'Stanowisko_B', 900),
('P3', 'Stanowisko_C', 2100),
('P4', 'Stanowisko_D', 1600),
('P5', 'Stanowisko_E', 1050),
('P6', 'Stanowisko_F', 1700),
('P7', 'Stanowisko_G', 2600),
('P8', 'Stanowisko_H', 2100),
('P9', 'Stanowisko_I',	2800),
('P10', 'Kiernownik', 2900);


INSERT INTO ksiegowosc.premia (id_premii, rodzaj, kwota)
VALUES
(1, 'Premia_a', 500),
(2, 'Premia_b', 300),
(3, 'Premia_c', 0),
(4, 'Premia_d', 700),
(5, 'Premia_e ', 400),
(6, 'Premia_f', 600),
(7, 'Premia_g', 800),
(8, 'Premia_h', 200),
(9, 'Premia_i', 900),
(10, 'Premia_j', 350);


INSERT INTO ksiegowosc.wynagrodzenia (id_wynagrodzenia, data, id_pracownika, id_pensji, id_premii)
VALUES
('W1', '2023-01-01', '123', 'P1', 1),
('W2', '2023-01-02', '456', 'P2', 2),
('W3', '2023-01-03', '789', 'P3', 3),
('W4', '2023-01-04', '012', 'P4', 4),
('W5', '2023-01-05', '345', 'P5', 5),
('W6', '2023-01-06', '678', 'P6', 6),
('W7', '2023-01-07', '901', 'P7', 7),
('W8', '2023-01-08', '234', 'P8', 8),
('W9', '2023-01-09', '567', 'P9', 9),
('W10', '2023-01-10', '890', 'P10', 10);
