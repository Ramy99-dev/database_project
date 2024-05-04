CREATE OR REPLACE FUNCTION get_solder(id_acc NUMBER) RETURN NUMBER
IS 
  solde_acc NUMBER;
BEGIN
  SELECT solde INTO solde_acc
  FROM Compte
  WHERE numero_compte = id_acc;

  RETURN solde_acc;
END;
/

CREATE OR REPLACE FUNCTION search_transaction(id_cl NUMBER) RETURN SYS_REFCURSOR
IS
  c1 SYS_REFCURSOR;
BEGIN
  OPEN c1 FOR
    SELECT *
    FROM Transaction
    WHERE id_client = id_cl;
  
  RETURN c1;
END;
/
