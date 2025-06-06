CREATE DATABASE Jalethrim;

\c jalethrim

CREATE TABLE Produit (
    id SERIAL PRIMARY KEY,
    reference VARCHAR(300) NOT NULL,
    libelle VARCHAR(300) NOT NULL,
    estDuJour BOOLEAN NOT NULL,
    prix DECIMAL(8,2) NOT NULL,
    quantiteEnStock INTEGER DEFAULT 0
);

INSERT INTO Produit (reference, libelle, estDuJour, prix, quantiteEnStock)
VALUES
('P001', 'Poudre de fee', FALSE, 10, 25),
('P002', 'Chemise de mithril', FALSE, 100, 3),
('P003', 'Grimoire magique', TRUE, 500, 10);