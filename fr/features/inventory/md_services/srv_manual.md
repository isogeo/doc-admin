# Associer manuellement des services géographiques [MÉTHODE DÉPRÉCIÉE]

Les services cartographiques doivent être renseignés en tant que ressources associées d’une fiche. Il suffit ensuite de le renseigner correctement afin que les applications tierces puissent l’utiliser convenablement. Voici la marche à suivre pour chaque type de service.

Si jamais le paramètre *layers* n’est pas renseigné dans l’URL, une erreur s’affiche dans l’interface de l’OpenCatalog :

![Erreur flux OpenCatalog](/assets/OC_view_ErrorLayerIsMissing.png "Erreur de lecture de flux dans l&apos;OpenCatalog")

____

## Associer un flux WMS {#srv_manual_wms}

Un WMS pour [Web Map Service](http://fr.wikipedia.org/wiki/Web_Map_Service) est un protocole standardisé OGC ([*Open Geospatial Consortium*](http://fr.wikipedia.org/wiki/Open_Geospatial_Consortium)) qui permet d’obtenir à partir d’une requête une image des données géographiques voulues.

1. Ajouter une ressource associée ;
2. Choisir le type `WMS` ;
3. Renseigner l’URL du service : <http://clc.developpement-durable.gouv.fr/geoserver/wms> par exemple ;
4. Ajouter le nom de la couche à afficher via le paramètre _layers_ : **?layers=clc:CLC06** par exemple. Le nom des couches disponibles peut être retrouvé grâce à l’action GetCapabilities : **?request=GetCapabilities**
5. Cliquer sur `Valider` ;
6. Dans les actions de la ressource associée, cocher l’option `Visualisation` ;
7. `Valider` puis `Enregistrer` au niveau de l&apos;édition de la fiche.

![Ajout flux WMS](/assets/inv_edit_one_resource_WMS.png "Ajouter un flux WMS en ressource associée")

### Rendu dans l&apos;OpenCatalog

Voir un exemple en ligne où le flux consommé est celui mis à disposition par le MEDDE : [données de 2006 Corine Land COver sur la France métropolitaine](http://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0/m/4643b80d5ef248588709c7367036191a).

![WMS dans OpenCatalog](/assets/OC_view_WMS.png "Visualisation d&apos;un flux WMS dans l&apos;OpenCatalog")

____

## Associer un flux WFS {#srv_manual_wfs}

Un WFS pour [Web Feature Service](http://fr.wikipedia.org/wiki/Web_Feature_Service) est un protocole standardisé OGC ([*Open Geospatial Consortium*](http://fr.wikipedia.org/wiki/Open_Geospatial_Consortium)) qui permet d’obtenir à partir d’une requête les entités géographiques voulues. C’est donc ensuite à la librairie cartographique de les représenter.

> Astuce : pour des raisons de sécurité, seuls les WFS acceptant le format JSONP sont visualisables par l’OpenCatalog. Voir [l&apos;annexe à ce sujet](../../appendices/wfs_jsonp.html).

1. Ajouter une ressource associée ;
2. Choisir le type `WFS` ;
3. Renseigner l’URL du service <http://noisy.hq.isogeo.fr:6090/geoserver/Isogeo/ows> par exemple ;
4. Ajouter le nom de la couche à afficher via le paramètre *typeName* : **?typeName=Isogeo:DEPARTEMENT_2014** par exemple ; Le nom des couches disponibles peut être retrouvé grâce à l’action GetCapabilities : **?request=GetCapabilities** ;
5. Cliquer sur `Valider` ;
6. Dans les actions de la ressource associée, cocher l’option `Visualisation` ;
7. `Valider` puis `Enregistrer` au niveau de l&apos;édition de la fiche.

![Ajout flux WFS](/assets/inv_edit_one_resource_WFS.png "Ajouter un flux WFS en ressource associée")

### Rendu dans l&apos;OpenCatalog

Voir un exemple en ligne : [départements de France métropolitaine en 2014](http://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0/m/754209f115c040a48d43ffc262b16500).

![WFS dans OpenCatalog](/assets/OC_view_WFS.png "Consultation d&apos;un flux WFS dans l&apos;OpenCatalog")

____

## Associer un flux Esri Map {#srv_manual_ems}

Un service Esri Feature permet d’obtenir à partir d’une requête les entités géographiques voulues. Ce type de service est fourni par ArcGIS for Server ou ArcGIS Online, des outils développés par la société Esri.

1. Ajouter une ressource associée ;
2. Choisir le type Service ESRI Map ;
3. Renseigner l’URL du service ; <http://noisy.hq.isogeo.fr:6080/arcgis/rest/services/USA_DATA/Airports/MapServer/0> par exemple ;
4. Cliquer sur `Valider`
5. Dans les actions de la ressource associée, cocher l’option `Visualisation` ;
6. `Valider` puis `Enregistrer` au niveau de l&apos;édition de la fiche.

![Ajout flux Esri Map](/assets/inv_edit_one_resource_EsriMap.png "Ajouter un flux Esri Map en ressource associée")

### Rendu dans l&apos;OpenCatalog

Voir un exemple en ligne : [données des EPCI  en 2014 issues d&apos;OpenStreetMap](http://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0/m/78e4a2ce9a7d4b09a80eecd131130166).

![Esri Map dans OpenCatalog](/assets/OC_view_EsriMap.png "Consultation d&apos;un flux Esri Map dans l&apos;OpenCatalog")

___

## Associer un flux Esri Feature {#srv_manual_efs}

Un service Esri Feature permet d’obtenir à partir d’une requête les entités géographiques voulues. Ce type de service est fourni par ArcGIS for Server ou ArcGIS Online, des outils développés par la société Esri.

1. Ajouter une ressource associée
2. Choisir le type `Service ESRI Feature`
3. Renseigner l’URL du service <http://services1.arcgis.com/ApmCsFVnpW3bVGYw/arcgis/rest/services/Ports/FeatureServer/0> par exemple
4. Cliquer sur `Valider`
5. Dans les actions de la ressource associée, cocher l’option `Visualisation`
6. `Valider` puis `Enregistrer` au niveau de l&apos;édition de la fiche.

![Ajout flux Esri Feature](/assets/inv_edit_one_resource_EsriFeature.png "Ajouter un flux Esri Feature en ressource associée")

### Rendu dans l&apos;OpenCatalog

Voir un exemple en ligne : [données des stades de la coupe du monde de football 2014](http://open.isogeo.com/s/c502e8f7c9da4c3aacdf3d905672d54c/Q4SvPfiIIslbdwkbWRFJLk7XWo4G0/m/56ed291af72f46dc9835fc9ae29fe938).

![Esri Feature dans OpenCatalog](/assets/OC_view_EsriFeatures.png "Consultation d&apos;un flux Esri Feature dans l&apos;OpenCatalog")
