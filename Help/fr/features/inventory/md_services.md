# Métadonnées de services géographiques

INSPIRE



## Principes

Les services gérés par la plateforme Isogeo sont :
* WFS 1.1.0 et 2.0
* WMS 1.1 et 1.3
* WMTS 1.0.0
* ESRI Feature Service >= 10.2.x
* ESRI Map Service >= 10.2.x
* ESRI Tile Service >= 10.2.x

gain de temps

## Fonctionnement

### Prérequis

* [l'option "Autoriser la création manuelle de fiches de métadonnées"](/fr/features/admin/group.html#autoriser-la-création-de-fiches-manuelles) doit être activée ;
* disposer des URLs GetCapabilities de services compatibles.

### Marche à suivre

Le process complet se fait en deux étapes :
1. Recenser et documenter le service ;
2. Associer les couches servies et les jeux de données inventoriés dans Isogeo.

Pour l'exemple, le service WMS des données Corine Land Cover est utilisé : http://clc.developpement-durable.gouv.fr/geoserver/wms?request=GetCapabilities.

#### Recenser un service

1. Dans l'inventaire, cliquer le bouton `+ Créer` ;
2. Dans le formulaire, choisir `d'une fiche relative à un service`;
3. Coller l'URL GetCapabilities du service à scanner : si l'URL est correctement formatée et le service joignable, son format est automatiquement proposé ;
4. En cliquant sur `Créer`, le service est donc 'scanné' et les métadonnées suivantes sont récupérées :
    * le titre et le résumé ;
    * le contact ;
    * les mots-clés ;
    * le format donc et sa plus haute version disponible ;
    * les opérations possibles ;
    * et bien sûr les couches servies.

5. sqkdfdkg

#### Associer les couches

1. zfsegf

_____

### Précisions et cas particuliers

#### Que se passe t'il si une des couches déjà associées est supprimée de mon serveur géographique ?

ohlalalal

#### Que se passe t'il si une des couches déjà associées est supprimé de mon serveur géographique ?

ohlalalal

#### Que se passe t'il si une des couches déjà associées est supprimé de mon serveur géographique ?

ohlalalal

#### D'où viennent ces métadonnées de service qu'Isogeo ajoute automatiquement ?

Tout serveur géographique implémentant les standards doit décrire ses capacités techniques (les fameuses *capabilities*) et permettre à son administrateur d'indiquer un point de contact, des mots-clés et une description succincte du serveur.

_____

## Standards et références

Pour savoir dans le détail sur quelles bases sont basées l'implémentation des métadonnées de services dans Isogeo, les standards et guides de référence sont listés ci-dessous :

| Standard | Référence et lien |
| -------- | ----------------- |
| OpenGIS® Web Map Server Implementation Specification - version 1.3.0 | [OGC 06-042](http://portal.opengeospatial.org/files/?artifact_id=14416) |
| OpenGIS ® Web Map Tile Service Implementation Standard - version 1.0.0 | [OGC 07-057r7](http://portal.opengeospatial.org/files/?artifact_id=35326) |
| OpenGIS Web Feature Service 2.0 Interface Standard - version 2.0.2 | [OGC 09-025r2](http://docs.opengeospatial.org/is/09-025r2/09-025r2.html) |
| Esri Map Service | [ArcGIS REST API - Map Service](http://resources.arcgis.com/en/help/arcgis-rest-api/#/Map_Service/02r3000000w2000000/) |
| Esri Feature Service | [ArcGIS REST API - Feature Service](http://resources.arcgis.com/en/help/arcgis-rest-api/#/Feature_Service/02r3000000z2000000/) |
| Esri Tile Service | [ArcGIS REST API - Tiled Map Service](http://resources.arcgis.com/en/help/arcgis-rest-api/#/WMTS_Map_Service/02r300000100000000/) |
| INSPIRE Implementing Rules for Metadata | [MD_IR_and_ISO_20131029](http://inspire.jrc.ec.europa.eu/documents/Metadata/MD_IR_and_ISO_20131029.pdf) |
| Guide sur le service de recherche | [CNIG Service Recherche](http://cnig.gouv.fr/wp-content/uploads/2015/Guide-recherche-INSPIRE1.htm) |
