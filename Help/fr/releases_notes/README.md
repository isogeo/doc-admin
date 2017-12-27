# Notes de versions


<!-- timeline -->

## 2.19 {#v219}

<br> Publiée le 17 novembre 2017 :

* mise en place du système "Voir aussi" (similarité entre les métadonnées) ;
* gestion des licences associées au bouton téléchargement ;
* possibilité de personnaliser l'intitulé "Propriétaire" de la métadonnée ;
* possibilité de personnaliser le nuage de mots-clés de la page d'accueil :
* nombre de mots,
* mots à exclure,
* renouvellement du cache
* ajout de la visualisation des emprises personnalisées dans le back-office ;
* corrections de bugs dans la gestion des listes (dans certaines conditions, la suppression d’une données d’une liste provoquait l’effacement de la liste elle-même)
* sur la cartographie, possibilité de dessiner un polygone de recherche
* refonte complète de l'aide en ligne.

<!-- /timeline -->

<!-- timeline -->

## 2.18 {#v218}

<br> Publiée fin mars 2017.

Consulter :
* le [mail envoyé aux utilisateurs](http://us4.campaign-archive1.com/?u=256352d96aabf0dec0ee32d84&id=b57277a32c) ;
* le [billet de blog](http://blog.isogeo.com/?p=3821) ;

 
* APP
    * amélioration des métadonnées de services géographiques :
        * ajout du support de versions plus anciennes des standards OGC (WMS 1.1.0, WFS 1.0) ou de la version 10.5 des formats spécifiques Esri (Map Service et Feature Service)
        * meilleure gestion des particularités des formats de services Esri
        * amélioration de l'interface d'association dynamique entre la couche d'un service et la fiche d'une donnée ;
        * gestion des espaces de nommage des WFS ;
    * suppression par lot des métadonnées

* OC
	* refonte de la prévisualisation intégrée des services géographiques :
	    * mise à jour des dépendances (Leaflet et plugins associés)
	    * définition plus précise du cas générique selon les formats et versions
	    * meilleure gestion des cas particuliers (SRS incompatibles, etc.)

* API
    * le filtre _action:view|download_ tient compte des associations dynamiques entre couches de services et données ;

* Applications tierces
    * sortie de la version 1.5 du [plugin pour QGIS](http://plugins.qgis.org/plugins/isogeo_search_engine/) (voir [documentation](https://github.com/isogeo/isogeo-plugin-qgis/wiki)) ;
    * ajout d'une gestion des droits affinée et refonte de la brique de recherche cartographique dans le [portail générique de données](http://demo.isogeo.net/les-donnees) ;


<!-- /timeline -->

<!-- timeline -->

## 2.17 {#v217}

<br> Publiée en septembre 2016.

Consulter :
* le [mail envoyé aux utilisateurs](http://us4.campaign-archive1.com/?u=256352d96aabf0dec0ee32d84&id=1a0a2c1231) ;
* [l'article de blog](http://blog.isogeo.com/2017/01/11/pour-bien-commencer-2017-une-version-2-17-de-la-plateforme/) ;


* APP
    * nouvelles métadonnées de services géographiques :
        * recensement automatisé sur la base des URLs des services géographiques standardisés (WFS, WMS, WMTS) et Esri (Feature, Map, Tile) ;
        * association dynamique entre la couche d'un service et la fiche d'une donnée ;
        * recherche dans les couches d'un service
    * nouvelle interface de gestion des ressources associées

* OC
	* les liens de visualisation des services géographiques rencensés et associés avec la nouvelle méthode sont automatiquement générés dans le bouton "Visualiser" ;
	* si le service WFS associé le permet, un lien de téléchargement de la donnée brute est automatiquement généré dans le bouton "Télécharger".

* API
    - ajout des paramètres liées aux nouvelles métadonnées de services (*layers*, *operations*, *serviceLayers*) de façon à fournir le nécessaire aux applications tierces ;

* Extensions
    * sortie de la version 1 du [plugin pour QGIS](http://plugins.qgis.org/plugins/isogeo_search_engine/) (voir [documentation](https://github.com/isogeo/isogeo-plugin-qgis/wiki)) ;
    * nouvelle gestion des filtres contextuels dans le [portail générique de données](http://demo.isogeo.net/les-donnees) ;


<!-- /timeline -->

