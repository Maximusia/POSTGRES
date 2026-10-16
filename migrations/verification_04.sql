SELECT commandes.numero_commande AS commande,
    COALESCE(clients.nom_client, 'client de passage') AS nom_client,
    commandes.date_commande
FROM commandes
LEFT JOIN clients ON commandes.id_client = clients.id_client
ORDER BY commandes.date_commande;