CREATE TABLE Agence (
    id_agence NUMBER PRIMARY KEY,
    nom_agence VARCHAR(100),
    adresse_agence VARCHAR(255),
    telephone_agence VARCHAR(20)
);

CREATE TABLE Client (
    id_client NUMBER PRIMARY KEY,
    nom_client VARCHAR(100),
    adresse VARCHAR(255),
    email VARCHAR(100),
    telephone VARCHAR(20)
);

CREATE TABLE Compte (
    numero_compte NUMBER PRIMARY KEY,
    type_compte VARCHAR(50),
    solde NUMBER,
    id_agence NUMBER,
    id_client NUMBER,
    FOREIGN KEY (id_agence) REFERENCES Agence(id_agence),
    FOREIGN KEY (id_client) REFERENCES Client(id_client)
);


CREATE TABLE Transaction (
    id_transaction NUMBER PRIMARY KEY,
    numero_compte NUMBER,
    montant NUMBER,
    type_transaction VARCHAR(20),
    date_transaction TIMESTAMP,
    id_client NUMBER,
    FOREIGN KEY (numero_compte) REFERENCES Compte(numero_compte),
    FOREIGN KEY (id_client) REFERENCES Client(id_client)
);

