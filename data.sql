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
  pseudo VARCHAR(100) NOT NULL UNIQUE,
  motDePasse VARCHAR(100) NOT NULL,
  nom VARCHAR(100) NOT NULL,
  prenom VARCHAR(100) NOT NULL
);

insert into client (
  id,
  pseudo,
  motDePasse,
  nom,
  prenom
) values
  ('c001', 'elrond', 'elrond123', 'Elrond', 'Half-elven'),
  ('c002', 'galadriel', 'galadriel456', 'Galadriel', 'Lady of Light'),
  ('c003', 'gandalf', 'gandalf789', 'Gandalf', 'the Grey');

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

