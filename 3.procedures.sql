CREATE OR REPLACE PROCEDURE create_account(num IN NUMBER , type IN VARCHAR , solde IN NUMBER , id_ag IN NUMBER ,id_cl IN NUMBER) AS
BEGIN 
    INSERT INTO compte VALUES(num,type,solde,id_ag,id_cl);
END;
/


CREATE OR REPLACE PROCEDURE create_transaction(id_transaction IN NUMBER , num_acc IN NUMBER , montant IN NUMBER ,type_t IN VARCHAR ,date_t IN VARCHAR) AS
BEGIN
    INSERT INTO Transaction VALUES(id_transaction,num_acc,montant,type_t,date_t);
END;
/

CREATE OR REPLACE PROCEDURE edit_client(id_cl IN NUMBER , nom IN VARCHAR , addr IN VARCHAR , email IN VARCHAR , tel IN VARCHAR) AS
BEGIN
  UPDATE client
  SET nom_client = nom , 
      adresse = addr,
      email = email,
      telephone = tel
  WHERE id_client = id_cl;
END;
/