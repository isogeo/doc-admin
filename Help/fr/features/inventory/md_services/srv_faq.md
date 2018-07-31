# Précisions et cas particuliers sur l&apos;utilisation des services

## D&apos;où viennent ces métadonnées de service qu&apos;Isogeo ajoute automatiquement ?

Tout serveur géographique implémentant les standards doit décrire ses capacités techniques (les fameuses *capabilities*) et permettre à son administrateur d&apos;indiquer un point de contact, des mots-clés et une description succincte du serveur.

#### Exemple dans ArcGIS Server

Pour les services Esri, cela se passe au niveau du menu "Description de l&apos;élément" dans le gestionnaire des services ArcGIS Server Manager et directement dans les propriétés du document fichier MXD :

| Type d&apos;informations | Interface de saisie |
| :------------------ | :------------------ |
| Informations générales sur le service | ![ArcGIS Server Manager](/images/inv_edit_srv_GetCapSource_ArcgisServer.png "Interface de documentation du GetCapabilities dans ArcGIS Server") |
| Informations dans le MXD |![ArcGIS Server Manager](/images/inv_edit_srv_GetCapSource_arcmap.png "Interface de documentation du GetCapabilities dans ArcMap") |

#### Exemple dans GeoServer

Des pages dédiées existent dans l&apos;interface de GeoServer (version de référence : 2.10) :

| Service          | URL type |
| :--------------- | :------- |
| Point de contact | **[url_server:port]**/geoserver/web/wicket/bookmarkable/org.geoserver.web.admin.ContactPage |
| WFS              | **[url_server:port]**/geoserver/web/wicket/bookmarkable/org.geoserver.wfs.web.WFSAdminPage |
| WMS              | **[url_server:port]**/geoserver/web/wicket/bookmarkable/org.geoserver.wms.web.WMSAdminPage |
| WMTS             | **[url_server:port]**/geoserver/web/wicket/bookmarkable/org.geoserver.gwc.web.wmts.WMTSAdminPage |

![WMS GeoServer](/images/inv_edit_srv_CLC_WFS_GetCapSource_geoserver.png "Interface de documentation du GetCapabilities du WMS dans GeoServer")

______________

## Pourquoi mon service n&apos;est pas scanné automatiquement ?

![Services erreur](/images/inv_edit_srv_unreachable.png "Une erreur est survenue durant le scan du service. Impossible de pré-remplir les métadonnées.")

Dans ce cas-là, plusieurs raisons sont possibles :

### Noms de couches en double {#srv_error_duplicatedLayers}

Les noms des couches d&apos;un service servant d&apos;identifiant unique, l&apos;adminstrateur d&apos;un service géographique doit s&apos;assurer qu&apos;ils soient uniques de façon à éviter les ambigüités. Dans l&apos;idéal, ils évitent les écueils classiques des caractères spéciaux, 

![Services error: duplicated layers](/images/inv_edit_srv_geoserver_duplicatedLayers.png "Doublons dans les noms des couches d&apos;un service")


### Services non accessibles par les domaines \*.isogeo.com

Un service (ou plus précisément ses capacités) peut être inaccessible à la plateforme pour plusieurs raisons (cumulables) :
* il n&apos;est accessible qu&apos;en interne (intranet)
* il est protégé par une authentification (login/mot de passe, etc.).

Isogeo étant une solution *SaaS*, il n&apos;est alors pas possible de scanner le service automatiquement à partir de son URL. Deux solutions sont à envisager.

#### 1. Configurer votre infrastructure réseau pour autoriser les domaines Isogeo

Pour permettre le recensement et la consultation automatiques des services géographiques internes, l&apos;administrateur réseau peut autoriser les requêtes des domaines :
* app.isogeo.com
* v1.api.isogeo.com
* open.isogeo.com

> Astuce : consulter [la section dédiée à la configuration d&apos;OpenCatalog pour visualiser les services internes](../../publish/share_opencatalog.html#oc_proxy)

#### 2. Importer les capacités du service sous forme de fichier

Les capacités des services géographiques ne sont ni plus ni moins des fichiers normalisés (XML pour les service OGC, JSON pour ceux d&apos;Esri). Il est donc possible de les importer depuis l&apos;interface pour renseigner les métadonnées automatiquement.

> Astuce : [consulter la section dédiée à l&apos;import manuel des capacités](srv_howto.html#srv_auto_private).


#### 3. Recenser le service et ses couches manuellement

Dans tous les cas, il est toujours possible de documenter la fiche de service manuellement.

> Astuce : consulter [la section dédiée à la documentation manuelle](srv_howto.html#srv_manual_doc).


### Services injoignables

Il peut tout simplement arriver que le service soit injoignable au moment de la création de la fiche. Le scan des services étant tributaire de l&apos;état des serveurs, il s&apos;agit alors d&apos;attendre un moment de répit du serveur et de cliquer sur `Actualiser`.

![Services update](/images/inv_edit_srv_update.png "Cliquer sur Actualiser pour mettre à jour les informations des fiches de type service.")


### Prérequis non remplis

Le service ne correspond pas aux prérequis (format, version...) : écrire au support en détaillant la configuration du serveur géographique. Nous pourrions décider de le prendre en charge dans une prochaine version. En attendant, vous pouvez [recenser chaque couche manuellement](srv_howto.html#srv_manual_doc).

_____________

## Que se passe-t-il si une des couches déjà associées est supprimée de mon serveur géographique ?

Isogeo ne vérifie pas régulièrement la validité ni la disponibilité des services. L&apos;association reste donc en place jusqu&apos;à ce qu&apos;une actualisation soit déclenchée manuellement.

_____________

## Que se passe t&apos;il si je supprime la fiche de métadonnées de service ?

Toutes les associations entre les couches du service et les données sont automatiquement supprimées.
