CREATE OR REPLACE TRIGGER update_stock_level
AFTER INSERT ON Transaction
FOR EACH ROW
DECLARE
  
  v_stock NUMBER;
BEGIN
  IF :NEW.type_transaction = 'IN' THEN 
    UPDATE Stock
    SET quantity = quantity + :NEW.quantity
    WHERE product_id = :NEW.product_id;
  ELSIF :NEW.type_transaction = 'OUT' THEN 
    UPDATE Stock
    SET quantity = quantity - :NEW.quantity
    WHERE product_id = :NEW.product_id;
  END IF;
END;
/


CREATE OR REPLACE TRIGGER generate_inventory_report
AFTER INSERT ON Transaction
FOR EACH STATEMENT
BEGIN
 
  INSERT INTO Inventory_Performance_Report (transaction_id, report_date, performance_metric)
  VALUES (:NEW.transaction_id, SYSDATE, 'Some performance metric value');
END;
/
