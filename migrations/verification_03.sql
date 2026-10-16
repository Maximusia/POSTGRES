SELECT commande.numero_commande commande,
    commande.quantite * carte.prix AS total_commande,
    commande.date_commande
FROM commandes AS commande
JOIN carte ON commande.id_plat = carte.id_plat
ORDER BY commande.date_commande;