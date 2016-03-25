# Utiliser le client CSW

Vous gérez un catalogue de données moissonnable en CSW, vous souhaitez récupérer ces métadonnées dans Isogeo. Pour cela c’est très simple, il vous suffit de suivre la démarche suivante.

## Principes des noeuds CSW

Le GéoCatalogue national est le nœud privilégié pour la France de l’Infrastructure de Données Géographiques (IDG) nationale pour la recherche et la consultation des métadonnées. Sa base de métadonnées sert au rapportage de la France sur la mise en œuvre de la directive INSPIRE.

Ainsi, les autorités publiques détenant des données et services géographiques entrant dans le cadre d’INSPIRE sont incitées à alimenter le Géocatalogue. Trois méthodes sont possibles :

* en référençant leur propre catalogue de données, qui sera automatiquement moissonné pour alimenter le Géocatalogue.
* en déposant les fichiers de métadonnées sur le GéoCatalogue.
* en saisissant directement les métadonnées dans le GéoCatalogue (la méthode est expliquée plus loin dans l’article).

## Créer un point d'entrée "Service CSW"

Pour créer un point d’entrée « Service CSW », vous devez :

1.  Dans le menu « Points d’entrée », créer un nouveau point d’entrée ;
2.  Sélectionner le type « Service CSW » ;
3.  Nommer le point d’entrée (exemple : catalogue CG Calvados) ;
4.  Saisir l’URL du CSW sans les paramètres (c’est-à-dire sans ce qui est après le `?`) ;
5.  Enregistrer ;
6.  Scanner.

![Nouveau point d'entrée CSW](/images/adm_client_csw_new.png "Moissonner un serveur CSW")

Une fois le scan terminé, toutes les fiches de métadonnées récoltées sont consultables dans l’inventaire.

Ces fiches ne sont pas modifiables car nous considérons qu’elles sont encore gérées dans le catalogue moissonné. Si vous souhaitez les modifier et donc les gérer avec Isogeo, vous devez supprimer le point d’entrée et vous séparer de votre ancien outil de catalogage ;)

Remarques :

* Le moissonnage CSW respecte les même règles de fonctionnement que l’import XML ISO 19139 décrit dans le chapitre "Importer l'existant" ;
* le XML ISO 19139 disponible dans l’onglet « ressources » de la fiche est absolument identique à l'original (même s'il est invalide).
