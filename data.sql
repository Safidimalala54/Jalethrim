CREATE DATABASE jalethrim;

\c jalethrim;

CREATE TABLE produit ( 
  id VARCHAR PRIMARY KEY,
  reference VARCHAR NOT NULL,
  libelle VARCHAR(100),
  prix FLOAT,
  estDuJour BOOLEAN,
  quantiteEnStock INT
);

CREATE TABLE client (
  id VARCHAR(20) PRIMARY KEY,
  nom VARCHAR(100) NOT NULL,
  prenom VARCHAR(100) NOT NULL,
  motDePasse VARCHAR(100) NOT NULL,
  pseudo VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO produit (
  id,
  reference,
  libelle,
  prix,
  estDuJour,
  quantiteEnStock
) VALUES
  
  ('p001', 'P001', ' Poudre de fée', 10.5, false, 25),
  ('p002', 'P002', 'Chemise de mithril', 100.0, false, 3),
  ('p003', 'P003', 'Grimoire magique', 500.0, true, 10);

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
