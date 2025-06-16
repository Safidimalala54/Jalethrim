CREATE DATABASE Jalethrim;

\c jalethrim

CREATE TABLE produit (
    id VARCHAR PRIMARY KEY,
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

CREATE TABLE client (
  id VARCHAR(20) PRIMARY KEY,
  nom VARCHAR(100) NOT NULL,
  prenom VARCHAR(100) NOT NULL,
  motDePasse VARCHAR(100) NOT NULL,
  pseudo VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO client (
  id,
  nom,
  prenom,
  motDePasse,
  pseudo
) VALUES

('c001','Sacquet ', 'Frodon', 'anneauSecret123', 'frodonlefurtif'),
('c002','Vertefeuille', 'Legoli', 'flecheLune2025', 'archeElfique'),
('c003','Eorlingas', 'Théoden', 'chevalBlanc77', 'roiDuRohan');

