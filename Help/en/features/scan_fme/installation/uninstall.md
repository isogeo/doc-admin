# Désinstallation du service de scan

La suppression d'un service Isogeo s'effectue en deux étapes dépendantes dont l'ordre d’exécution n'est pas important. Cependant, si l'une des deux étapes n'est pas réalisée, cela peut amener des dysfonctionnements futurs lors de l'utilisation de l'application.

## Désinscription du service dans Isogeo

1. Sur Isogeo, rendez-vous dans l'application Scan FME (menu `Administration` → `Applications / Scan FME`) ou directement en suivant [ce lien](https://app.isogeo.com/admin/isogeo-worker) ;

2. Dans l'interface, activez le mode de suppression en cliquant sur `Supprimer` dans le menu en haut à droite ;

3. Cliquez sur le service que vous voulez supprimer (ou sur l'icône de validation pour annuler) ;

4. Une fois le service supprimé, cliquez sur valider.

Si vous n'avez plus de service d'inscrit, vous serez automatiquement amené(e) à en télécharger un nouveau.

## Suppression du service installé

Plusieurs paramètres sont potentiellement spécifiques à votre installation.

1. À l'aide de votre explorateur Windows, naviguez vers le répertoire du service (selon nos recommandations, ce devrait être `C:\Program Files\Isogeo`) ;

2. Ouvrez le dossier daemon ;

3. Faites un clic droit sur le fichier uninstall.bat, puis `Exécuter en tant qu’administrateur`. Une fenêtre devrait s'ouvrir puis se fermer automatiquement.

4. Supprimez l'ensemble de répertoire du service.
