# Associer vos métadonnées Isogeo à vos datasources Jmap à l'aide du connecteur JMap/Isogeo

## Prérequis {#prerequisites}

## Isogeo {#isogeo_prerequisites}

Les prérequis Isogeo sont les suivants :

1. au moins un groupe de travail Isogeo ;
2. au moins un catalogue contenant au moins une métadonnée, partagé aux applications (OpenCatalog et Connecteur JMap/Isogeo) ;
3. un client_secret envoyé par l'équipe Isogeo afin de s'authentifier à l'api depuis JMap Admin.

### JMap Server {#jmap_prerequisites}

Les prérequis JMap Server sont les suivants :

1. JMap Server version Kathmandu hotfix 11 ou plus récent ;
2. une licence incluant le connecteur JMap/Isogeo, Jmap Pro et/ou JMap NG.

## Paramétrer le connecteur JMap/Isogeo {#configuration}

### Dans Isogeo {#configuration_isogeo}

Voici les étapes à suivre afin de paramétrer le connecteur JMap/isogeo dans Isogeo :

1. Dans le menu `Administration`  > `Inventaire` > `Partage`, cliquer sur `Nouveau` ;
2. Cliquer sur le bouton en forme d'engrenages ;
3. Sélectionner les applications `OpenCatalog` et `connecteur JMap/Isogeo` ;
4. Sélectionner le ou les catalogues à publier ;
5. Nommer le partage ;
6. `Enregistrer`.

![Configurer le partage du connecteur JMap/Isogeo](/assets/Connecteur_JMap/Configuration_partage.png)

### Dans JMap Admin{#configuration_jmap}

1. Accéder à jmap Admin ;
2. Dans l'onglet `extensions` ouvrir l'extension `Isogeo` ;
3. Renseigner les quatre champs suivants dans la section `Configuration` :
4. L'URL de l'OpenCatalog : URL de l'OpenCatalog généré côté Isogeo inclue dans le partage du connecteur ;  
5. ID du client : identifiant contenu dans le fichier JSON d'authentification fourni par Isogeo ;
6. Sercret du client : mot de passe du client contenu dans le fichier JSON d'authentification fourni par Isogeo ;
7. URL de base de JMap Admin pour la journalisation ;

![Configurer l'extension Isogeo dans JMap Admin](/assets/Connecteur_JMap/Configuration_isogeo_extension.png)

#### Planification de la Synchronisation {#configuration_jmap_planification}

Il vous suffira de cocher la case `Activer le planificateur` pour planifier le lancement de la synchronisation. Cette étape est optionnelle.

![Planifier le lancement des synchronisation](/assets/Connecteur_JMap/Configuration_tache_planifiee.png)

### Synchronisation et résultat {#synchronisation_and_results}

Une fois le paramétrage réalisé, il suffira de cliquer sur `Synchroniser` pour lancer la synchronisation.

Une fois la synchronisation terminée vous pourrez constater  que le champ `Métadonnées` est renseigné avec l'URL de la fiche de l'OpenCatalog correspondante. En effet, cela sera le cas pour toutes les datasources pour lesquelles une correspondance a été établie avec une fiche de l'OpenCatalog.

![URL de métadonnées renseigné automatiquement par le connecteur JMap/Isogeo](/assets/Connecteur_JMap/URL_OC_dans_jmap_admin.png)

Vous pourrez ainsi visualiser vos fiches de métadonnées Isogeo dans JMap NG et JMap Pro.

![Visualisation d'une fiche de l'OpenCatalog dans JMap NG](/assets/Connecteur_JMap/Fiche_OC_JMapNG.png)

![Visualisation d'une fiche de l'OpenCatalog dans JMap Pro](/assets/Connecteur_JMap/Fiche_OC_JMapPro.png)

### Vérification des logs {#logs}

Après chaque Synchronisation, un fichier de logs est généré, accessible dans la section `Journaux` de l'extension Isogeo de JMap Admin. Les datasources sont classées dans trois catégories différentes en fonction du résultat de la synchronisation :

1. Matches : la liste de datasources pour lesquelles une correspondance a était établie et pour lesquelles le champ `Métadonnées` a été renseigné ;
2. Mismatches : la liste de datasources pour lesquelles aucune correspondance n'a pu être établie ;
3. Conflicts : la liste de datasources pour lesquelles une correspondance a été établie et pour lesquelles le champ `Métadonnées` était déjà renseigné.

![Les trois catégorires d'un fichier de logs](/assets/Connecteur_JMap/Fichier_de_logs.png)

Dans le troisième cas, le connecteur n'écrase pas la valeur existante. Il sera nécessaire de supprimer manuellement la valeur existante, puis relancer la synchronisation afin que le connecteur puisse renseigner le champ avec l'URL de la fiche de l'OpenCatalog correspondante.
