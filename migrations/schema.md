# Etape 1:
### La carte
CATERGORIE_PLAT(**id_categorie**, nom_categorie)
CARTE(**id_plat, nom_plat, #categorie_plat, prix)

## Piège 
- Je choisi le type NUMERIC(10,2) pour le prix car l'écriture du nombre malagasy se fait en un nombre avec 2 chiffre après virgule en général 

- Je choisi INTEGER GENERATED ALWAYS AS IDENTITY pour l'identifiant pour éviter d'écrire un à un l'identifiant des produits