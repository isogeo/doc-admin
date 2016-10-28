# Recenser les services web géographiques

La première étape de la démarche de documentation des services consiste à les recenser.

## Fonctionnement de la pré-documentation automatique des services

Les capacités des services géographiques sont automatiquement analysées pour documenter la fiche de métadonnées. Il s'agit donc seulement de soumettre l'URL *GetCapabilities* à Isogeo.

### Prérequis

* [l'option "Autoriser la création manuelle de fiches de métadonnées"](/fr/features/admin/group.html#autoriser-la-création-de-fiches-manuelles) doit être activée ;
* disposer des URLs *GetCapabilities* (ou équivalents ESRI) de services compatibles, accessibles publiquement et disponibles.

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
| Format, version et opérations disponibles (onglet `Avancé`) |
| ![WMS operations](/images/inv_edit_srv_CLC_WMS_operations.png "Open Geospatial Consortium") |
| Couches disponibles (onglet `Ressources`) |
| ![WMS layers](/images/inv_edit_srv_CLC_WMS_layers.png "Open Geospatial Consortium") |

Le service est désormais documenté. Il est désormais temps d'[associer les couches listées avec les jeux de données inventoriés](srv_association.html).

### Syntaxe des URL de services

| Type de service      | URL à soumettre                              |
| :------------------- | :------------------------------------------- |
| WFS                  | ***[url_server:port]***?REQUEST=GetCapabilities&SERVICE=WFS&VERSION=***[1.1.0 / 2.0.0]*** |
| WMS                  | ***[url_server:port]***?REQUEST=GetCapabilities&SERVICE=WMS&VERSION=[1.1.1 / 1.3.0] |
| WMTS                 | ***[url_server:port]***?REQUEST=GetCapabilities&SERVICE=WMTS&VERSION=1.0.0 |
| ESRI Map Service     | ***[url_server:port]***/arcgis/rest/services/***[folder]***/MapServer |
| ESRI Feature Service | ***[url_server:port]***/arcgis/rest/services/***[folder]***/FeatureServer |
| ESRI Tile Service    | ***[url_server:port]***/tiles/***[token]***/arcgis/rest/services/***[folder]***/MapServer |

## Recensement manuel

Si vous souhaitez documenter un service ne correspondant pas aux prérequis, il est possible de renseigner la fiche manuellement. Après avoir crée la fiche, il suffit de cliquer sur `+ Ajouter une couche` et d'entrer son identifiant (obligatoire) et un titre (facultatif).

![Service manuel](/images/inv_edit_srv_manual.png "Ajouter chaque couche manuellement")
