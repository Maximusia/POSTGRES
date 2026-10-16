-- étape 4: LEs habitués
-- RADO: "" Certains clients sont des habitués, je veux les reconnaître. Mais la plupart sont de passage et je ne leur demande rien "

CREATE TABLE clients (
    id_client INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    nom_client VARCHAR(100) NOT NULL
);

ALTER TABLE commandes
ADD COLUMN id_client INTEGER,
ADD CONSTRAINT fk_id_client FOREIGN KEY (id_client) REFERENCES clients(id_client);

INSERT INTO clients (nom_client)
VALUES
    ('Volana'),
    ('Tiana'),
    ('Lala'),
    ('Mamy'),
    ('Fidy'),
    ('Hery');