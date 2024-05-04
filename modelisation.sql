CREATE TYPE AdresseType AS OBJECT (
    rue VARCHAR2(100),
    ville VARCHAR2(50),
    code_postal VARCHAR2(10),
    pays VARCHAR2(50)
);


CREATE TYPE InfosContactType AS OBJECT (
    email VARCHAR2(100),
    telephone VARCHAR2(20)
);


CREATE TYPE ClientType AS OBJECT (
    id_client NUMBER,
    nom VARCHAR2(100),
    adresse Adresse,
    contact InfosContact
);