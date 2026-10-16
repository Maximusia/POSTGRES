CREATE DATABASE Rado_gargote;
\c Rado_gargote;

-- étape 1 : la carte
-- RADO : "Je veux la liste de mes plats avec leurs prix"
CREATE TABLE IF NOT EXISTS categorie_plat (
    id_categorie INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom_categorie VARCHAR (100)
);

CREATE TABLE IF NOT EXISTS carte (
    id_plat INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom_plat VARCHAR(50),
    categorie_plat INTEGER,
    prix NUMERIC(10,2),
    FOREIGN KEY (categorie_plat) REFERENCES categorie_plat(id_categorie)
);

-- Catégorie existant
INSERT INTO categorie_plat (nom_categorie)
VALUES
('Plat malagasy'),
('Plat chinois'),
('Soupe'),
('Dessert et goûter'),
('Boisson');
-- insertion des données de la carte : plat
INSERT INTO carte (nom_plat, categorie_plat, prix)
VALUES
('Romazava', 1, 7000),
('Ravitoto sy henakisoa', 1, 8000),
('Akoho sy voanio', 1, 8500),
('Mi sao', 2, 6000),
('Soupe chinoise', 3, 5000),
('Mofo gasy (les 4)', 4, 1000),
('Ranon''ampango', 5, 500);