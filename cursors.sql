CREATE OR REPLACE PROCEDURE display_transactions(id_cl IN NUMBER) AS
  c1 SYS_REFCURSOR;
  trans_id Transaction.id_transaction%TYPE;
  trans_num_acc Transaction.numero_compte%TYPE;
  trans_montant Transaction.montant%TYPE;
  trans_type Transaction.type_transaction%TYPE;
  trans_date Transaction.date_transaction%TYPE;
BEGIN
  c1 := search_transaction(id_cl); 
  LOOP
    FETCH c1 INTO trans_id, trans_num_acc, trans_montant, trans_type, trans_date;
    EXIT WHEN c1%NOTFOUND;
    
    DBMS_OUTPUT.PUT_LINE('Transaction ID: ' || trans_id || ', Account Number: ' || trans_num_acc || ', Amount: ' || trans_montant || ', Type: ' || trans_type || ', Date: ' || trans_date);
  END LOOP;
  CLOSE c1;
END;
/
