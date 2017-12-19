# Erreurs fréquentes

De  notre expérience d'années de support, dans la plupart des cas les soucis sont résolus en vérifiant de nouveau [les prérequis](prerequisites.html) puis en redémarrant le service.

## Eléments pour faciliter le diagnostic du support

Le service du Scan FME (nommé Isogeo Worker) étant le seul composant installé sur l'architecture informatique des clients, c'est celui qui exige le plus d'informations de la part du client. Afin d'assurer un support rapide, merci de lire attentivement les différetnts éléments à réviser ou joindre **avant de contacter le support**.

### Etapes classiques pour écarter les problèmes communs

1. Vérifier les prérequis, notamment :
	* l'ouverture du port TCP 5671 vers les domaines Isogeo (voir prérequis). Un changement de proxy ou pare-feu est si vite arrivé...
	* la licence FME et sa disponibilité durant tout la durée d'un scan
	* les droits en lecture sur les données ciblées et les droits d'écriture sur le dossier d'installation du service

2. Ouvrir une session bureau à distance sur le serveur où est installé le service, **en s'identifiant avec l'utilisateur configuré pour lancer le service** puis :
	1. ouvrir FME Data Inspector
	2. [ouvrir les jeux de données ciblés](https://desktopmanualbasic.safe.com/DesktopBasic1Basics/1.13.ViewingData.html) avec les mêmes paramètres d'accès (fichier de connexion, chemin...) que ceux entrés dans les points d'entrée du Scan FME

3. S'assurer que le point d'entrée configuré n'accède pas à plus de 1 300 jeux de données. Créer des points d'accès plus fins.

### Récupérer les logs du service de Scan

Le service Isogeo Worker produit plusieurs types de log (fichiers de journalisation des opérations et erreurs d'un processus informatique - [fiche Wikipédia [en]](https://en.wikipedia.org/wiki/Log_file)). Celui à joindre est celui contenu dans le dossier `dossier_installation_isogeo\daemon\logs` :

![Scan FME - Fichier de log](/images/scanFME_install_log_file.png "Fichier log du service Isogeo Worker (Scan FME)")

### Liens directs

Afin d'accéder rapidement à la bonne requête du Scan, joindre l'URL directe ou du moins celle du point d'entrée :

![Scan FME - URL unique des requêtes](/images/scanFME_request_url.png "Récupérer l'URL directe d'une requête du Scan")

Exemples :

* https://app.isogeo.com/groups/08b3054757544463abd06f3ab51ee491/admin/isogeo-worker/entrypoints/56f9232db5b9172c054c1860/requests/59d7912936046e0050d61a7f
* https://daemons.isogeo.com/g/08b3054757544463abd06f3ab51ee491/entrypoints/56f9232db5b9172c054c1860/requests/59d7912936046e0050d61a7f

### Récupérer les informations sur le contexte FME (FMEReport.html)

Safe Software, l'éditeur de FME, met un petit outil à disposition pour générer un rapport de diagnostic complet et lisible sur l'environnement logiciel autour de l'ETL (système d'exploitation, version de FME installée, présence de logiciels tiers comme Esri, Oracle...). Il est présenté dans [cet article de la base de connaissance partagée de FME](https://knowledge.safe.com/articles/714/general-troubleshooting-gathering-system-informati.html) et [détaillé dans celui-ci](https://knowledge.safe.com/articles/692/a-guide-to-interpreting-the-system-information-bat.html).

Pour l'utiliser, les **droits d'administrateur** sur la machine où FME est installé sont requis :

1. [Télécharger le fichier `system_information.bat`](https://cdn.rawgit.com/safesoftware/system-information-batch/master/system_information.bat) ;
2. Clic droit > "Exécuter en tant qu'administrateur" ;

Joindre à votre mail le fichier `FMEReport.html`, généré à côté du fichier `system_information.bat` ainsi que sur le bureau.

_____

## Du côté de l'installation

Si le message suivant s'affiche, veuillez vérifier [les prérequis](prerequisites.html), en particulier [les droits de l'utilisateur configuré](prerequisites.html#compte-utilisateur) pour lancer le service.

![Service non démarré](/images/scanFME_install_errors_ServiceDoNotStart.png "Le service n'a pas démarré")

## Du côté de l'interface

Si en lançant un scan sur un point d'entrée, un message d'erreur s'affiche, merci de :
* vérifier les paramètres du point d'entrée (le chemin/schéma existe t'il ?),
* vérifier les droits de [l'utilisateur configuré](prerequisites.html#compte-utilisateur) pour lancer le service,
* vérifier la disponibilité de la licence FME et des licences tierces éventuelles (1Spatial, ArcGIS).

![Echec du scan](/images/scanFME_scan_errors_UnableToAccessEntryPoint.png "Impossible d'accéder au chemin spécifié")

____

## Cas particuliers connus

### Shapefile supérieur à 2 Go

FME ne lit pas les shapefiles dont la taille de chaque composant (.shp / .dbf / .shx ...) dépasse les 2 Go, comme indiqué dans [la base de connaissance officielle](https://knowledge.safe.com/articles/772/fme-and-esri-arcgis-troubleshooting-guide.html) :

>  Note: Shape datasets larger than 2GB are considered invalid and will cause errors when opened in other applications.

Il s'agit d'ailleurs d'une limite inhérente au format, qu'Esri précise dans http://support.esri.com/technical-article/000010813[](http://support.esri.com/technical-article/000010813).

### Donnée géographique corrompue ou incohérente

Si un jeu de données contient un objet sans géomtrie, la donnée ne peut être lue jusqu'au bout par le Scan FME. Elle est donc indiquée dans la colonne erreur du détail de la requête du Scan avec la mantion "Impossible de lire la donnée".

Dans le fichier LOG, l'erreur intervient sur l'étape "LookUp". Exemple tiré d'une table PostGIS où le nombre d'enregistrement (lignes) était incohérent par rapport au nombre d'objets géométriques liés :

```json
{"worker":"wk-d864517e","level":"info","message":"(etl) Start new fme script from queue with options :  [ 'C:\\\\PROGRA~1\\\\Isogeo\\\\ISOGEO~1\\\\scripts\\\\lookup-postgis.fmw',\n  '--OUTPUT_JSON',\n  'C:\\\\PROGRA~1\\\\Isogeo\\\\ISOGEO~1\\\\tmp\\\\lookup-gC9aIjzL6',\n  '--LOG_FILE',\n  'C:\\\\PROGRA~1\\\\Isogeo\\\\ISOGEO~1\\\\tmp\\\\log-UUOBAvNXz',\n  '--USERNAME',\n  'isogeo',\n  '--PASSWORD',\n  'modepassepasse',\n  '--SOURCE',\n  'bdgeo_prod',\n  '--HOST',\n  '192.168.1.1',\n  '--PORT',\n  5432,\n  '--FEATURE_TYPES',\n  'schema.dataset' ]","timestamp":"2017-12-14T16:14:30.604Z"}
```
