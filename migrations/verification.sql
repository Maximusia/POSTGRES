SELECT carte.nom_plat plat, categorie_plat.nom_categorie catégorie, carte.prix prix 
FROM carte 
JOIN 
categorie_plat ON carte.categorie_plat = categorie_plat.id_categorie;