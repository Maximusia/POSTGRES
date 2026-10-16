-- étape 3: Les commandes
-- RADO : " J'enregistre les commandes : la date, quels plats, et combien de chaque"

CREATE TABLE commandes (
    id_commnande INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    id_plat INTEGER,
    quantite INTEGER,
    numero_commande VARCHAR(50) NOT NULL,
    date_commande TIMESTAMP NOT NULL DEFAULT NOW(),
    FOREIGN KEY (id_plat) REFERENCES carte(id_plat)
);

INSERT INTO commandes (numero_commande, id_plat, quantite)
VALUES
    ('CMD 001', 1, 2),
    ('CMD 001', 2, 1),
    ('CMD 001', 3, 3),
    ('CMD 002', 4, 1),
    ('CMD 002', 5, 2),
    ('CMD 003', 6, 1);