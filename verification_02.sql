SELECT
    categorie_plat.nom_categorie,
    COUNT(DISTINCT carte.id_plat) AS nombre_de_plats
FROM categorie_plat
LEFT JOIN carte
    ON carte.categorie_plat = categorie_plat.id_categorie
GROUP BY
    categorie_plat.id_categorie,
    categorie_plat.nom_categorie;