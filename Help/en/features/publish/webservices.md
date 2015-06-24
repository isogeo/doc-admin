# Associating web services

The web services must be entered as resources associated with a record. Third party applications can use the corresponding web service once it has been correctly entered. Proceed as follows for each type of service.

If the *layers* parameter is not specified in the URL, an error is displayed in the OpenCatalog interface:

![Erreur flux OpenCatalog](/fr/images/OC_view_ErrorLayerIsMissing.png "Erreur de lecture de flux dans l'OpenCatalog")

> Tip: your web services must be specifically formatted in order to be "used" properly by external platforms such as geOrchestra or Prodige. See [the appendix on this subject](/fr/appendices/webgeoservices_in_csw.html).

____
## Associating a WMS flow

The WMS [Web Map Service](http://fr.wikipedia.org/wiki/Web_Map_Service) protocol is an OGC ([*Open Geospatial Consortium*](http://fr.wikipedia.org/wiki/Open_Geospatial_Consortium)) standard that can be used to obtain an image of the geographic data required via a request.

1. Add an associated resource;
2. Choose type `WMS`;
3. Enter the URL corresponding to the service, for example: http://clc.developpement-durable.gouv.fr/geoserver/wms;
4. Add the name of the layer to display via the *layers* parameter: **?layers=clc:CLC06** for example.
You can obtain the names of the layers available using the GetCapabilities action: **?request=GetCapabilities**
5. Click on `Validate`;
6. In the actions of the associated resource, select the `Display` option;
7. Click on `Validate` then `Save` in the record.

![Ajout flux WMS](/fr/images/inv_edit_one_resource_WMS.png "Ajouter un flux WMS en ressource associée")

### Rendering in OpenCatalog

See an online demonstration where the flow used is that provided by the MEDDE (French Ministry of Ecology, Energy and Sustainable Development): [data from 2006 Corine Land COver on mainland France](http://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0/m/4643b80d5ef248588709c7367036191a).

![WMS dans OpenCatalog](/fr/images/OC_view_WMS.png "Visualisation d'un flux WMS dans l'OpenCatalog")

____
## Associating a WFS flow

The WFS [Web Feature Service](http://fr.wikipedia.org/wiki/Web_Feature_Service) protocol is an OGC ([*Open Geospatial Consortium*](http://fr.wikipedia.org/wiki/Open_Geospatial_Consortium)) standard that can be used to obtain the geographic entities required via a request. It is then up to the mapping library to represent these entities.

> Tip: for security reasons, OpenCatalog can only display Web Feature Services that accept the JSONP format. See [the appendix on this subject](/fr/appendices/wfs_jsonp.html).

1. Add an associated resource;
2. Choose type `WFS`;
3. Enter the URL corresponding to the service, for example: http://noisy.hq.isogeo.fr:6090/geoserver/Isogeo/ows;
4. Add the name of the layer to display via the *layers* parameter: **?layers=Isogeo:DEPARTEMENT_2014** for example;
You can obtain the names of the layers available using the GetCapabilities action: **?request=GetCapabilities**;
5. Click on `Validate`;
6. In the actions of the associated resource, select the `Display` option;
7. Click on `Validate` then `Save` in the record.

![Ajout flux WFS](/fr/images/inv_edit_one_resource_WFS.png "Ajouter un flux WFS en ressource associée")

### Rendering in OpenCatalog

Here is an online example: [mainland France departments in 2014](http://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0/m/754209f115c040a48d43ffc262b16500).

![WFS dans OpenCatalog](/fr/images/OC_view_WFS.png "Consultation d'un flux WFS dans l'OpenCatalog")

____
## Associating a WMTS flow

The WMTS [Web Map Tile Service](http://fr.wikipedia.org/wiki/Web_Map_Tile_Service) protocol is an OGC ([*Open Geospatial Consortium*](http://fr.wikipedia.org/wiki/Open_Geospatial_Consortium)) standard that can be used to obtain an image generated previously by the mapping server via a request.

> The WMTS must accept EPSG 900913 in order to work in OpenCatalog.

1. Add an associated resource;
2. Choose type `WMTS`;
3. Enter the URL corresponding to the service, for example: http://suite.opengeo.org/geoserver/gwc/service/wmts;
4. Add the name of the layer to display via the *layers* parameter: **?layers=opengeo:countries** for example.
You can obtain the names of the layers available using the GetCapabilities action: **?request=GetCapabilities**;
5. Click on `Validate`;
6. In the actions of the associated resource, select the `Display` option;
7. Click on `Validate` then `Save` in the record.

![Ajout flux WFS](/fr/images/inv_edit_one_resource_WFS.png "Ajouter un flux WFS en ressource associée")

### Rendering in OpenCatalog

Here is an online example: [tiled layer of the countries attached to data corresponding to the stadiums of the 2014 FIFA World Cup](http://open.isogeo.com/s/c502e8f7c9da4c3aacdf3d905672d54c/Q4SvPfiIIslbdwkbWRFJLk7XWo4G0/m/56ed291af72f46dc9835fc9ae29fe938).

![WMTS dans OpenCatalog](/fr/images/OC_view_WMTS.png "Visualisation d'un flux WMTS dans l'OpenCatalog")


___
## Associating an Esri Map flow

An Esri Map service can be used to obtain the geographic entities required via a request. This type of service is provided by ArcGIS for Server or ArcGIS Online, i.e. tools developed by the company Esri.

1. Add an associated resource;
2. Choose type "Service ESRI Map";
3. Enter the URL corresponding to the service, for example: http://noisy.hq.isogeo.fr:6080/arcgis/rest/services/USA_DATA/Airports/MapServer/0;
4. Click on `Validate`;
5. In the actions of the associated resource, select the `Display` option;
6. Click on `Validate` then `Save` in the record.

![Ajout flux Esri Map](/fr/images/inv_edit_one_resource_EsriMap.png "Ajouter un flux Esri Map en ressource associée")

### Rendering in OpenCatalog

Here is an online example: [EPCI (Public Establishment for Intermunicipal Cooperation) data in 2014 taken from OpenStreetMap](http://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0/m/78e4a2ce9a7d4b09a80eecd131130166).

![Esri Map dans OpenCatalog](/fr/images/OC_view_EsriMap.png "Consultation d'un flux Esri Map dans l'OpenCatalog")

___
## Associating an Esri Feature flow

An Esri Feature service can be used to obtain the geographic entities required via a request. This type of service is provided by ArcGIS for Server or ArcGIS Online, i.e. tools developed by the company Esri.

1. Add an associated resource;
2. Choose type "Service ESRI Feature";
3. Enter the URL corresponding to the service, for example: http://services1.arcgis.com/ApmCsFVnpW3bVGYw/arcgis/rest/services/Ports/FeatureServer/0;
4. Click on `Validate`;
5. In the actions of the associated resource, select the `Display` option;
6. Click on `Validate` then `Save` in the record.

![Ajout flux Esri Feature](/fr/images/inv_edit_one_resource_EsriFeature.png "Ajouter un flux Esri Feature en ressource associée")

### Rendering in OpenCatalog

Here is an online example: [data corresponding to the stadiums of the 2014 FIFA world cup](http://open.isogeo.com/s/c502e8f7c9da4c3aacdf3d905672d54c/Q4SvPfiIIslbdwkbWRFJLk7XWo4G0/m/56ed291af72f46dc9835fc9ae29fe938).

![Esri Feature dans OpenCatalog](/fr/images/OC_view_EsriFeatures.png "Consultation d'un flux Esri Feature dans l'OpenCatalog")

___
## Associating an Esri Tiled Map flow

An Esri Tiled Map service can be used to obtain the geographic entities required via a request. This type of service is provided by ArcGIS for Server or ArcGIS Online, i.e. tools developed by the company Esri.

1. Add an associated resource;
2. Choose type "Service ESRI Tile";
3. Enter the URL corresponding to the service, for example: http://tiles.arcgis.com/tiles/ApmCsFVnpW3bVGYw/arcgis/rest/services/Populated_Places/MapServer;
4. Click on `Validate`;
5. In the actions of the associated resource, select the `Display` option;
6. Click on `Validate` then `Save` in the record.

![Ajout flux Esri Tiled Map](/fr/images/inv_edit_one_resource_EsriTiledMap.png "Ajouter un flux Esri Tiled Map en ressource associée")

### Rendering in OpenCatalog

Here is an online example: [data corresponding to the stadiums of the 2014 FIFA world cup](http://open.isogeo.com/s/c502e8f7c9da4c3aacdf3d905672d54c/Q4SvPfiIIslbdwkbWRFJLk7XWo4G0/m/56ed291af72f46dc9835fc9ae29fe938).

![Esri Tiled Map dans OpenCatalog](/fr/images/OC_view_EsriTiledMap.png "Consultation d'un flux Esri Tiled Map dans l'OpenCatalog")
