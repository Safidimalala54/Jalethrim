CREATE DATABASE jalethrim;

CREATE TABLE produit ( 
  id VARCHAR PRIMARY KEY,
  reference VARCHAR NOT NULL,
  libelle VARCHAR(100),
  prix FLOAT,
  estDuJour BOOLEAN,
  quantiteEnStock INT
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
