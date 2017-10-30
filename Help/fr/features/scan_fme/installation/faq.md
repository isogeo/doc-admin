# Erreurs fréquentes

De  notre expérience d'années de support, dans la plupart des cas les soucis sont résolus en vérifiant de nouveau [les prérequis](prerequisites.html) puis en redémarrant le service.

## Eléments pour faciliter le diagnostic du support




### Récupérer les logs du service de Scan

Le service Isogeo Worker produit 2 sortes de fichiers de log :


2. Préciser 


### Récupérer les informations sur le contexte FME (FMEReport.html)

Safe Software, l'éditeur de FME, met un petit outil à disposition pour générer un rapport de diagnostic complet et lisible sur l'environnement logiciel autour de l'ETL (système d'exploitation, version de FME installée, présence de logiciels tiers comme Esri, Oracle...). Il est présenté dans [cet article de la base de connaissance partagée de FME](https://knowledge.safe.com/articles/714/general-troubleshooting-gathering-system-informati.html) et [détaillé dans celui-ci](https://knowledge.safe.com/articles/692/a-guide-to-interpreting-the-system-information-bat.html).

Pour l'utiliser, les **droits d'administrateur** sur la machine où FME est installé sont requis :

1. [Télécharger le fichier `system_information.bat`](https://cdn.rawgit.com/safesoftware/system-information-batch/master/system_information.bat) ;
2. Clic droit > "Exécuter en tant qu'administrateur" ;

Le fichier `FMEReport.html` est généré à côté du fichier `system_information.bat` ainsi que sur le bureau.

____

## Du côté de l'installation

Si le message suivant s'affiche, veuillez vérifier [les prérequis](prerequisites.html), en particulier [les droits de l'utilisateur configuré](prerequisites.html#compte-utilisateur) pour lancer le service.

![Service non démarré](/images/scanFME_install_errors_ServiceDoNotStart.png "Le service n'a pas démarré")

## Du côté de l'interface

Si en lançant un scan sur un point d'entrée, un message d'erreur s'affiche, merci de :
* vérifier les paramètres du point d'entrée (le chemin/schéma existe t'il ?),
* vérifier les droits de [l'utilisateur configuré](prerequisites.html#compte-utilisateur) pour lancer le service,
* vérifier la disponibilité de la licence FME et des licences tierces éventuelles (1Spatial, ArcGIS).

![Echec du scan](/images/scanFME_scan_errors_UnableToAccessEntryPoint.png "Impossible d'accéder au chemin spécifié")

## Cas particuliers connus

### Shapefile supérieur à 2 Go

FME ne lit pas les shapefiles dont la taille de chaque composant (.shp / .dbf / .shx ...) dépasse les 2 Go, comme indiqué dans [la base de connaissance officielle](https://knowledge.safe.com/articles/772/fme-and-esri-arcgis-troubleshooting-guide.html) :

>  Note: Shape datasets larger than 2GB are considered invalid and will cause errors when opened in other applications.

Il s'agit d'ailleurs d'une limite inhérente au format, qu'Esri précise dans http://support.esri.com/technical-article/000010813[](http://support.esri.com/technical-article/000010813).
