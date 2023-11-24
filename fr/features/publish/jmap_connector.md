# Associer vos métadonnées Isogeo à vos datasources Jmap à l'aide du connecteur JMap/Isogeo

## Prérequis JMap Server et Isogeo {#prerequisites}

Le connecteur JMap/Isogeo est accessible dans JMap Server à partir de la version Kathmandu hotfix 11, à condition que votre licence inclue le connecteur JMap/Isogeo.

Du côté Isogeo, vous aurez besoin d'un accès aux deux applications suivantes :

* l'OpenCatalog ;
* le connecteur JMap/Isogeo avec un client_secret envoyé par l'équipe Isogeo.

## Paramétrer le connecteur JMap/Isogeo {#configuration}

### Dans Isogeo {#configuration_isogeo}

Voici les étapes à suivre afin de paramétrer le connecteur JMap/isogeo dans Isogeo :

1. Dans le menu `Administration`  > `Inventaire` > `Partage`, cliquer sur `Nouveau` ;
2. Cliquer sur le bouton en forme d'engrenages ;
3. Sélectionner les applications `OpenCatalog` et `connecteur JMap/Isogeo` ;
4. Sélectionner le ou les catalogues à publier ;
5. Nommer le partage ;
6. `Enregistrer` ;

![Configurer le partage du connecteur JMap/Isogeo](/assets/Connecteur_JMap/Configuration_partage.png)

### Dans JMap Admin{#configuration_jmap}

1. Accéder à jmap Admin ;
2. Dans l'onglet `extensions` ouvrir l'extension `Isogeo` ;
3. Renseigner les quatre champs suivants dans la section `Configuration` :

* L'URL de l'OpenCatalog : URL de l'OpenCatalog généré côté Isogeo inclue dans le partage du connecteur ;  
* ID du client : indentifiant contenu dans le client_secret ;
* Sercret du client : mot de passe du client contenu dans le client secret ;
* URL de base de JMap Adminpour la journalisation.

![Configurer l'extension Isogeo dans JMap Admin](/assets/Connecteur_JMap/Configuration_isogeo_extension.png)

4. (factultatif) Cocher la case `Activer le planificateur` pour planifier le lancement de la synchronisation ;

![Planifier le lancement des synchronisation](/assets/Connecteur_JMap/Configuration_tache_planifiee.png)

### Synchronisation et résultat {#synchronisation_and_results}

Une fois le paramétrage réalisé, il suffira de cliquer sur `Synchroniser` pour lancer la synchronisation.

Une fois la synchronisation terminée vous pourrez constater  que le champ `Métadonnées` renseigné avec l'URL de la fiche de l'OpenCatalog correspondante, pour toutes pour les datasources pour lesquelles une correspondance a été établie avec une fiche de l'OpenCatalog.

![URL de métaonnées renseigné automatiquement par le connecteur JMap/Isogeo](/assets/Connecteur_JMap/URL_OC_dans_jmap_admin.png)

Vous pourrez ainsi visualiser vos fiches de métadonnées Isogeo dans JMap NG et JMap Pro.

![Visualisation d'une fiche de l'OpenCatalog dans JMap NG](/assets/Connecteur_JMap/Fiche_OC_JMapNG.png)

![Visualisation d'une fiche de l'OpenCatalog dans JMap Pro](/assets/Connecteur_JMap/Fiche_OC_JMapPro.png)

### Vérification des logs {#logs}

Après chaque Synchronisation, un fichier de logs est généré, accessible dans la section `Journaux` de l'extension Isogeo de JMap Admin. Les datasources sont classées dans trois catégories différentes en fonction du résultat de la synchronisation :

1. Matches : la liste de datasources pour lesquelles une correspondance a était établie et pour lesquelles le champ `Métaddonnées` a été renseigné ;
2. Mistches : la liste de datasources pour lesquelles aucune correspondance n'a pu être établie ;
3. Conflicts : la liste de datasources pour lesquelles une correspondance a était établie et pour lesquelles le champ `Métadonnées` était déjà renseigné.

![Les trois catégorires d'un fichier de logs](/assets/Connecteur_JMap/Fichier_de_logs.png)

Dans le troisième cas, le connecteur n'écrase pas la valeur existante. Il sera nécessaire de supprimer manuellement la valeur existante, puis relancer la synchronisation afin que le connecteur puisse renseigner le champ avec l'URL de la fiche de l'OpenCatalog correspondante.
