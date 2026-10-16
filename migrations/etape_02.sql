
-- étape 1 : la catégorie
-- RADO : "Je range mes plats par catégorie : plats malagasy, plats chionois, soupes, desserts, boissons"
ALTER TABLE carte
ALTER COLUMN categorie_plat SET NOT NULL;