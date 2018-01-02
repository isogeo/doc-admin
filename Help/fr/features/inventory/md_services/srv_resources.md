# Ressources documentaires sur les services géographiques

## Syntaxe des URL de services {#srv_url_syntax}

| Type de service      | URL à soumettre                              										   |
| :------------------- | :------------------------------------------------------------------------------------ |
| WFS                  | **[url_server:port]**?REQUEST=GetCapabilities&SERVICE=WFS&VERSION=**[1.1.0 / 2.0.0]** |
| WMS                  | **[url_server:port]**?REQUEST=GetCapabilities&SERVICE=WMS&VERSION=**[1.1.1 / 1.3.0]** |
| WMTS                 | **[url_server:port]**?REQUEST=GetCapabilities&SERVICE=WMTS&VERSION=1.0.0 			   |
| ESRI Map Service     | **[url_server:port]**/arcgis/rest/services/**[folder]**/MapServer 					   |
| ESRI Feature Service | **[url_server:port]**/arcgis/rest/services/**[folder]**/FeatureServer 				   |


____

## 30 minutes pour comprendre le fonctionnement

Après un cycle de versions dédiées, nous avons organisé un webinaire pour faire un point sur les nouvelles fonctionnalités liées au catalogage et à la valorisation de vos services.

<iframe width="640" height="360" src="https://www.youtube.com/embed/QvVlitVdKUU" frameborder="0" allowfullscreen></iframe>

____

## Les services géographiques standardisés OGC

* le [fonctionnement d'une URL WMS sur Wikipédia](https://fr.wikipedia.org/wiki/Web_Map_Service) ;
* le [paramètre GetCapabilities sur le wiki de GeoRezo](http://georezo.net/wiki/main/standards/wms#les_operations_du_wms).

____

## Standards et références

Pour savoir dans le détail sur quelles bases sont basées l'implémentation des métadonnées de services dans Isogeo, les standards et guides de référence sont listés ci-dessous :

| Standard  | Référence et lien 								|
| :-------- | :------------------------------------------------ |
| OpenGIS® Web Map Server Implementation Specification - version 1.3.0 | [OGC 06-042](http://portal.opengeospatial.org/files/?artifact_id=14416) |
| OpenGIS ® Web Map Tile Service Implementation Standard - version 1.0.0 | [OGC 07-057r7](http://portal.opengeospatial.org/files/?artifact_id=35326) |
| OpenGIS Web Feature Service 2.0 Interface Standard - version 2.0.2 | [OGC 09-025r2](http://docs.opengeospatial.org/is/09-025r2/09-025r2.html) |
| Esri Map Service | [ArcGIS REST API - Map Service](http://resources.arcgis.com/en/help/arcgis-rest-api/#/Map_Service/02r3000000w2000000/) |
| Esri Feature Service | [ArcGIS REST API - Feature Service](http://resources.arcgis.com/en/help/arcgis-rest-api/#/Feature_Service/02r3000000z2000000/) |
| Esri Tile Service | [ArcGIS REST API - Tiled Map Service](http://resources.arcgis.com/en/help/arcgis-rest-api/#/WMTS_Map_Service/02r300000100000000/) |
| INSPIRE Implementing Rules for Metadata | [MD_IR_and_ISO_20131029](http://inspire.jrc.ec.europa.eu/documents/Metadata/MD_IR_and_ISO_20131029.pdf) |
| Guide sur le service de recherche | [CNIG Service Recherche](http://cnig.gouv.fr/wp-content/uploads/2015/Guide-recherche-INSPIRE1.htm) |
