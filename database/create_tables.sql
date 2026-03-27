CREATE TABLE aTip(
    tip CHAR(1) NOT NULL,
    denumire VARCHAR2(20),
    necesarAviz CHAR(2) CHECK (necesarAviz IN ('da', 'nu')),
    CONSTRAINT tip_pk PRIMARY KEY (tip)
);

CREATE TABLE aAnimal(
    coda NUMBER(3) NOT NULL,
    tip CHAR(1) NOT NULL,
    rasa VARCHAR2(20),
    nume VARCHAR2(20),
    varsta NUMBER(2),
    descriere VARCHAR2(50),
    poza BLOB,
    CONSTRAINT animal_pk PRIMARY KEY (coda),
    CONSTRAINT animal_fk FOREIGN KEY (tip) REFERENCES aTip(tip) ON DELETE CASCADE
);

CREATE TABLE aListaVaccin(
    coda NUMBER(3) NOT NULL,
    vaccin VARCHAR2(20) NOT NULL,
    dataV DATE NOT NULL,
    CONSTRAINT listaVaccin_pk PRIMARY KEY (vaccin, coda, dataV),
    CONSTRAINT listaVaccin_fk FOREIGN KEY (coda) REFERENCES aAnimal(coda) ON DELETE CASCADE
);

CREATE TABLE aCerereAdoptie(
    cID CHAR(5) NOT NULL,
    coda NUMBER(3) NOT NULL,
    dataC DATE,
    cnp VARCHAR2(13),
    nume VARCHAR2(20),
    tel VARCHAR2(10),
    CONSTRAINT cerereAdoptie_pk PRIMARY KEY (cID),
    CONSTRAINT cerereAdoptie_fk FOREIGN KEY (coda) REFERENCES aAnimal(coda) ON DELETE CASCADE
);