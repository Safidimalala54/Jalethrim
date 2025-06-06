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
('REF001', 'T-shirt Gandalf gris', TRUE, 19.99, 50),
('REF002', 'Cape noire longue', FALSE, 89.90, 10),
('REF003', 'Baguette magique bois', FALSE, 34.50, 25),
('REF004', 'Anneau en metal doree', TRUE, 59.00, 5),
('REF005', 'Potion denergie 250ml', FALSE, 7.99, 100),
('REF006', 'Carte Terre Milieu toile', FALSE, 29.90, 15),
('REF007', 'Tasse "You shall not pass"', TRUE, 12.00, 60),
('REF008', 'Cle ancienne dErebor', FALSE, 45.50, 8);