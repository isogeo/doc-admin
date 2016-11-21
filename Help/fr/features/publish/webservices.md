# Lier des services géographiques

## Associer manuellement des services géographiques

Depuis la version 2.17 (septembre 2016) et la documentation dynamique des services, l'association dynamique permet de générer automatiquement les bons liens pour les applications supportées par Isogeo :

* les liens de visualisation pour l'OpenCatalog
* les liens de services conformes aux scénarios A et B du CNIG

> Consulter [le chapitre dédiée à la documentation automatisée](../inventory/md_services/srv_howto.html) et [celui à l'association dynamique des services](../inventory/md_services/srv_association.html).

### Résultats de la documentation automatisée des services géographiques

#### Dans OpenCatalog

Des liens de visualisation sont générés pour les services :
* WFS
* WMS
* WMTS
* Esri Feature Service
* Esri Map Service
* Esri Tiled Map Service

Exemple :

![OpenCatalog - Liens visualisation](/images/OC_dynamicServices_view_departements2014.png "Liens de visualisation générés automatiquement")

Si le serveur géographique le permet, un lien de téléchargement est également automatiquement généré sur la base du WFS.

![OpenCatalog - Lien téléchargement](/images/OC_dynamicServices_download_wfs_departements2014.png "Lien de téléchargement généré automatiquement à partir des capacités du WFS")

#### Dans le XML ISO 19139 (et donc le CSW)

Les liens des scénarios A et B sont générés dynamiquement. Par exemple, pour un service WFS :

```xml
<MD_DigitalTransferOptions>
	<onLine>
	    <CI_OnlineResource>
		    <linkage>
			    <URL>http://ows.isogeo.fr:6090/geoserver/ows</URL>
			</linkage>
			<protocol>
			    <gco:CharacterString>OGC:WFS</gco:CharacterString>
			</protocol>
			<name>
			    <gco:CharacterString>Isogeo:DEPARTEMENT_2014</gco:CharacterString>
			</name>
		</CI_OnlineResource>
    </onLine>
	<onLine>
	    <CI_OnlineResource>
		    <linkage>
			    <URL>http://ows.isogeo.fr:6090/geoserver/wfs?service=wfs&amp;version=2.0.0&amp;request=GetCapabilities</URL>
			</linkage>
			<protocol>
			    <gco:CharacterString>OGC:WFS-2.0.0-http-get-capabilities</gco:CharacterString>
			</protocol>
			<name>
			    <gco:CharacterString>Isogeo - Web Feature Service de démonstration</gco:CharacterString>
			</name>
			<function>
			    <CI_OnLineFunctionCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_OnLineFunctionCode" codeListValue="information">information</CI_OnLineFunctionCode>
			</function>
		</CI_OnlineResource>
	</onLine>
	<onLine>
	    <CI_OnlineResource>
		    <linkage>
			    <URL>http://ows.isogeo.fr:6090/geoserver/wfs?service=wfs&amp;version=2.0.0&amp;request=GetFeature&amp;typeNames=Isogeo%3aDEPARTEMENT_2014</URL>
			</linkage>
			<protocol>
			    <gco:CharacterString>OGC:WFS-2.0.0-http-get-feature</gco:CharacterString>
			</protocol>
			<name>
			    <gco:CharacterString>Départements - France métropolitaine - 2014</gco:CharacterString>
			</name>
			<function>
			    <CI_OnLineFunctionCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_OnLineFunctionCode" codeListValue="download">download</CI_OnLineFunctionCode>
			</function>
		</CI_OnlineResource>
	</onLine>
</MD_DigitalTransferOptions>
```

____

## Associer manuellement des services géographiques [MÉTHODE DÉPRÉCIÉE]

Les services cartographiques doivent être renseignés en tant que ressources associées d’une fiche. Il suffit ensuite de le renseigner correctement afin que les applications tierces puissent l’utiliser convenablement. Voici la marche à suivre pour chaque type de service.

Si jamais le paramètre *layers* n’est pas renseigné dans l’URL, une erreur s’affiche dans l’interface de l’OpenCatalog :

![Erreur flux OpenCatalog](/images/OC_view_ErrorLayerIsMissing.png "Erreur de lecture de flux dans l'OpenCatalog")

> Astuce : si vous souhaitez que vos services géographiques soient correctement "consommés" par des plateformes externes, comme geOrchestra ou Prodige, elles doivent être formatées d'une certain façon. Voir [l'annexe à ce sujet](../../appendices/webgeoservices_in_csw.html).

____
### Associer un flux WMS

Un WMS pour [Web Map Service](http://fr.wikipedia.org/wiki/Web_Map_Service) est un protocole standardisé OGC ([*Open Geospatial Consortium*](http://fr.wikipedia.org/wiki/Open_Geospatial_Consortium)) qui permet d’obtenir à partir d’une requête une image des données géographiques voulues.

1. Ajouter une ressource associée ;
2. Choisir le type `WMS` ;
3. Renseigner l’URL du service : http://clc.developpement-durable.gouv.fr/geoserver/wms par exemple ;
4. Ajouter le nom de la couche à afficher via le paramètre *layers* : **?layers=clc:CLC06** par exemple.
Le nom des couches disponibles peut être retrouvé grâce à l’action GetCapabilities : **?request=GetCapabilities**
5. Cliquer sur `Valider` ;
6. Dans les actions de la ressource associée, cocher l’option `Visualisation` ;
7. `Valider` puis `Enregistrer` au niveau de l'édition de la fiche.

![Ajout flux WMS](/images/inv_edit_one_resource_WMS.png "Ajouter un flux WMS en ressource associée")

#### Rendu dans l'OpenCatalog

Voir un exemple en ligne où le flux consommé est celui mis à disposition par le MEDDE : [données de 2006 Corine Land COver sur la France métropolitaine](http://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0/m/4643b80d5ef248588709c7367036191a).

![WMS dans OpenCatalog](/images/OC_view_WMS.png "Visualisation d'un flux WMS dans l'OpenCatalog")

____
### Associer un flux WFS

Un WFS pour [Web Feature Service](http://fr.wikipedia.org/wiki/Web_Feature_Service) est un protocole standardisé OGC ([*Open Geospatial Consortium*](http://fr.wikipedia.org/wiki/Open_Geospatial_Consortium)) qui permet d’obtenir à partir d’une requête les entités géographiques voulues. C’est donc ensuite à la librairie cartographique de les représenter.

> Astuce : pour des raisons de sécurité, seuls les WFS acceptant le format JSONP sont visualisables par l’OpenCatalog. Voir [l'annexe à ce sujet](../../appendices/wfs_jsonp.html).

1. Ajouter une ressource associée ;
2. Choisir le type `WFS` ;
3. Renseigner l’URL du service http://noisy.hq.isogeo.fr:6090/geoserver/Isogeo/ows par exemple ;
4. Ajouter le nom de la couche à afficher via le paramètre *typeName* : **?typeName=Isogeo:DEPARTEMENT_2014** par exemple ;
Le nom des couches disponibles peut être retrouvé grâce à l’action GetCapabilities : **?request=GetCapabilities** ;
5. Cliquer sur `Valider` ;
6. Dans les actions de la ressource associée, cocher l’option `Visualisation` ;
7. `Valider` puis `Enregistrer` au niveau de l'édition de la fiche.

![Ajout flux WFS](/images/inv_edit_one_resource_WFS.png "Ajouter un flux WFS en ressource associée")

#### Rendu dans l'OpenCatalog

Voir un exemple en ligne : [départements de France métropolitaine en 2014](http://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0/m/754209f115c040a48d43ffc262b16500).

![WFS dans OpenCatalog](/images/OC_view_WFS.png "Consultation d'un flux WFS dans l'OpenCatalog")

____
### Associer un flux WMTS

Un WMTS pour [Web Map Tile Service](http://fr.wikipedia.org/wiki/Web_Map_Tile_Service) est un protocole standardisé OGC ([*Open Geospatial Consortium*](http://fr.wikipedia.org/wiki/Open_Geospatial_Consortium)) qui permet d’obtenir à partir d’une requête une image préalablement générée par le serveur cartographique.

> Il est nécessaire que le WMTS accepte l’EPSG 900913 pour fonctionner dans l’OpenCatalog

1. Ajouter une ressource associée ;
2. Choisir le type `WMTS` ;
3. Renseigner l’URL du service : http://suite.opengeo.org/geoserver/gwc/service/wmts par exemple ;
4. Ajouter le nom de la couche à afficher via le paramètre layer : **?layer=opengeo:countries** par exemple.
Le nom des couches disponibles peut être retrouvé grâce à l’action GetCapabilities : **?request=GetCapabilities** ;
5. Cliquer sur `Valider` ;
6. Dans les actions de la ressource associé, cocher l’option `Visualisation` ;
7. `Valider` puis `Enregistrer` au niveau de l'édition de la fiche.

![Ajout flux WMTS](/images/inv_edit_one_resource_WMTS.png "Ajouter un flux WMTS en ressource associée")

#### Rendu dans l'OpenCatalog

Voir un exemple en ligne : [couche tuilée des pays du monde attahée à la donnée des stades de la coupe du monde de football 2014](http://open.isogeo.com/s/c502e8f7c9da4c3aacdf3d905672d54c/Q4SvPfiIIslbdwkbWRFJLk7XWo4G0/m/56ed291af72f46dc9835fc9ae29fe938).

![WMTS dans OpenCatalog](/images/OC_view_WMTS.png "Visualisation d'un flux WMTS dans l'OpenCatalog")


___
### Associer un flux Esri Map

Un service Esri Feature permet d’obtenir à partir d’une requête les entités géographiques voulues. Ce type de service est fourni par ArcGIS for Server ou ArcGIS Online, des outils développés par la société Esri.

1. Ajouter une ressource associée ;
2. Choisir le type Service ESRI Map ;
3. Renseigner l’URL du service ; http://noisy.hq.isogeo.fr:6080/arcgis/rest/services/USA_DATA/Airports/MapServer/0 par exemple ;
4. Cliquer sur `Valider`
5. Dans les actions de la ressource associée, cocher l’option `Visualisation` ;
6. `Valider` puis `Enregistrer` au niveau de l'édition de la fiche.

![Ajout flux Esri Map](/images/inv_edit_one_resource_EsriMap.png "Ajouter un flux Esri Map en ressource associée")

#### Rendu dans l'OpenCatalog

Voir un exemple en ligne : [données des EPCI  en 2014 issues d'OpenStreetMap](http://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0/m/78e4a2ce9a7d4b09a80eecd131130166).

![Esri Map dans OpenCatalog](/images/OC_view_EsriMap.png "Consultation d'un flux Esri Map dans l'OpenCatalog")

___
### Associer un flux Esri Feature

Un service Esri Feature permet d’obtenir à partir d’une requête les entités géographiques voulues. Ce type de service est fourni par ArcGIS for Server ou ArcGIS Online, des outils développés par la société Esri.

1. Ajouter une ressource associée
2. Choisir le type `Service ESRI Feature`
3. Renseigner l’URL du service http://services1.arcgis.com/ApmCsFVnpW3bVGYw/arcgis/rest/services/Ports/FeatureServer/0 par exemple
4. Cliquer sur `Valider`
5. Dans les actions de la ressource associée, cocher l’option `Visualisation`
6. `Valider` puis `Enregistrer` au niveau de l'édition de la fiche.

![Ajout flux Esri Feature](/images/inv_edit_one_resource_EsriFeature.png "Ajouter un flux Esri Feature en ressource associée")

#### Rendu dans l'OpenCatalog

Voir un exemple en ligne : [données des stades de la coupe du monde de football 2014](http://open.isogeo.com/s/c502e8f7c9da4c3aacdf3d905672d54c/Q4SvPfiIIslbdwkbWRFJLk7XWo4G0/m/56ed291af72f46dc9835fc9ae29fe938).

![Esri Feature dans OpenCatalog](/images/OC_view_EsriFeatures.png "Consultation d'un flux Esri Feature dans l'OpenCatalog")

___
### Associer un flux Esri Tiled Map

Un service Esri Feature permet d’obtenir à partir d’une requête les entités géographiques voulues. Ce type de service est fourni par ArcGIS for Server ou ArcGIS Online, des outils développés par la société Esri.

1. Ajouter une ressource associée ;
2. Choisir le type `Service ESRI Tile` ;
3. Renseigner l’URL du service : http://tiles.arcgis.com/tiles/ApmCsFVnpW3bVGYw/arcgis/rest/services/Populated_Places/MapServer par exemple ;
4. Cliquer sur `Valider` ;
5. Dans les actions de la ressource associée, cocher l’option `Visualisation` ;
6. `Valider` puis `Enregistrer` au niveau de l'édition de la fiche.

![Ajout flux Esri Tiled Map](/images/inv_edit_one_resource_EsriTiledMap.png "Ajouter un flux Esri Tiled Map en ressource associée")

#### Rendu dans l'OpenCatalog

Voir un exemple en ligne : [données des stades de la coupe du monde de football 2014](http://open.isogeo.com/s/c502e8f7c9da4c3aacdf3d905672d54c/Q4SvPfiIIslbdwkbWRFJLk7XWo4G0/m/56ed291af72f46dc9835fc9ae29fe938).

![Esri Tiled Map dans OpenCatalog](/images/OC_view_EsriTiledMap.png "Consultation d'un flux Esri Tiled Map dans l'OpenCatalog")
