CREATE OR REPLACE TRIGGER notify_important_transactions
AFTER INSERT ON Transaction
FOR EACH ROW
DECLARE
  v_client_id Client.id_client%TYPE;
  v_client_email Client.email%TYPE;
    v_subject VARCHAR2(100) := 'Important Transaction Notification';
  v_message VARCHAR2(4000);
BEGIN
  
  SELECT id_client, email INTO v_client_id, v_client_email
  FROM Client
  WHERE id_client = :NEW.id_client;


  IF :NEW.montant > 1000 THEN
  
    DBMS_OUTPUT.PUT_LINE('Sending notification email to client ' || v_client_id || ' at email ' || v_client_email || ' regarding transaction ID ' || :NEW.id_transaction);
     v_message := 'Dear Customer,' || CHR(10) || CHR(10) || 
                 'We would like to inform you that a transaction with ID ' || :NEW.id_transaction ||
                 ' has been processed on your account, and its amount exceeds 1000.';

    
    UTL_MAIL.send(sender => 'wajdizakhama9@gmail.com',
                  recipients => v_client_email,
                  subject => v_subject,
                  message => v_message);
  END IF;
END;
/
