# Métadonnées de services géographiques

Depuis la version 2.14 vous pouvez gérer vos métadonnées de services conformément aux préconisations de la Directive Inspire. Avec cette nouvelle version, nous vous permettons :
    automatiser le remplissage des métadonnées de services à partir de l'URL GetCapabilities (OGC et ESRI). Ce qui permet de diminuer le temps de saisie et de mise à jour des métadonnées et d'en améliorer la qualité
    permettre la mise en relation des métadonnées de données et de services via le concept de couches. Ce qui permet de faciliter la saisie des ressources associées de type "Service" et d'augmenter les possibilités et la puissance de leur exploitation dans vos applications géographiques (Open Catalog, Géoportail, etc.)
        saisie = mise en relation
        exploitation
        l'application cliente à toutes les infos pour générer les URL's dont elle a besoin pour permettre la visualisation et le téléchargement des données
        recherche
                retrouver des données à partir d'un service et inversement
                rechercher des couches dans un service


## Principes


gain de temps


## Services et versions gérés


| Type de service      | Versions    | Exemples d'outils compatibles |
| :------------------- | :---------: | :-- |
| WFS                  | 1.1.0 ; 2.0 | deegree, GeoServer, MapServer, ArcGIS Server >= 10.3 |
| WMS                  | 1.1 ; 1.3.0 | deegree, GeoServer, MapServer, QGIS Server, Rok4, ArcGIS Server >= 10.3 |
| WMTS                 | 1.0.0       | deegree, GeoServer, MapServer, Rok4, ArcGIS Server >= 10.3     |
| Esri Feature Service | >= 10.2     | ArcGIS Server >= 10.2, ArcGIS Online |
| Esri Map Service     | >= 10.2     | ArcGIS Server >= 10.2, ArcGIS Online |
| Esri Tile Service    | >= 10.2     | ArcGIS Server >= 10.2, ArcGIS Online |














