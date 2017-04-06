# Erreurs fréquentes

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
