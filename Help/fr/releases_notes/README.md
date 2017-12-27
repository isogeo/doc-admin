# Notes des versions des principaux modules de la plateforme


<!-- timeline -->

## 2.19 {#v219}

Publiée en décembre 2017 :

Consulter :
* le [mail envoyé aux utilisateurs](https://mailchi.mp/isogeo/isogeo-version-2_19) ;
* le [billet de blog](http://blog.isogeo.com/?p=4034) ;

#### API

* amélioration des temps de réponse grâce à la migration des clés primaires de la base de données

#### APP

* import des métadonnées des services internes (privés) via l'import du fichier des capacités

#### OpenCatalog

* ajout de paramètres d'URL à OpenCatalog permettant de passer outre les proxies intégrés afin de consommer les services internes

#### Aide en ligne

* GitBook version 3.2.x
* recherche accélérée
* nouveaux chapitres
* menus repliables
* notes de versions regroupées en une seule page

<!-- /timeline -->

<!-- timeline -->

## 2.18.5 {#v2185}

Publiée fin juillet 2017.

Cette version correspond à la version 2.3 d'OpenCatalog, module exclusivement concerné par cette mise à jour.

Consulter :
* le [mail envoyé aux utilisateurs](http://us4.campaign-archive1.com/?u=256352d96aabf0dec0ee32d84&id=b57277a32c) ;
* le [billet de blog](http://blog.isogeo.com/?p=3931) ;
 
#### OpenCatalog

* refonte complète de l'ergonomie et de l'interface :
	- les sections d'une fiche de métadonnées sont piables/dépliables
	- ajout d'un bouton pour copier/coller les URLs des capacités des services
	- ajout des vignettes basées sur l'emprise
	- navigation réciproque entre métadonnée d'un jeu de données et métadonnées des services associés
* bascule du widget de recherche sur celui d'APP avec notamment l'ajout du tri des résultats et de l'auto-complétion
* mise en cohérence de la construction des URLs (structure et paramètres)
* refonte de la visualisation des couches de service
* ajout d'un formulaire de téléchargement des données vectorielles généré automatiquement à partir des WFS
* refactoring complet du code source

<!-- /timeline -->


<!-- timeline -->

## 2.18 {#v218}

Publiée fin mars 2017.

Consulter :
* le [mail envoyé aux utilisateurs](http://us4.campaign-archive1.com/?u=256352d96aabf0dec0ee32d84&id=b57277a32c) ;
* le [billet de blog](http://blog.isogeo.com/?p=3821) ;
 
#### API

* le filtre _action:view|download_ tient compte des associations dynamiques entre couches de services et données ;

#### APP

* Amélioration des métadonnées de services géographiques :
    - ajout du support de versions plus anciennes des standards OGC (WMS 1.1.0, WFS 1.0) ou de la version 10.5 des formats spécifiques Esri (Map Service et Feature Service)
    - meilleure gestion des particularités des formats de services Esri
    - amélioration de l'interface d'association dynamique entre la couche d'un service et la fiche d'une donnée ;
    - gestion des espaces de nommage des WFS ;
    
* Suppression par lot des métadonnées

#### OpenCatalog

* refonte de la prévisualisation intégrée des services géographiques :
    - mise à jour des dépendances (Leaflet et plugins associés)
    - définition plus précise du cas générique selon les formats et versions
    - meilleure gestion des cas particuliers (SRS incompatibles, etc.)

#### Applications tierces

* sortie de la version 1.5 du [plugin pour QGIS](http://plugins.qgis.org/plugins/isogeo_search_engine/) (voir [documentation](https://isogeo.gitbooks.io/app-plugin-qgis/content/fr/)) ;
* ajout d'une gestion des droits affinée et refonte de la brique de recherche cartographique dans le [portail générique de données](https://isogeo.gitbooks.io/app-portal-pixup-admin/content/) ;

<!-- /timeline -->

<!-- timeline -->

## 2.17 {#v217} 

Publiée en septembre 2016.

Consulter :
* le [mail envoyé aux utilisateurs](http://us4.campaign-archive1.com/?u=256352d96aabf0dec0ee32d84&id=1a0a2c1231) ;
* [l'article de blog](http://blog.isogeo.com/2017/01/11/pour-bien-commencer-2017-une-version-2-17-de-la-plateforme/) ;

#### API

- ajout des paramètres liées aux nouvelles métadonnées de services (*layers*, *operations*, *serviceLayers*)

#### APP

* nouvelles métadonnées de services géographiques :
    * recensement automatisé sur la base des URLs des services géographiques standardisés (WFS, WMS, WMTS) et Esri (Feature, Map, Tile) ;
    * association dynamique entre la couche d'un service et la fiche d'une donnée ;
    * recherche dans les couches d'un service
* nouvelle interface de gestion des ressources associées

#### OC

* les liens de visualisation des services géographiques rencensés et associés avec la nouvelle méthode sont automatiquement générés dans le bouton "Visualiser" ;
* si le service WFS associé le permet, un lien de téléchargement de la donnée brute est automatiquement généré dans le bouton "Télécharger".

#### Applications tierces

* sortie de la version 1 du [plugin pour QGIS](http://plugins.qgis.org/plugins/isogeo_search_engine/) (voir [documentation](https://github.com/isogeo/isogeo-plugin-qgis/wiki)) ;
* nouvelle gestion des filtres contextuels dans le [portail générique de données](http://demo.isogeo.net/les-donnees) ;

<!-- /timeline -->

<!-- timeline -->

## 2.16 {#v216}

Publiée en juillet 2016.

Consulter :
* [l'article de blog](http://blog.isogeo.com/2016/07/13/isogeo-version-2-16/) ;
* le [mail envoyé aux utilisateurs](http://eepurl.com/b7NoAD) ;
* le [mail envoyé aux administrateurs du Scan FME](http://eepurl.com/b8uYqb).

#### API

* nouveau mécanisme d'authentification pour les applications utilisateurs
* possibilité de rechercher des ressources par identifiant, par contact et par licence
* possibilité de récupérer l'enveloppe convexe globale des résultats
	* Avertissement : renvoie une valeur nulle si une donnée couvre la planete entiére
	* Remarque : les coordonnées sont exprmiés avec 12 décimales, voir à reduire à 3

* possibilité de tier les résultats d'une recherche par pertinence
	* ajout du paramètre de tri "relevance" pour afficher les résultats d'une recherche selon le score de chaque fiche
	* le score est calculé selon le nombre de fois ou le terme recherché apparait exactement dans le titre et le nom de la donnée

#### APP

* Édition des fiches de métadonnées.
	* Améliorations et cas d'usages :
		* Les sous-ressources (spécifications, licences, contacts, etc.) sont désormais gérées dans des fenêtres modales
		* Toutes les ressources et les sous-ressources sont désormais chargées en une seule requête.
			* cas d'usage : éditer tous les champs d'une fiche, sans avoir besoin d'enregistrer les sous-ressources au changement d'onglet et au risque de les perdre
			* cas d'usage : enregistrer et annuler en une seule opération, toutes les ressources et sous-ressources saisies

	* Bénéfices :
		* diminuer le temps de saisie (gain de temps)
		* améliorer l'expérience des contributeurs aux catalogues

* Moteur de recherche
	* Contexte (infos interne):
		* En attendant de changer de technologie (elastic search, etc.), nous avons décidé d'améliorer le moteur actuel.
		* Ces améliorations sont "compatibles" avec les technologies envisagées.

	* Améliorations et cas d'usages :
		* rechercher des ressources par licence
			* cas d'usage : quelles sont les données sous licence ouverte disponibles dans ce catalogue ?

		* rechercher des ressources par contact
			* cas d'usage : quel sont les données gérées par Julien de l'Observatoire du logement ?

		* les résultats d'une recherche sont désormais triées par "pertinence" puis par "date de création de la fiche de métadonnée (ordre décroissant)"
			* cas d'usage : quelles sont les ressources contenant complétement dans leur titre ou leur nom le terme "PLU"
			* fonctionnement :
				* la pertinence est calculée selon le nombre de fois ou le terme recherché apparait exactement dans le titre, le nom de la donnée, les mots-clés, le résumé et les thèmes INSPIRE
				* le terme recherché est surligné en jaune dans la page des résultats

	* Bénéfices :
		* diminuer le temps passé à rechercher et à documenter des ressources.
		* améliorer l'expérience de l'utilisateur recherchant des données dans un inventaire et des catalogues (APP, OC et API)

* Tableau de bord :
	- Ajout d'un nouvel indicateur : répartition des données par contact

* Administration
	- ajout du nombre d'occurrences par contact et licence
	- ajout du raccourci pour consulter les fiches liées

	* blocage du bouton "supprimer" quand le nombre d'occurrences d'un contact / licence / spefs est supérieur à 0

* Autres :
	* L'ID du groupe de travail est desormais dans les URL's des pages APP
	* Optimisation du système de mise à jour du widget de recherche
	* Titre de la page contextualisé dans l'onglet du navigateur, finis les "Solution Isogeo...."

#### Opencatalog

* les résultats d'une recherche par désormais trier par "pertinence" puis par "date de création de la fiche de métadonnée (ordre décroissant)" : fonctionnement identique à APP
* dans une fiche de métadonnées, possibilité de :
	* trier la liste des champs attributaires (comportement identique à celui de APP)
	* revenir en haut de la page

#### CSW

* les fiches de métadonnées au format ISO19139 sont générées par lot
* les queryables suivants ont été ajoutés :  AlternateTitle, OrganizationName

#### Scan FME

* Scripts mis à jour pour FME 2016
	* Les scripts FME de lecture des données ont été mis à jour pour fonctionner avec FME Desktop version 2016. Une nouvelle version du service est disponible
	* Les utilisateurs ayant précédemment scanné leur données avec FME 2015 verront toutes leurs données indiquées comme modifiées, un événement dans l'historique de la donnée sera automatiquement créé

* 3 Nouveaux formats
	* Spatialite
	* GML :
		* seulement la première couche
		* NB : dans une prochaine version, toutes les couches feront l'objet d'une fiche de métadonnées. ça sera aussi le cas pour les fichiers KML
	* LiDAR XYZ :
		* Pour être scanné, le fichier doit contenir à minima 3 colonnes attributaires (X Y et Z) séparées par des espaces
		* Le scan remonte les informations suivantes : emplacement, nombre d'entités, type d'entité (point) et le format. A noter que l'emprise, le systéme de coordonnées et la liste des champs attributaires ne sont pas remontés.

* Requêtes
	* Il est possible d'ouvrir une fiche de métadonnées depuis la liste des données recensées
	* La fiche s'ouvre dans un nouvel onglet du navigateur et sur la partie "Histoire"
	* NB : si la fiche vient d'être créée, il faut nécessairement rafraichir la page pour pouvoir ouvrir la fiche dans un nouvel onglet

<!-- /timeline -->

<!-- timeline -->

## 2.15 {#v215}

Publiée en avril 2016.

Consulter :
* [l'article de blog](http://wp.me/p3AlZA-U0) ;
* le [mail envoyé aux utilisateurs](http://us4.campaign-archive2.com/?u=256352d96aabf0dec0ee32d84&id=4c66022137).

#### API

* nouvelles routes et paramètres liés à la gestion des mots-clés ;
* route permettant de récupérer les informations des partages.

#### APP

* Nouvelle gestion des mots-clés
    * les administrateurs peuvent désormais restreindre la liste des mots-clés utilisables par les éditeurs du groupe de travail ;
    * les mots-clés sont accompagnés de leur nombre d'occurrences au moment de l'étiquetage et de l'administration ;
    * les administrateurs accèdent à une interface centralisée permettant de mesurer l'utilisation des mots-clés (mots-clés les plus utilisés, inutilisés, etc.) ;
    * les administrateurs peuvent forcer l'affichage des mots-clés : tout en minuscules, TOUT EN MAJUSCULES, Avec Les Initiales En Majuscules ou Avec seulement la première lettre en majuscule ;
* tableau de bord : répartition des ressources par groupe de travail propriétaire.
* l'édition par lot de la langue des attributs prend désormais en compte l'implémentation des types texte d'Esri ;
* pages d'erreurs personnalisées en cas de problème sur l'application (et non plus les pages http basiques) ;

#### OpenCatalog

* conforme au WCAG 2.0 niveau AA ;
* Sécurisation du proxy Open Catalog ;


#### CSW

* Intégration du client CSW dans l'API V1


#### Aide en ligne

*  Mise à jour de GitBook en version 2.6.6 ;
*  Mise à jour avec les fonctionnalités de la 2.15.

<!-- /timeline -->


<!-- timeline -->

## 2.14 {#v214}

Publiée le 18 décembre 2015.

Consulter :
* [l'article de blog](http://blog.isogeo.com/2016/01/18/isogeo-version-2-14/) ;
* le [mail envoyé aux utilisateurs](https://us4.campaign-archive2.com/?u=256352d96aabf0dec0ee32d84&id=b89aa92d1b).
* la vidéo retraçant les nouveautés apparues depuis la 2.12 :

{% youtube %}
https://www.youtube.com/watch?v=8f0FcliMd1M
{% endyoutube %}


#### API

* finalisation de la version 1, prête pour être publique

#### APP

* refonte de l'affichage des événements dans l'historique d'une donnée
* aide contextuelle via une icône en regard de chaque champ du formulaire d'édition

#### Scan FME

* prise en compte des données déplacées ou renommées

<!-- /timeline -->

<!-- timeline -->

## 2.13 {#v213}

Publiée le 16 octobre 2015.

Consulter :
* [l'article de blog](http://wp.me/p3AlZA-Rg) ;
* le [mail envoyé aux utilisateurs](https://us4.campaign-archive2.com/?u=256352d96aabf0dec0ee32d84&id=12e0fad409).

#### API

* optimisation des requêtes et des temps de réponses

#### APP

* métadonnées de service conformes INSPRE :
	* ajout de l'onglet avancé : les formats disponibles correspondent aux 6 implémentations connues d'Isogeo. Ces formats sont filtrables. A partir du format, le type de service et la catégorie de service sont renseignés automatiquement dans le XML.
Nota bene : si le format, sa version, le type et la catégorie de service sont déjà renseignés en mots-clés, il est recommandé de les supprimer pour gagner en lisibilité.
	* ajout de l'onglet géographie : seulement la partie "Carte"
	* ajout de l'onglet qualité : conformité aux spécifications. Les spécifications relatives aux services Inspire n'ont pas encore été ajoutées
	* renommage du champ "Emplacement de la ressource" par "URL du service". Nota bene : il s'agit d'indiquer l'URL GetCapabilities du service, Isogeo complétant automatiquement avec les paramètres adaptés. Ne vous étonnez pas si Isogeo modifie l'URL que vous avez saisie, c'est pour son bien ;)
	* lien de téléchargement du XML dans l'onglet "Ressources"
* enrichissement de l'historique d'une donnée.
* Amélioration de la saisie des types attributs
* Page d'erreur pour les connexions lentes
* Meilleure gestion des invitations
* Amélioration des métadonnées de type "ressources"
	* ajout de l'onglet "Avancé" sur les fiches de type "ressource" :
	* il est possible d'ajouter n'importe quel format / version => base centralisée
	* ce sont des pseudos formats : pas de filtre, pas de tag, etc.
	* la recherche textuelle interroge les formats
* Administration : 
	- Mise en place d'une barre de recherche dans toutes les listes de l'applications (utilisateurs, catalogues, point d'entrée, etc)

* Anomalie connue : les fonds de plan de vignettes ne s'affichent pas dans Chrome.

#### CSW

* la version 2.13 sera moissonnable par GéoSource 3.0.1 mais non par 2.11.2
* GeoSIK : légère adaptation pour accepter les paramètres "bizarres" (vides) passés par GéoSource dans les requêtes HTTP ;

#### OpenCatalog

* Changement dynamique du fond de plan ;
* Ajout de pages d'erreur pour les ressources introuvables et pour les connexions lentes

#### Scan

* ajout du format LIDAR-LAS
* suivi plus fin des modifications d'une donnée avec renseignement automatique des types de modifications (géométrie, attribut, emprise)

#### Applications tierces

* Plug-in & Widget Isogeo for ArcGIS
* Nouvelle version du portail de données Isogeo
* Nouvelle version de l'extracteur GTF
* Nouvelle version de l'extracteur FME

#### Aide en ligne

* disponible en anglais

<!-- /timeline -->

<!-- timeline -->

## 2.12 {#v212}

Publiée le 10 juillet 2015.

Consulter :
* [l'article de blog](http://wp.me/p3AlZA-ON) ;
* le [mail envoyé aux utilisateurs](http://eepurl.com/brcEPr).

## Nouveautés

* APP :

	* édition par lot :
		* possibilité de saisir les contacts par lot.
		* possibilité de renseigner la langue des attributs par lot
		* possibilité de renseigner les spécifications par lot
		* possibilité de renseigner la cohérence topologique par lot
	* affichage de l'emprise de la donnée comme vignette
	* possibilité de trier l'inventaire par date de modification de la donnée
	* mise en place d'une alerte navigateur
	* refonte totale de l'authentification :
	    * meilleure maîtrise du composant en interne
	    * amélioration du partage aux applications tierces (GéoMayenne, portails Open Data, connecteurs pour SIG bureautiques, etc.)
        * nouvelle interface d'inscription et de connexion
        * nouveaux mails liés à l'authentification (inscription, rappel du mot de passe, etc.)


* OpenCatalog :
    * possibilité de changer le fond de plan
	    * Bing Maps Road (par défaut) vue classique
	    * Bing Maps Aerial vue satellite
	    * OpenStreetMap.BlackAndWhite vue noir et blanc
	    * OpenMapSurfer.road
	    * vide

* Applications partenaires
	* Portails de données :
	    * possibilité de réaliser son portail de données SIG personnalisé et personnalisable basé sur un CMS du type WordPress,
	    * mécanismes de suivi des modifications des données (notifications par mail),
	    * fonctionnalités liés à l'animation du réseau d'acteurs SIG,
    * geomayenne.fr :
        * possibilité d'intégrer OpenCatalog dans WordPress,
        * rechercher et accéder à une carte ArcGIS Server depuis le catalogue Isogeo,
		* consulter la fiche de métadonnées directement dans la carte
	* Connecteur ArcGIS :
		* rechercher des données cataloguées dans Isogeo directement dans votre interface ArcCatalog,
		* ajouter les données trouvées à votre document de travail ArcMap (mxd)


## Améliorations

* APP :
	* amélioration continue de l'ergonomie :
		* focus automatique sur le premier champ à saisir,
		* mise en évidence du bouton "Consulter" dans le menu Administration > Catalogues > Propriété,
		* mise en place d'un bouton "Consulter" dans les menus Administration > Licences > Propriété et Administration > Sépcifications> Propriété,
		* toutes les listes sont triées par ordre alphabétique (point d'entrée, carnet d'adresse, licences, etc.),

	* suppression de l'option "être référencé comme contact"
	* mise à jour de l'aide en ligne :
		* ajout de conseils de documentation liés à chaque champ de métadonnée,
		* ajout d'annexes sur des cas d'usage,
		* documentation de l'architecture,
		* structuration en vue de l'arrivée de l'aide contextuelle,
		* version anglaise,
		* corrections multiples,

* OpenCatalog :
	* mise en place d'une page "ressource introuvable"

* API :
	* implémentation de la couche d'abstraction View Model ouvrant la voie à des modèles plus fins et moins liés au modèle de la base de données
	* les requêtes du scan sont désormais passées en série

* Optimisations et améliorations diverses
	* mise à jour de la bibliothèque node.js,
	* mise en série de l'édition par lot,
	* optimisation de la gestion des droits pour de meilleures performances,
	* paramétrage des URLs de l'API,
	* mise en place de tests fonctionnels automatisés : recherche et partage

## Correctifs

* APP :
	* préchargement des contacts lors de l'affichage d'une métadonnées pour éviter les bugs d'affichage du valideur INSPIRE

## Anomalies connues

* APP :
	* Contacts : si un même contact est déclaré plusieurs fois dans une fiche, le fait d'en supprimer un, les supprime tous (ils ont le même identifiant).

<!-- /timeline -->

<!-- timeline -->

## 2.11 {#v211}

Publiée le 27 mars 2015.

Consulter :
* [l'article de blog](http://blog.isogeo.com/isogeo-v2-11-plateforme-user-friendly) ;
* le [mail envoyé aux utilisateurs](http://eepurl.com/bhQtIn).

## Nouveautés

* APP :
	- possibilité de filtrer par types de ressources associées ;
	- possibilité de filtrer sur les champs non renseignés ;
	- refonte de l'aide en ligne pour un site autonome et interactif ;
	- possibilité de trier les attributs ;
	- les listes du menu Administration ("Utilisateurs" "Catalogues" "Partage" etc.) sont triées par ordre alphabétique ;
	- auto-complétion dans la recherche : suggestions contextuelles de tags (propriétaire, catalogues, mots-clés, type de ressource, formats, systèmes de coordonnées, thèmes INSPIRE, actions)

* OpenCatalog :
	- mise en production de la version 2 : voir [le mailing associé](http://eepurl.com/bfpoQb).

## Améliorations

* APP :
	- la barre de faire se redimensionne automatiquement pour s'adapter aux petites résolutions : les textes deviennent des icônes.
	- mise à jour des dépendances : Bootstrap, JavaScript, CSS, MarionetteJS, NodeJS. Objectif : bénéficier d'un mise au propre des du design et des bibliothèques utilisées.
	- affichage de la pop-up limite de téléversement dépassée ;
	- métadonnée de service : suppression des champs  "Contexte de collecte", "Méthode de collecte", Période de validité", "Commentaire" et "Fréquence de mise à jour". Seul les événements sont conservés

* API : optimiser les appels à l'API
	- gestion des sous ressources dans l'API (voir [le mailing associé](http://eepurl.com/bfJQsn)) :
	    + la sous-ressource *keyword* n'est plus remontée
	    + nouveau paramétre *global_include*

* Optimisations et amélorations diverses
	- refactoring divers
	- optimisation des performances
	- mise à jour des dépendances

## Correctifs

* OC :
	- Utilisation des filtres présents dans les fiches de métadonnées
	- Affichage des services cartographiques issus de Business Geographic

* APP :
	- édition par lot stable ;
	- outil "étiquetter" optimisé (temps d'ouverture correct, possible de retrouver tous les mots-clés)
	- le valideur INSPIRE est pleinement fonctionnel ;
	- retour du système de coordonnées EPSG:4326 ;
	- suppression d'une ressource ;
	- les thématiques INSPIRE ne sont plus en double ;
	- import et client XML :
		+ meilleure conformité de la spécification
		+ contacts, informations correctement reprises dans le carnet d'adresses
		+ la fiche apparaît dans l'inventaire, plus besoin de rafraichir l'inventaire
		+ si la géométrie n'est pas renseignée, l'import est tout de même effectué
		+ optimisation et stabilisation du client CSW

	* droits :
		- un éditeur ne peut plus modifier le point de contact du groupe de travail
		- un éditeur ne peux pas téléverser une donnée brute comme ressource associée
		- impossible de créer un mot-clé si il existe déjà
		- possible d'affecter une fiche issue d'un point d'entrée CSW dans un ou plusieurs catalogues


<!-- /timeline -->

<!-- timeline -->

## 2.10 {#v210}

Publiée fin décembre 2014.

Consulter :
* [l'article de blog](http://blog.isogeo.com/avec-isogeo-2-10-la-fin-du-cache-cache-des-donnees) ;
* le [mail envoyé aux utilisateurs](http://us4.campaign-archive1.com/?u=256352d96aabf0dec0ee32d84&id=45f2788b69) ;
* la [vidéo du webinaire](http://youtu.be/1BTwZqii0EY) présentant les principales nouveautés :

<iframe width="560" height="315" src="https://www.youtube.com/embed/1BTwZqii0EY" frameborder="0" allowfullscreen></iframe>

## Nouveautés

* APP :
	* mise à jour du référentiel des systèmes de coordonnées
	* ajout de la spécification "Géostandard Schéma Régional de Cohérence Ecologique"
	* refonte du système de filtres, ajout d'un widget de recherche avancée
	* sauvegarde du contexte de recherche = possibilité de revenir à sa recherche depuis une fiche de métadonnée
	* amélioration du système de pagination : ajout de la fonctionnalité aller à la page X et possibilité de choisir le nombre de fiches à afficher par page 20, 30 ou 50 ;
	* gestion des mots-clés dans un thésaurus global ;
	* refonte de la gestion des dates et des événements :
		* 3 types de dates : une date de création, plusieurs dates de modification et plusieurs dates de révision
		* possibilités de choisir le type de date lors de la création manuelle d'événements
		* le scan FME crée des événements de type "modification" !!! Wouhou

* Scan FME :
	* version 1.0.24 ;
	* correction de bugs ;
	* prise en charge des formats PNG, GPx  et APIC ASC.

* OpenCatalog :
	* Possible de visualiser les flux WMTS.

## Améliorations

* la documentation,
* harmonisation de l'interface d'administration. Les boutons "Enregistrer" et "Supprimer" ont été ajouté sur toutes les pages concernées

## Correctifs

* OpenCatalog :
	* Page de résultats : les traits entre les fiches de métadonnées s'affichent
	* Les couleurs des boutons "Actions" sont bien gérées
	* Les flux WFS s'affichent sur la carte si au format JSONP
	* Le bouton "Plein écran" s'affiche dans la carte
	* Les liens associés s'affichent dans les actions

* APP :
	* Tous les éléments de l'onglet "Géographie" sont chargés en même temps ce qui évite de rafraîchir plusieurs fois la carte.
	* Client CSW et import XML



<!-- /timeline -->

<!-- timeline -->

## 2.9 {#v209}

Publiée fin septembre 2014.

Consulter :
* [l'article de blog](http://blog.isogeo.com/version-2-9) ;
* le [mail envoyé aux utilisateurs](http://us4.campaign-archive2.com/?u=256352d96aabf0dec0ee32d84&id=fabb845b06) ;
* la [vidéo du webinaire](http://youtu.be/l6vmlYwUHDM?list=PLouu1QiHcsHSDGdvysTn1KRhr3JQUDol4) présentant les principales nouveautés :

<iframe width="560" height="315" src="https://www.youtube.com/embed/l6vmlYwUHDM" frameborder="0" allowfullscreen></iframe>

## Nouveautés

* APP :
	* possibilité de téléverser une donnée en ressource associée,
	* distinction entre format DXF et DWG,
	* de nouveaux types de fiches de métadonnées sont possibles (non géométriques, ressources)

* Scan :
	* format KML / KMZ (seulement la 1ère couche),
	* spécifique à Créteil / Plaine Centrale : nouveau type de point d'entrée : prise en charge de requêtes SQL sur une base Oracle

* OpenCatalog :
	* il est désormais possible de gérer l'affichage des ressources selon les usages,

## Améliorations

* la documentation est à jour,
* performances globales,
* stabilité générale,
* le scan FME prise en compte par le scan FME du renommage d'un champ attributaire ainsi que de l'ajout d'un champ attributaire sans valeur.

## Correctifs

* les filtres s'affichent de nouveau dans l'ordre alphabétique (APP et OpenCatalog),
* le format DGN ne s'affichait pas correctement,
* corrections mineures

## Dans la prochaine version

* Etudes : édition par lot et planification


<!-- /timeline -->

<!-- timeline -->

## 2.8 {#v208}

Publiée en juillet 2014.

Consulter :
* [l'article de blog](http://blog.isogeo.com/une-ergonomie-revisitee-une-valorisation-facilitee-isogeo-v2-8) ;
* le [mail envoyé aux utilisateurs](http://us4.campaign-archive1.com/?u=256352d96aabf0dec0ee32d84&id=6dc56a2972) ;

## Nouveautés

* APP :
	* abonnements newsletter,
	* champ adresse postale pour l'utilisateur,
	* ergonomie générale harmonisée (listes déroulantes et gestion administration)

* Scan :
	* affecter automatiquement les nouvelles fiches à des catalogues,

* OpenCatalog :
	* mise en valeur des ressources associées via des boutons de visualisation des flux, téléchargement et autres,
	* possiblité de personnaliser la couleur du thème,
	* le nom du bandeau est celui du partage,

## Améliorations

* la documentation,
* performances globales,
* de nombreuses optimisations ont été réalisés sous le capot.

## Correctifs

* les formats s'affichent de nouveau,
* enlever une thématique INSPIRE,
* le scan FME évite les "pseudo-doublons" des bases Oracle (voir procédure de mise à jour),
* corrections mineures.

## Dans la prochaine version

* [SCAN] Nouveaux formats de données : KML/KMZ
* [Partage] Gestion de l'affichage des ressources associées
* fonctionnalités liées à l'ouverture des données (Open Data)

## Divers

* questionnaire utilisateurs
* fin de la vignette = fin coupe du monde
* planification : désactivée avant refonte



<!-- /timeline -->

<!-- timeline -->

## 2.7 {#v207}

<!-- /timeline -->

