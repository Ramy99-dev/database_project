 fragmentaion horizontal
 -- Création de la vue pour les comptes d'épargne (Savings)
CREATE VIEW compte_epargne AS
SELECT *
FROM Compte
WHERE type_compte = 'Savings';

-- Création de la vue pour les comptes courants (Checking)
CREATE VIEW compte_courant AS
SELECT *
FROM Compte
WHERE type_compte = 'Checking';


-- Création de la vue pour les agences de Grand Tunis
CREATE VIEW agence_grand_tunis AS
SELECT *
FROM Agence
WHERE telephone_agence LIKE '70%' OR telephone_agence LIKE '71%';

-- Création de la vue pour les agences du Sahel
CREATE VIEW agence_sahel AS
SELECT *
FROM Agence
WHERE telephone_agence LIKE '73%';

-- Création de la vue pour les agences du Cap Bon
CREATE VIEW agence_cap_bon AS
SELECT *
FROM Agence
WHERE telephone_agence LIKE '72%';



fragmentation vertiral
-- Création de la vue pour les informations des clients
CREATE VIEW info_client AS
SELECT id_client, nom_client, adresse, email, telephone
FROM Client;

-- Création de la vue pour les informations des comptes
CREATE VIEW info_compte AS
SELECT numero_compte, type_compte, solde, id_agence, id_client
FROM Compte;

-- Création de la vue pour les détails du compte
CREATE VIEW compte_details AS
SELECT numero_compte, type_compte, solde
FROM Compte;

-- Création de la vue pour les informations de l'agence
CREATE VIEW compte_agence AS
SELECT c.numero_compte, a.id_agence, a.nom_agence, a.adresse_agence, a.telephone_agence
FROM Compte c
JOIN Agence a ON c.id_agence = a.id_agence;

-- Création de la vue pour les informations du client
CREATE VIEW compte_client AS
SELECT c.numero_compte, cl.id_client, cl.nom_client, cl.adresse, cl.email, cl.telephone
FROM Compte c
JOIN Client cl ON c.id_client = cl.id_client;


Replication des donnees
  -- Création de la table de réplication pour les clients
CREATE TABLE Client_replica AS
SELECT * FROM Client;

-- creation d'une table répliquee
CREATE TABLE transaction_replica
(
    id_transaction   NUMBER PRIMARY KEY,
    numero_compte    NUMBER NOT NULL,
    montant          NUMBER NOT NULL,
    type_transaction VARCHAR2(20) NOT NULL,
    date_transaction TIMESTAMP NOT NULL,
    id_client        NUMBER NOT NULL,
    FOREIGN KEY (numero_compte) REFERENCES compte(numero_compte),
    FOREIGN KEY (id_client) REFERENCES client(id_client)
);
-- inserer dans table repliquée a travers un trigger
CREATE OR REPLACE TRIGGER insert_transaction_replica
AFTER INSERT ON transaction
FOR EACH ROW
BEGIN
    INSERT INTO transaction_replica
    (id_transaction, numero_compte, montant, type_transaction, date_transaction, id_client)
    VALUES
    (:NEW.id_transaction, :NEW.numero_compte, :NEW.montant, :NEW.type_transaction, :NEW.date_transaction, :NEW.id_client);
END;
/

-- mettre a jour d'un table répliquée
CREATE OR REPLACE TRIGGER update_transaction_replica
AFTER INSERT OR UPDATE OR DELETE ON transaction
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO transaction_replica
        VALUES (:NEW.id_transaction, :NEW.numero_compte, :NEW.montant, :NEW.type_transaction, :NEW.date_transaction, :NEW.id_client);
    ELSIF UPDATING THEN
        UPDATE transaction_replica
        SET numero_compte = :NEW.numero_compte,
            montant = :NEW.montant,
            type_transaction = :NEW.type_transaction,
            date_transaction = :NEW.date_transaction,
            id_client = :NEW.id_client
        WHERE id_transaction = :OLD.id_transaction;
    ELSIF DELETING THEN
        DELETE FROM transaction_replica
        WHERE id_transaction = :OLD.id_transaction;
    END IF;
END;
/