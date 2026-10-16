# Etape 1:
### La carte
CATERGORIE_PLAT(**id_categorie**, nom_categorie)
CARTE(**id_plat, nom_plat, #categorie_plat, prix)

## Piège 
- Je choisi le type NUMERIC(10,2) pour le prix car l'écriture du nombre malagasy se fait en un nombre avec 2 chiffre après virgule en général 

- Je choisi INTEGER GENERATED ALWAYS AS IDENTITY pour l'identifiant pour éviter d'écrire un à un l'identifiant des produits

# Etape 2:
### Les catégories
CATEGORIE_PLAT(**id_categorie**, nom_categorie)
ALTER TABLE carte
ALTER COLUMN categorie_plat SET NOT NULL;

## Piège
- Parce que si on n'ajoute simplement une colonne **categorie VARCHAR(50)** l'utilisateur pourrait tous faire une faute de frappe ce qui ne facilite pas la filtrage des plats par catégories. Par exemple l'utisateur pourrait écrire malagasy tout simplement au mieu de Plat malagasy.

# Etape 3:
### Les commandes
COMMANDE(**id_commande**, #id_plat, quantite, numero_commande, date_commande)

## Piège
- Je place la quantité dans la table commande car un commande peut contenir plusieur plats