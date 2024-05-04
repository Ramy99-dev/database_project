DECLARE
    solde_source NUMBER;
    montant_transfer NUMBER := 100; 
    numero_compte_source NUMBER := 1007; 
    numero_compte_destination NUMBER := 1008; 
BEGIN

    SELECT solde INTO solde_source
    FROM Compte
    WHERE numero_compte = numero_compte_source
    FOR UPDATE; -- Verrouillage pour garantir l'intégrité des données pendant la transaction

    
    IF solde_source >= montant_transfer THEN
     
        UPDATE Compte SET solde = solde - montant_transfer
        WHERE numero_compte = numero_compte_source;


        UPDATE Compte SET solde = solde + montant_transfer
        WHERE numero_compte = numero_compte_destination;

        -- Valider la transaction
        COMMIT;
        
        DBMS_OUTPUT.PUT_LINE('Transaction réussie : ' || montant_transfer || ' a été transféré du compte ' || numero_compte_source || ' vers le compte ' || numero_compte_destination);
    ELSE
     
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Solde insuffisant sur le compte source.');
    END IF;
EXCEPTION
 
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Une erreur est produite : ' || SQLERRM);
END;
/
