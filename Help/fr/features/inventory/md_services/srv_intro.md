# Documenter automatiquement les métadonnées de services géographiques

En plus d'être indispensables pour être en conformité avec la directive INSPIRE, les services web géographiques sont une valeur ajoutée indiscutable dans la démarche de valorisation et du développement des usages autour de l'information géographique.

Isogeo permet d'automatiser le remplissage des métadonnées de services à partir de la simple adresse URL d'un service :
* d'une part, le temps de saisie et de mise à jour des métadonnées est grandement diminué ;
* d'autre part, la qualité de documentation est améliorée ainsi que l'expérience utilisateur des applications de consultation, au premier rang desquelles OpenCatalog.

Enfin, les informations saisies viennent enrichir la recherche :
* retrouver des données à partir d'un service et vice-versa ;
* rechercher des couches dans un service.

Cette brique fonctionnelle prend bien sûr en compte les services standardisés de l'OGC (*Open Geospatial Consortium*) mais aussi avec les formats spécifiques d'ESRI.

![OGC](/images/logos/ogc.png "Open Geospatial Consortium") ![ESRI](/images/logos/arcgis.jpg "Environmental Systems Research Institute - ArcGIS")

## Principe général

Globalement, la marche à suivre se décompose en 2 étapes, détaillées dans les sous-chapitres :
1. Recenser automatiquement les couches d'un service géographique en se basant sur son URL de base ;
2. Associer chaque couche servie à une donnée inventoriée dans Isogeo.

Voici un aperçu de la démarche complète ([cliquer ici pour voir en grand](/fr/images/inv_edit_services.gif)) :

![Services](/images/inv_edit_services.gif "Documentation automatisée de services géographiques")

## Services et versions gérés

| Type de service      | Versions    | Exemples d'outils compatibles |
| :------------------- | :---------- | :---------------------------- |
| WFS                  | 1.1.0 ; 2.0 | deegree, GeoServer, ArcGIS Server >= 10.3 |
| WMS                  | 1.1.1 ; 1.3.0 | deegree, GeoServer, QGIS Server, Rok4, ArcGIS Server >= 10.3 |
| WMTS                 | 1.0.0       | deegree, GeoServer, Rok4, ArcGIS Server >= 10.3     |
| ESRI Feature Service | >= 10.2     | ArcGIS Server >= 10.2, ArcGIS Online |
| ESRI Map Service     | >= 10.2     | ArcGIS Server >= 10.2, ArcGIS Online |
| ESRI Tile Service    | >= 10.2     | ArcGIS Server >= 10.2, ArcGIS Online |














