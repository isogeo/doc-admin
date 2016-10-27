# Recenser les services web géographiques

La première étape de la démarche de documentation des services consiste à les recenser.

## Fonctionnement

Les capacités des services géographiques  sont automatiquement analysés pour documenter la fiche de métadonnées. Il s'agit donc seulement de soumettre l'URL *GetCapabilities* à Isogeo.

### Prérequis

* [l'option "Autoriser la création manuelle de fiches de métadonnées"](/fr/features/admin/group.html#autoriser-la-création-de-fiches-manuelles) doit être activée ;
* disposer des URLs *GetCapabilities* (ou équivalents ESRI) de services compatibles et accessibles publiquement.

### Marche à suivre illustrée pour recenser un service

Pour l'exemple, les services [WMS](http://clc.developpement-durable.gouv.fr/geoserver/wms?request=GetCapabilities&service=WMS) et [WFS](http://clc.developpement-durable.gouv.fr/geoserver/wfs?request=GetCapabilities&service=WFS) des données Corine Land Cover sont utilisés.

| Aperçu du GetCapabilities du WMS de CLC | Aperçu du GetCapabilities du WFS de CLC |
| :-------------------------------------: | :-------------------------------------: |
| ![WMS GetCapabilities](/images/inv_edit_srv_CLC_WMS_GetCap.png "Capture d'écran du GetCapabilities du service WMS des données Corine Land Covver (MEDDE)") | ![WFS GetCapabilities](/images/inv_edit_srv_CLC_WFS_GetCap.png "Capture d'écran du GetCapabilities du service WFS des données Corine Land Covver (MEDDE)") |

1. Dans l'inventaire, cliquer le bouton `+ Créer` ;
2. Dans le formulaire, choisir `d'une fiche relative à un service`;
3. Coller l'URL GetCapabilities du service à scanner : si l'URL est correctement formatée et le service joignable, son format est automatiquement proposé ;

![WMS creation](/images/inv_edit_srv_CLC_WMS_creation.png "Création de la fiche service WMS")

4. En cliquant sur `Créer`, le service est donc "scanné" :

| Métadonnées récupérées |
| :--------------------: |
| Titre, Résumé, Mots-clés, Format |
| ![WMS identification](/images/inv_edit_srv_CLC_WMS_identification.png "Open Geospatial Consortium") |
| Contact (si adresse email présente) |
| ![WMS contact](/images/inv_edit_srv_CLC_WMS_contacts.png "Open Geospatial Consortium") |
| Opérations disponibles |
| ![WMS operations](/images/inv_edit_srv_CLC_WMS_operations.png "Open Geospatial Consortium") |
| Couches disponibles |
| ![WMS layers](/images/inv_edit_srv_CLC_WMS_layers.png "Open Geospatial Consortium") |

* le titre et le résumé ;
* le contact ;
* les mots-clés ;
* le format et sa plus haute version disponible (onglet `Avancé`) ;
* les opérations possibles (onglet `Avancé`) ;
* les couches servies (onglet `Ressources`).







### Syntaxe des URL de services

| Type de service      | URL à soumettre | Exemples |
| :------------------- | :-------------- | -------- |
| WFS                  | [url_server:port]?REQUEST=GetCapabilities&SERVICE=WFS | 2:2 |
| WMS                  | [url_server:port]?REQUEST=GetCapabilities&SERVICE=WMS | 2:3 |
| WMTS                 | [url_server:port]?REQUEST=GetCapabilities&SERVICE=WMTS | 2:4 |
| ESRI Map Service     | [url_server:port]/arcgis/rest/services/[folder]/MapServer | 2:5 |
| ESRI Feature Service | [url_server:port]/arcgis/rest/services/[folder]/FeatureServer | 2:6 |
| ESRI Tile Service    | https://tiles.arcgis.com/tiles/[token]/arcgis/rest/services/[folder]/MapServer | 2:7 |
