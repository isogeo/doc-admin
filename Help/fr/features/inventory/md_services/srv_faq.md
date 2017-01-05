# Précisions et cas particuliers sur l'utilisation des services

## D'où viennent ces métadonnées de service qu'Isogeo ajoute automatiquement ?

Tout serveur géographique implémentant les standards doit décrire ses capacités techniques (les fameuses *capabilities*) et permettre à son administrateur d'indiquer un point de contact, des mots-clés et une description succincte du serveur.

#### Exemple dans ArcGIS Server

Pour les services Esri, cela se passe au niveau du menu "Description de l'élément" dans le gestionnaire des services ArcGIS Server Manager et directement dans les propriétés du documentfichier MXD :

| Type d'informations | Interface de saisie |
| :------------------ | :------------------ |
| Informations générales sur le service | ![ArcGIS Server Manager](/images/inv_edit_srv_GetCapSource_ArcgisServer.png "Interface de documentation du GetCapabilities dans ArcGIS Server") |
| Informations dans le MXD |![ArcGIS Server Manager](/images/inv_edit_srv_GetCapSource_arcmap.png "Interface de documentation du GetCapabilities dans ArcMap") |

#### Exemple dans GeoServer

Des pages dédiées existent dans l'interface de GeoServer (version de référence : 2.10) :

| Service          | URL type |
| :--------------- | :------- |
| Point de contact | ***[url_server:port]***/geoserver/web/wicket/bookmarkable/org.geoserver.web.admin.ContactPage |
| WFS              | ***[url_server:port]***/geoserver/web/wicket/bookmarkable/org.geoserver.wfs.web.WFSAdminPage |
| WMS              | ***[url_server:port]***/geoserver/web/wicket/bookmarkable/org.geoserver.wms.web.WMSAdminPage |
| WMTS             | ***[url_server:port]***/geoserver/web/wicket/bookmarkable/org.geoserver.gwc.web.wmts.WMTSAdminPage |

![WMS GeoServer](/images/inv_edit_srv_CLC_WFS_GetCapSource_geoserver.png "Interface de documentation du GetCapabilities du WMS dans GeoServer")

______________

## Pourquoi mon service n'est pas scanné automatiquement ?

![Services erreur](/images/inv_edit_srv_unreachable.png "Une erreur est survenue durant le scan du service. Impossible de pré-remplir les métadonnées.")

Dans ce cas-là, plusieurs raisons sont possibles :
* le service ne correspond pas aux prérequis : écrire au support en détaillant la configuration du serveur géographique. Nous pourrions décider de le prendre en charge dans une prochaine version. En attendant, vous pouvez recenser chaque couche manuellement.

* le service n'est pas accessible publiquement : Isogeo étant une solution *SaaS*, il nous sera difficile de scanner vos services s'ils sont uniquement internes. La solution peut être d'ouvrir l'accès à votre serveur au moins temporairement vos services, le temps du recensement. Vous pouvez également recenser chaque couche manuellement.

* le service est indisponible au moment de la création de la fiche : le scan des services est tributaire de l'état des serveurs. Il s'agit alors d'attendre un moment de répit serveur et de cliquer sur `Actualiser`.

![Services update](/images/inv_edit_srv_update.png "Cliquer sur Actualiser pour mettre à jour les informations des fiches de type service.")

_____________

## Que se passe-t-il si une des couches déjà associées est supprimée de mon serveur géographique ?

Isogeo ne vérifie pas régulièrement la validité ni la disponibilité des services. L'association reste donc en place jusqu'à ce qu'une actualisation soit déclenchée manuellement.

_____________

## Que se passe t'il si je supprime la fiche de métadonnées de service ?

Toutes les associations entre les couches du service et les données sont automatiquement supprimées.
