DELETE FROM aCerereAdoptie;
DELETE FROM aListaVaccin;
DELETE FROM aAnimal;
DELETE FROM aTip;

-- Tipuri animale
INSERT INTO aTip VALUES ('c', 'caine', 'da');
INSERT INTO aTip VALUES ('p', 'pisica', 'nu');
INSERT INTO aTip VALUES ('i', 'iepure', 'nu');

-- Animale
INSERT INTO aAnimal VALUES (403, 'c', 'Dalmatian', 'Dante', 3, 'jucaus, ii place sa alerge', NULL);
INSERT INTO aAnimal VALUES (404, 'c', 'Poodle', 'Zara', 1, 'energic, jucaus', NULL);
INSERT INTO aAnimal VALUES (405, 'c', 'Labrador', 'Stela', 4, 'prietenoasa si energica', NULL);
INSERT INTO aAnimal VALUES (406, 'c', 'Ciobanesc german', 'Rei', 5, 'jucaus, adora mingile', NULL);
INSERT INTO aAnimal VALUES (407, 'c', 'Golden retriever', 'Pufi', 2, 'protector, ideal pentru paza', NULL);
INSERT INTO aAnimal VALUES (408, 'c', 'Husky', 'Patrocle', 10, 'prietenos, ii place zapada', NULL);
INSERT INTO aAnimal VALUES (409, 'c', 'Bulldog', 'Max', 9, 'curajos, nu se teme de nimic', NULL);
INSERT INTO aAnimal VALUES (410, 'c', 'Chihuahua', 'Bella', 4, 'mic, dar curajos', NULL);
INSERT INTO aAnimal VALUES (411, 'c', 'Pomeranian', 'Buburuza', 7, 'adorabil, cuminte', NULL);

INSERT INTO aAnimal VALUES (412, 'p', 'British shorthair', 'Kitty', 1, 'prietenoasa cu oamenii', NULL);
INSERT INTO aAnimal VALUES (413, 'p', 'Siameza', 'Luna', 3, 'linistita', NULL);

INSERT INTO aAnimal VALUES (414, 'i', 'Angora', 'Bugs Bunny', 2, 'amuzant si sportiv', NULL);
INSERT INTO aAnimal VALUES (415, 'i', 'Cap de leu', 'Ingres', 1, 'obisnuit cu oamenii', NULL);
INSERT INTO aAnimal VALUES (416, 'i', 'Mini lop', 'Thumper', 1, 'bland si cuminte', NULL);

-- Vaccinuri
INSERT INTO aListaVaccin VALUES (403, 'Leptospiroza', TO_DATE('24-01-2024','DD-MM-YYYY'));
INSERT INTO aListaVaccin VALUES (404, 'Parvoviroza', TO_DATE('12-02-2024','DD-MM-YYYY'));
INSERT INTO aListaVaccin VALUES (405, 'Hepatita infectioasa', TO_DATE('05-03-2024','DD-MM-YYYY'));
INSERT INTO aListaVaccin VALUES (408, 'Rabie', TO_DATE('02-02-2024','DD-MM-YYYY'));
INSERT INTO aListaVaccin VALUES (410, 'DHPP', TO_DATE('01-03-2024','DD-MM-YYYY'));

-- Cereri adoptie
INSERT INTO aCerereAdoptie VALUES ('C1342', 403, TO_DATE('04-04-2025','DD-MM-YYYY'), '5801011234567', 'Andrei Pop', '0712345678');
INSERT INTO aCerereAdoptie VALUES ('C1234', 407, TO_DATE('21-05-2025','DD-MM-YYYY'), '6020102234567', 'Maria Ionescu', '0723456789');
INSERT INTO aCerereAdoptie VALUES ('C4321', 406, TO_DATE('09-05-2025','DD-MM-YYYY'), '5820202123456', 'Vlad Mihai', '0782030465');