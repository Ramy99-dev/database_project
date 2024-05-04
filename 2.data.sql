INSERT INTO Agence (id_agence, nom_agence, adresse_agence, telephone_agence) VALUES (7, 'Tunis Centre', 'Avenue Habib Bourguiba, Tunis', '71-345-678');
INSERT INTO Agence (id_agence, nom_agence, adresse_agence, telephone_agence) VALUES (8, 'Sousse Corniche', 'Avenue Taieb Mhiri, Sousse', '73-456-789');
INSERT INTO Agence (id_agence, nom_agence, adresse_agence, telephone_agence) VALUES (9, 'Hammamet Port', 'Marina Yasmine Hammamet, Hammamet', '72-567-890');
INSERT INTO Agence (id_agence, nom_agence, adresse_agence, telephone_agence) VALUES (10, 'Carthage Marina', 'Port de la Goulette, Tunis', '71-678-901');
INSERT INTO Agence (id_agence, nom_agence, adresse_agence, telephone_agence) VALUES (11, 'Djerba Midoun', 'Route Touristique, Djerba', '75-789-012');
INSERT INTO Agence (id_agence, nom_agence, adresse_agence, telephone_agence) VALUES (12, 'Bizerte Port', 'Port de Bizerte, Bizerte', '78-890-123');
INSERT INTO Agence (id_agence, nom_agence, adresse_agence, telephone_agence) VALUES (13, 'Monastir Marina', 'Port de Monastir, Monastir', '73-901-234');
INSERT INTO Agence (id_agence, nom_agence, adresse_agence, telephone_agence) VALUES (14, 'Nabeul Centre', 'Avenue Habib Thameur, Nabeul', '72-012-345');
INSERT INTO Agence (id_agence, nom_agence, adresse_agence, telephone_agence) VALUES (15, 'Kelibia Plage', 'Route de la Plage, Kelibia', '70-123-456');
INSERT INTO Agence (id_agence, nom_agence, adresse_agence, telephone_agence) VALUES (16, 'Tabarka Port', 'Port de Tabarka, Tabarka', '78-234-567');

INSERT INTO Client (id_client, nom_client, adresse, email, telephone) VALUES (7, 'Fatima Ben Ali', '20 Rue Ali Belhouane, Tunis', 'fatima.benali@example.com', '22-987-654');
INSERT INTO Client (id_client, nom_client, adresse, email, telephone) VALUES (8, 'Mehdi Chahed', '15 Rue Habib Thameur, Sousse', 'mehdi.chahed@example.com', '24-876-543');
INSERT INTO Client (id_client, nom_client, adresse, email, telephone) VALUES (9, 'Leila Trabelsi', '8 Avenue Habib Bourguiba, Hammamet', 'leila.trabelsi@example.com', '28-765-432');
INSERT INTO Client (id_client, nom_client, adresse, email, telephone) VALUES (10, 'Khaled Ben Youssef', '10 Avenue Habib Bourguiba, Tunis', 'khaled.benyoussef@example.com', '21-654-321');
INSERT INTO Client (id_client, nom_client, adresse, email, telephone) VALUES (11, 'Amira Gharsalli', '30 Rue Ali Belhouane, Djerba', 'amira.gharsalli@example.com', '27-543-210');
INSERT INTO Client (id_client, nom_client, adresse, email, telephone) VALUES (12, 'Amina Gharbi', '25 Rue Farhat Hached, Bizerte', 'amina.gharbi@example.com', '29-012-345');
INSERT INTO Client (id_client, nom_client, adresse, email, telephone) VALUES (13, 'Hichem Ben Amor', '12 Avenue Habib Bourguiba, Monastir', 'hichem.benamor@example.com', '23-901-234');
INSERT INTO Client (id_client, nom_client, adresse, email, telephone) VALUES (14, 'Salma Khiari', '7 Rue Ibn Khaldoun, Nabeul', 'salma.khiari@example.com', '27-890-123');
INSERT INTO Client (id_client, nom_client, adresse, email, telephone) VALUES (15, 'Anis Belhassen', '50 Route Touristique, Kelibia', 'anis.belhassen@example.com', '26-789-012');
INSERT INTO Client (id_client, nom_client, adresse, email, telephone) VALUES (16, 'Rim Baccouche', '3 Rue Salah Belhassen, Tabarka', 'rim.baccouche@example.com', '25-678-901');


INSERT INTO Compte (numero_compte, type_compte, solde, id_agence, id_client) VALUES (1007, 'Savings', 5500.00, 7, 7);
INSERT INTO Compte (numero_compte, type_compte, solde, id_agence, id_client) VALUES (1008, 'Checking', 2000.00, 8, 8);
INSERT INTO Compte (numero_compte, type_compte, solde, id_agence, id_client) VALUES (1009, 'Savings', 8500.00, 9, 9);
INSERT INTO Compte (numero_compte, type_compte, solde, id_agence, id_client) VALUES (1010, 'Checking', 1500.00, 10, 10);
INSERT INTO Compte (numero_compte, type_compte, solde, id_agence, id_client) VALUES (1011, 'Savings', 3000.00, 11, 11);
INSERT INTO Compte (numero_compte, type_compte, solde, id_agence, id_client) VALUES (1012, 'Savings', 6200.00, 12, 12);
INSERT INTO Compte (numero_compte, type_compte, solde, id_agence, id_client) VALUES (1013, 'Checking', 1800.00, 13, 13);
INSERT INTO Compte (numero_compte, type_compte, solde, id_agence, id_client) VALUES (1014, 'Savings', 9200.00, 14, 14);
INSERT INTO Compte (numero_compte, type_compte, solde, id_agence, id_client) VALUES (1015, 'Checking', 1200.00, 15, 15);
INSERT INTO Compte (numero_compte, type_compte, solde, id_agence, id_client) VALUES (1016, 'Savings', 4000.00, 16, 16);

INSERT INTO Transaction (id_transaction, numero_compte, montant, type_transaction, date_transaction, id_client) VALUES (7, 1007, 1000.00, 'Deposit', TIMESTAMP '2024-05-04 09:00:00', 7);
INSERT INTO Transaction (id_transaction, numero_compte, montant, type_transaction, date_transaction, id_client) VALUES (8, 1008, 500.00, 'Withdrawal', TIMESTAMP '2024-05-04 10:00:00', 8);
INSERT INTO Transaction (id_transaction, numero_compte, montant, type_transaction, date_transaction, id_client) VALUES (9, 1009, 200.00, 'Deposit', TIMESTAMP '2024-05-04 11:00:00', 9);
INSERT INTO Transaction (id_transaction, numero_compte, montant, type_transaction, date_transaction, id_client) VALUES (10, 1010, 300.00, 'Withdrawal', TIMESTAMP '2024-05-04 12:00:00', 10);
INSERT INTO Transaction (id_transaction, numero_compte, montant, type_transaction, date_transaction, id_client) VALUES (11, 1011, 100.00, 'Deposit', TIMESTAMP '2024-05-04 13:00:00', 11);
INSERT INTO Transaction (id_transaction, numero_compte, montant, type_transaction, date_transaction, id_client) VALUES (12, 1012, 800.00, 'Deposit', TIMESTAMP '2024-05-04 14:30:00', 12);
INSERT INTO Transaction (id_transaction, numero_compte, montant, type_transaction, date_transaction, id_client) VALUES (13, 1013, 200.00, 'Withdrawal', TIMESTAMP '2024-05-04 15:00:00', 13);
INSERT INTO Transaction (id_transaction, numero_compte, montant, type_transaction, date_transaction, id_client) VALUES (14, 1014, 1000.00, 'Deposit', TIMESTAMP '2024-05-04 15:30:00', 14);
INSERT INTO Transaction (id_transaction, numero_compte, montant, type_transaction, date_transaction, id_client) VALUES (15, 1015, 150.00, 'Withdrawal', TIMESTAMP '2024-05-04 16:00:00', 15);
INSERT INTO Transaction (id_transaction, numero_compte, montant, type_transaction, date_transaction, id_client) VALUES (16, 1016, 300.00, 'Deposit', TIMESTAMP '2024-05-04 16:30:00', 16);
