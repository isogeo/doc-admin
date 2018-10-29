# Utiliser le client CSW

Vous gérez un catalogue de données moissonnable en CSW, vous souhaitez récupérer ces métadonnées dans Isogeo. Pour cela c’est très simple, il vous suffit de suivre la démarche suivante.

## Principes des noeuds CSW

Lorsque l&apos;on parle d&apos;un noeud CSW ([*Catalog Service Web*](http://www.opengeospatial.org/standards/cat)), on entend l&apos;implémentation du standard de l&apos;OGC qui a 2 volets :
* le serveur qui génère des flux selon les profils définis par le standard, interrogeables par les clients CSW ;
* le client qui envoie les requêtes formatées selon le standard à n&apos;importe quel serveur CSW et en récupère les métadonnées.

On parle de noeud car l&apos;ensemble peut former un réseau d&apos;échanges des catalogues de données.

Il s&apos;agit ici de moissonner les serveurs CSW grâce au client CSW intégré dans le module idoine d&apos;Isogeo, qui implémente le profil CSW de la version 2.0.2 standard (voir [OGC 07-006r1](http://portal.opengeospatial.org/files/?artifact_id=20555) et [OGC 07-045](http://portal.opengeospatial.org/files/?artifact_id=21460)).

> Astuce : pour la partie serveur, voir [le chapitre dédié](../publish/csw_server.html).

## Créer un point d&apos;entrée "Service CSW"

Pour créer un point d’entrée « Service CSW », vous devez :

1.  Dans le menu « Points d’entrée », créer un nouveau point d’entrée ;
2.  Sélectionner le type « Service CSW » ;
3.  Nommer le point d’entrée (exemple : catalogue CG Calvados) ;
4.  Saisir l’URL du CSW sans les paramètres (c’est-à-dire sans ce qui est après le `?`) ;
5.  Enregistrer ;
6.  Scanner.

![Nouveau point d&apos;entrée CSW](/assets/adm_client_csw_new.png "Moissonner un serveur CSW")

Une fois le scan terminé, toutes les fiches de métadonnées récoltées sont consultables dans l’inventaire.

Ces fiches ne sont pas modifiables car nous considérons qu’elles sont encore gérées dans le catalogue moissonné. Si vous souhaitez les modifier et donc les gérer avec Isogeo, vous devez supprimer le point d’entrée et vous séparer de votre ancien outil de catalogage ;)

Remarques :

* Le moissonnage CSW respecte les même règles de fonctionnement que l’import XML ISO 19139 décrit dans le chapitre "Importer l&apos;existant" ;
* le XML ISO 19139 disponible dans l’onglet « ressources » de la fiche est absolument identique à l&apos;original (même s&apos;il est invalide).
