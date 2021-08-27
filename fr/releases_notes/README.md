# Notes des versions des principaux modules de la plateforme

<!-- timeline -->

## 2.20.2-11 {#v220}

Publiée fin août 2021 :

### APP

* dans l'onglet administration, l'utilisateur reste dans l'onglet actif (Toutes, Mes catalogues, Autres) après la suppression d'un catalogue, d'une licence ou d'une spécification
* correction d'un bug qui empêchait parfois l'ajout d'une nouvelle donnée ou d'un nouveau lien dans une fiche de métadonnée
* amélioration du système d'édition des attributs
* ajout de vignettes spécifiques selon le type de ressource qui s'affichent si aucune emprise n'est renseignée
* affichage de l'emprise dans la vignette de la fiche détaillée si elle existe

<!-- /timeline -->

<!-- timeline -->

## 2.20.2-10 {#v220}

Publiée en août 2021 :

### APP

* amélioration de la récupération et de l&apos;affichage des couches de services géographiques
* amélioration du système de détection des services géographiques à la création de la fiche
* possibilité de supprimer un contact depuis le Carnet d&apos;adresses même s&apos;il est encore associé à une ou plusieurs fiches
* correction d&apos;un bug du système d&apos;étiquettage qui proposait de créer à nouveau un mot-clé déjà existant (par exemple, avec le mot-clé "eau")
* les paramètres de recherche avancée ne disparaissent plus après la dé-sélection de toutes les fiches de métadonnées
* passage de tous les fonds de carte de Bing Maps à Open Layers
* par défaut, l&apos;onglet Partages propose la création d&apos;un nouveau partage d&apos;application au lieu d&apos;un partage de groupe
* prise en compte dans APP de la remontée des alias d'attributs depuis le scan Isogeo

### API

* les fiches de services géographiques ne sont plus renommées automatiquement lorsqu&apos;on actualise les données
* amélioration du système de détection des couches de services

<!-- /timeline -->

<!-- timeline -->

## 2.20.2-3 {#v220}

Publiée en novembre 2020 :

### APP

* dans l&apos;onglet Partages, dans un partage de groupe, suppression du bouton "J&apos;autorise les destinataires de ce partage à diffuser ces catalogues"
* correction d&apos;un bug dans les onglets Spécifications et Licences qui n&apos;affichait pas tout lorsqu&apos;on revenait sur l&apos;onglet "Toutes"
* amélioration de la reconnaissance de services OGC lors de la création d&apos;une fiche manuelle

### API

* correction d&apos;un bug qui empêchait la suppression d&apos;un groupe ou d&apos;un catalogue dans un partage de groupe

### Aide en ligne

* activation du protocole HTTPS pour l&apos;aide en ligne Isogeo

<!-- /timeline -->

<!-- timeline -->

## 2.20.2-2 {#v220}

Publiée en octobre 2020 :

### APP

* mise à jour des dépendances du projet
* possibilité de filtrer sur un groupe en cliquant sur le tag propriétaire d&apos;une fiche
* correction d&apos;un bug lors de la création d&apos;un mot-clé : il est maintenant automatiquement assigné
* remplacement de Bing Maps par OpenStreetMaps

### API

* augmentation de la durée de l&apos;Access Token pour éviter les déconnexions lors d&apos;éditions par lots trop volumineuses

### Base de données

* déplacement de la base de données en France pour réduire les latences, notamment lors de l&apos;exécution des éditions par lots

<!-- /timeline -->

<!-- timeline -->

## 2.19 {#v219}

Publiée en décembre 2017 :

Consulter :

* le [mail envoyé aux utilisateurs](https://mailchi.mp/isogeo/isogeo-version-2_19)
* le [billet de blog](http://blog.isogeo.com/?p=4034)

### API

* amélioration des temps de réponse grâce à la migration des clés primaires de la base de données

### APP

* import des métadonnées des services internes (privés) via l&apos;import du fichier des capacités

### Aide en ligne

* GitBook version 3.2.x
* recherche accélérée
* nouveaux chapitres
* menus repliables
* notes de versions regroupées en une seule page

<!-- /timeline -->

<!-- timeline -->

## 2.18 {#v218}

Publiée fin mars 2017.

Consulter :

* le [mail envoyé aux utilisateurs](http://us4.campaign-archive1.com/?u=256352d96aabf0dec0ee32d84&id=b57277a32c)
* le [billet de blog](http://blog.isogeo.com/?p=3821)

### API

* le filtre _action:view|download_ tient compte des associations dynamiques entre couches de services et données

### APP

* Amélioration des métadonnées de services géographiques :
  * ajout du support de versions plus anciennes des standards OGC (WMS 1.1.0, WFS 1.0) ou de la version 10.5 des formats spécifiques Esri (Map Service et Feature Service)
  * meilleure gestion des particularités des formats de services Esri
  * amélioration de l&apos;interface d&apos;association dynamique entre la couche d&apos;un service et la fiche d&apos;une donnée
  * gestion des espaces de nommage des WFS

* Suppression par lot des métadonnées

### Applications tierces

* sortie de la version 1.5 du [plugin pour QGIS](http://plugins.qgis.org/plugins/isogeo_search_engine/) (voir [documentation](https://help.isogeo.com/qgis/fr/index.html))
* ajout d&apos;une gestion des droits affinée et refonte de la brique de recherche cartographique dans le [portail générique de données](https://help.isogeo.com/pixup-portal/index.html)

<!-- /timeline -->

<!-- timeline -->

## 2.17 {#v217}

Publiée en septembre 2016.

Consulter :

* le [mail envoyé aux utilisateurs](http://us4.campaign-archive1.com/?u=256352d96aabf0dec0ee32d84&id=1a0a2c1231)
* [l&apos;article de blog](http://blog.isogeo.com/2017/01/11/pour-bien-commencer-2017-une-version-2-17-de-la-plateforme/)

### API

* ajout des paramètres liées aux nouvelles métadonnées de services (*layers*, *operations*, *serviceLayers*)

### APP

* nouvelles métadonnées de services géographiques :
  * recensement automatisé sur la base des URLs des services géographiques standardisés (WFS, WMS, WMTS) et Esri (Feature, Map, Tile)
  * association dynamique entre la couche d&apos;un service et la fiche d&apos;une donnée
  * recherche dans les couches d&apos;un service
* nouvelle interface de gestion des ressources associées

### Applications tierces

* sortie de la version 1 du [plugin pour QGIS](http://plugins.qgis.org/plugins/isogeo_search_engine/) (voir [documentation](https://github.com/isogeo/isogeo-plugin-qgis/wiki))
* nouvelle gestion des filtres contextuels dans le [portail générique de données](http://demo.isogeo.net/les-donnees)

<!-- /timeline -->

<!-- timeline -->

## 2.16 {#v216}

Publiée en juillet 2016.

Consulter :

* [l&apos;article de blog](http://blog.isogeo.com/2016/07/13/isogeo-version-2-16/)
* le [mail envoyé aux utilisateurs](http://eepurl.com/b7NoAD)
* le [mail envoyé aux administrateurs du Scan FME](http://eepurl.com/b8uYqb).

### API

* nouveau mécanisme d&apos;authentification pour les applications utilisateurs
* possibilité de rechercher des ressources par identifiant, par contact et par licence
* possibilité de récupérer l&apos;enveloppe convexe globale des résultats
  * Avertissement : renvoie une valeur nulle si une donnée couvre la planete entiére
  * Remarque : les coordonnées sont exprmiés avec 12 décimales, voir à reduire à 3

* possibilité de tier les résultats d&apos;une recherche par pertinence
  * ajout du paramètre de tri "relevance" pour afficher les résultats d&apos;une recherche selon le score de chaque fiche
  * le score est calculé selon le nombre de fois ou le terme recherché apparait exactement dans le titre et le nom de la donnée

### APP

* Édition des fiches de métadonnées.
  * Améliorations et cas d&apos;usages :
    * Les sous-ressources (spécifications, licences, contacts, etc.) sont désormais gérées dans des fenêtres modales
    * Toutes les ressources et les sous-ressources sont désormais chargées en une seule requête.
      * cas d&apos;usage : éditer tous les champs d&apos;une fiche, sans avoir besoin d&apos;enregistrer les sous-ressources au changement d&apos;onglet et au risque de les perdre
      * cas d&apos;usage : enregistrer et annuler en une seule opération, toutes les ressources et sous-ressources saisies

  * Bénéfices :
    * diminuer le temps de saisie (gain de temps)
    * améliorer l&apos;expérience des contributeurs aux catalogues

* Moteur de recherche
  * Contexte (infos internes) :
    * En attendant de changer de technologie (elastic search, etc.), nous avons décidé d&apos;améliorer le moteur actuel.
    * Ces améliorations sont "compatibles" avec les technologies envisagées.

  * Améliorations et cas d&apos;usages :
    * rechercher des ressources par licence
      * cas d&apos;usage : quelles sont les données sous licence ouverte disponibles dans ce catalogue ?

    * rechercher des ressources par contact
      * cas d&apos;usage : quel sont les données gérées par Julien de l&apos;Observatoire du logement ?

    * les résultats d&apos;une recherche sont désormais triées par "pertinence" puis par "date de création de la fiche de métadonnée (ordre décroissant)"
      * cas d&apos;usage : quelles sont les ressources contenant complétement dans leur titre ou leur nom le terme "PLU"
      * fonctionnement :
      * la pertinence est calculée selon le nombre de fois ou le terme recherché apparait exactement dans le titre, le nom de la donnée, les mots-clés, le résumé et les thèmes INSPIRE
        * le terme recherché est surligné en jaune dans la page des résultats

  * Bénéfices :
    * diminuer le temps passé à rechercher et à documenter des ressources.
    * améliorer l&apos;expérience de l&apos;utilisateur recherchant des données dans un inventaire et des catalogues (APP, OC et API)

* Tableau de bord :
  * Ajout d&apos;un nouvel indicateur : répartition des données par contact

* Administration
  * ajout du nombre d&apos;occurrences par contact et licence
  * ajout du raccourci pour consulter les fiches liées

  * blocage du bouton "supprimer" quand le nombre d&apos;occurrences d&apos;un contact / licence / spefs est supérieur à 0

* Autres :
  * L&apos;ID du groupe de travail est desormais dans les URL&apos;s des pages APP
  * Optimisation du système de mise à jour du widget de recherche
  * Titre de la page contextualisé dans l&apos;onglet du navigateur, finis les "Solution Isogeo...."

### CSW

* les fiches de métadonnées au format ISO19139 sont générées par lot
* les queryables suivants ont été ajoutés :  AlternateTitle, OrganizationName

### Scan FME

* Scripts mis à jour pour FME 2016
  * Les scripts FME de lecture des données ont été mis à jour pour fonctionner avec FME Desktop version 2016. Une nouvelle version du service est disponible
  * Les utilisateurs ayant précédemment scanné leur données avec FME 2015 verront toutes leurs données indiquées comme modifiées, un événement dans l&apos;historique de la donnée sera automatiquement créé

* 3 Nouveaux formats
  * Spatialite
  * GML :
    * seulement la première couche
    * NB : dans une prochaine version, toutes les couches feront l&apos;objet d&apos;une fiche de métadonnées. ça sera aussi le cas pour les fichiers KML
  * LiDAR XYZ :
    * Pour être scanné, le fichier doit contenir à minima 3 colonnes attributaires (X Y et Z) séparées par des espaces
    * Le scan remonte les informations suivantes : emplacement, nombre d&apos;entités, type d&apos;entité (point) et le format. A noter que l&apos;emprise, le systéme de coordonnées et la liste des champs attributaires ne sont pas remontés.

* Requêtes
  * Il est possible d&apos;ouvrir une fiche de métadonnées depuis la liste des données recensées
  * La fiche s&apos;ouvre dans un nouvel onglet du navigateur et sur la partie "Histoire"
  * NB : si la fiche vient d&apos;être créée, il faut nécessairement rafraichir la page pour pouvoir ouvrir la fiche dans un nouvel onglet

<!-- /timeline -->

<!-- timeline -->

## 2.15 {#v215}

Publiée en avril 2016.

Consulter :

* [l&apos;article de blog](http://wp.me/p3AlZA-U0)
* le [mail envoyé aux utilisateurs](http://us4.campaign-archive2.com/?u=256352d96aabf0dec0ee32d84&id=4c66022137).

### API

* nouvelles routes et paramètres liés à la gestion des mots-clés
* route permettant de récupérer les informations des partages.

### APP

* Nouvelle gestion des mots-clés
  * les administrateurs peuvent désormais restreindre la liste des mots-clés utilisables par les éditeurs du groupe de travail
  * les mots-clés sont accompagnés de leur nombre d&apos;occurrences au moment de l&apos;étiquetage et de l&apos;administration
  * les administrateurs accèdent à une interface centralisée permettant de mesurer l&apos;utilisation des mots-clés (mots-clés les plus utilisés, inutilisés, etc.)
  * les administrateurs peuvent forcer l&apos;affichage des mots-clés : tout en minuscules, TOUT EN MAJUSCULES, Avec Les Initiales En Majuscules ou Avec seulement la première lettre en majuscule
* tableau de bord : répartition des ressources par groupe de travail propriétaire.
* l&apos;édition par lot de la langue des attributs prend désormais en compte l&apos;implémentation des types texte d&apos;Esri
* pages d&apos;erreurs personnalisées en cas de problème sur l&apos;application (et non plus les pages http basiques)

### CSW

* Intégration du client CSW dans l&apos;API V1

### Aide en ligne

* Mise à jour de GitBook en version 2.6.6
* Mise à jour avec les fonctionnalités de la 2.15.

<!-- /timeline -->

<!-- timeline -->

## 2.14 {#v214}

Publiée le 18 décembre 2015.

Consulter :

* [l&apos;article de blog](http://blog.isogeo.com/2016/01/18/isogeo-version-2-14/)
* le [mail envoyé aux utilisateurs](https://us4.campaign-archive2.com/?u=256352d96aabf0dec0ee32d84&id=b89aa92d1b).
* la vidéo retraçant les nouveautés apparues depuis la 2.12 :

{% youtube %}
<https://www.youtube.com/watch?v=8f0FcliMd1M>
{% endyoutube %}

### API

* finalisation de la version 1, prête pour être publique

### APP

* refonte de l&apos;affichage des événements dans l&apos;historique d&apos;une donnée
* aide contextuelle via une icône en regard de chaque champ du formulaire d&apos;édition

### Scan FME

* prise en compte des données déplacées ou renommées

<!-- /timeline -->

<!-- timeline -->

## 2.13 {#v213}

Publiée le 16 octobre 2015.

Consulter :

* [l&apos;article de blog](http://wp.me/p3AlZA-Rg)
* le [mail envoyé aux utilisateurs](https://us4.campaign-archive2.com/?u=256352d96aabf0dec0ee32d84&id=12e0fad409).

### API

* optimisation des requêtes et des temps de réponses

### APP

* métadonnées de service conformes INSPRE :
  * ajout de l&apos;onglet avancé : les formats disponibles correspondent aux 6 implémentations connues d&apos;Isogeo. Ces formats sont filtrables. A partir du format, le type de service et la catégorie de service sont renseignés automatiquement dans le XML.
Nota bene : si le format, sa version, le type et la catégorie de service sont déjà renseignés en mots-clés, il est recommandé de les supprimer pour gagner en lisibilité.
  * ajout de l&apos;onglet géographie : seulement la partie "Carte"
  * ajout de l&apos;onglet qualité : conformité aux spécifications. Les spécifications relatives aux services Inspire n&apos;ont pas encore été ajoutées
  * renommage du champ "Emplacement de la ressource" par "URL du service". Nota bene : il s&apos;agit d&apos;indiquer l&apos;URL GetCapabilities du service, Isogeo complétant automatiquement avec les paramètres adaptés. Ne vous étonnez pas si Isogeo modifie l&apos;URL que vous avez saisie, c&apos;est pour son bien)
  * lien de téléchargement du XML dans l&apos;onglet "Ressources"
* enrichissement de l&apos;historique d&apos;une donnée.
* Amélioration de la saisie des types attributs
* Page d&apos;erreur pour les connexions lentes
* Meilleure gestion des invitations
* Amélioration des métadonnées de type "ressources"
  * ajout de l&apos;onglet "Avancé" sur les fiches de type "ressource" :
  * il est possible d&apos;ajouter n&apos;importe quel format / version => base centralisée
  * ce sont des pseudos formats : pas de filtre, pas de tag, etc.
  * la recherche textuelle interroge les formats
* Administration :
  * Mise en place d&apos;une barre de recherche dans toutes les listes de l&apos;applications (utilisateurs, catalogues, point d&apos;entrée, etc)

* Anomalie connue : les fonds de plan de vignettes ne s&apos;affichent pas dans Chrome.

### CSW

* la version 2.13 sera moissonnable par GéoSource 3.0.1 mais non par 2.11.2
* GeoSIK : légère adaptation pour accepter les paramètres "bizarres" (vides) passés par GéoSource dans les requêtes HTTP

### Scan

* ajout du format LIDAR-LAS
* suivi plus fin des modifications d&apos;une donnée avec renseignement automatique des types de modifications (géométrie, attribut, emprise)

### Applications tierces

* Plug-in & Widget Isogeo for ArcGIS
* Nouvelle version du portail de données Isogeo
* Nouvelle version de l&apos;extracteur GTF
* Nouvelle version de l&apos;extracteur FME

### Aide en ligne

* disponible en anglais

<!-- /timeline -->

<!-- timeline -->

## 2.12 {#v212}

Publiée le 10 juillet 2015.

Consulter :

* [l&apos;article de blog](http://wp.me/p3AlZA-ON)
* le [mail envoyé aux utilisateurs](http://eepurl.com/brcEPr).

### API

* refonte totale de l&apos;authentification :
  * meilleure maîtrise du composant en interne
  * amélioration du partage aux applications tierces (GéoMayenne, portails Open Data, connecteurs pour SIG bureautiques, etc.)
  * nouvelle interface d&apos;inscription et de connexion
  * nouveaux mails liés à l&apos;authentification (inscription, rappel du mot de passe, etc.)

* implémentation de la couche d&apos;abstraction View Model ouvrant la voie à des modèles plus fins et moins liés au modèle de la base de données
* Optimisations et améliorations diverses
* mise en série de l&apos;édition par lot,
* optimisation de la gestion des droits pour de meilleures performances,
* paramétrage des URLs de l&apos;API,
* mise en place de tests fonctionnels automatisés : recherche et partage

### APP

* édition par lot :
  * possibilité de saisir les contacts par lot.
  * possibilité de renseigner la langue des attributs par lot
  * possibilité de renseigner les spécifications par lot
  * possibilité de renseigner la cohérence topologique par lot
* affichage de l&apos;emprise de la donnée comme vignette
* possibilité de trier l&apos;inventaire par date de modification de la donnée
* préchargement des contacts lors de l&apos;affichage d&apos;une métadonnées pour éviter les bugs d&apos;affichage du valideur INSPIRE
* mise en place d&apos;une alerte non bloquante pour les navigateurs non supportés officiellement
* suppression de l&apos;option "être référencé comme contact" pour un compte utilisateur

### Scan FME

* les requêtes à l&apos;API sont désormais passées en série

### Applications tierces

* Portails de données :
  * possibilité de réaliser son portail de données SIG personnalisé et personnalisable basé sur un CMS du type WordPress,
  * mécanismes de suivi des modifications des données (notifications par mail),
  * fonctionnalités liés à l&apos;animation du réseau d&apos;acteurs SIG,

* geomayenne.fr :
  * possibilité d&apos;intégrer OpenCatalog dans WordPress,
  * rechercher et accéder à une carte ArcGIS Server depuis le catalogue Isogeo,
  * consulter la fiche de métadonnées directement dans la carte

* Connecteur ArcGIS :
  * rechercher des données cataloguées dans Isogeo directement dans votre interface ArcCatalog,
  * ajouter les données trouvées à votre document de travail ArcMap (mxd)

### Aide en ligne

* mise à jour de l&apos;aide en ligne :
  * ajout de conseils de documentation liés à chaque champ de métadonnée,
  * ajout d&apos;annexes sur des cas d&apos;usage,
  * documentation de l&apos;architecture,
  * structuration en vue de l&apos;arrivée de l&apos;aide contextuelle,
  * version anglaise,
  * corrections multiples,

<!-- /timeline -->

<!-- timeline -->

## 2.11 {#v211}

Publiée le 27 mars 2015.

Consulter :

* [l&apos;article de blog](http://blog.isogeo.com/isogeo-v2-11-plateforme-user-friendly)
* le [mail envoyé aux utilisateurs](http://eepurl.com/bhQtIn).

### API

* optimisation des appels à l&apos;API
* gestion des sous ressources dans l&apos;API (voir [le mailing associé](http://eepurl.com/bfJQsn)) :
  * la sous-ressource *keyword* n&apos;est plus remontée
  * nouveau paramétre *global_include*

### APP

* possibilité de filtrer par types de ressources associées
* possibilité de filtrer sur les champs non renseignés
* possibilité de trier les attributs
* les listes du menu Administration ("Utilisateurs" "Catalogues" "Partage" etc.) sont triées par ordre alphabétique
* auto-complétion dans la recherche : suggestions contextuelles de tags (propriétaire, catalogues, mots-clés, type de ressource, formats, systèmes de coordonnées, thèmes INSPIRE, actions)
* la barre de faire se redimensionne automatiquement pour s&apos;adapter aux petites résolutions : les textes deviennent des icônes.
* affichage de la pop-up limite de téléversement dépassée
* métadonnée de service : suppression des champs  "Contexte de collecte", "Méthode de collecte", Période de validité", "Commentaire" et "Fréquence de mise à jour". Seul les événements sont conservés
* édition par lot stable
* outil "étiqueter" optimisé (temps d&apos;ouverture correct, possible de retrouver tous les mots-clés)
* le valideur INSPIRE est pleinement fonctionnel
* retour du système de coordonnées EPSG:4326
* suppression d&apos;une ressource
* les thématiques INSPIRE ne sont plus en double
* droits :
  * un éditeur ne peut plus modifier le point de contact du groupe de travail
  * un éditeur ne peux pas téléverser une donnée brute comme ressource associée
  * impossible de créer un mot-clé si il existe déjà
  * possible d&apos;affecter une fiche issue d&apos;un point d&apos;entrée CSW dans un ou plusieurs catalogues

### CSW

* import et client XML :
  * meilleure conformité de la spécification
  * contacts, informations correctement reprises dans le carnet d&apos;adresses
  * la fiche apparaît dans l&apos;inventaire, plus besoin de rafraichir l&apos;inventaire
  * si la géométrie n&apos;est pas renseignée, l&apos;import est tout de même effectué
  * optimisation et stabilisation du client CSW

### Aide en ligne

* refonte de l&apos;aide en ligne pour un site autonome et interactif, basé sur GitBook

<!-- /timeline -->

<!-- timeline -->

## 2.10 {#v210}

Publiée fin décembre 2014.

Consulter :

* [l&apos;article de blog](http://blog.isogeo.com/avec-isogeo-2-10-la-fin-du-cache-cache-des-donnees)
* le [mail envoyé aux utilisateurs](http://us4.campaign-archive1.com/?u=256352d96aabf0dec0ee32d84&id=45f2788b69)
* la [vidéo du webinaire](http://youtu.be/1BTwZqii0EY) présentant les principales nouveautés :

{% youtube %}
<https://www.youtube.com/embed/1BTwZqii0EY>
{% endyoutube %}

### APP

* mise à jour du référentiel des systèmes de coordonnées
* ajout de la spécification "Géostandard Schéma Régional de Cohérence Ecologique"
* refonte du système de filtres, ajout d&apos;un widget de recherche avancée
* sauvegarde du contexte de recherche = possibilité de revenir à sa recherche depuis une fiche de métadonnée
* amélioration du système de pagination : ajout de la fonctionnalité aller à la page X et possibilité de choisir le nombre de fiches à afficher par page 20, 30 ou 50
* gestion des mots-clés dans un thésaurus global
* refonte de la gestion des dates et des événements :
  * 3 types de dates : une date de création, plusieurs dates de modification et plusieurs dates de révision
  * possibilités de choisir le type de date lors de la création manuelle d&apos;événements
  * le scan FME crée des événements de type "modification"
* harmonisation de l&apos;interface d&apos;administration. Les boutons "Enregistrer" et "Supprimer" ont été ajouté sur toutes les pages concernées
* Tous les éléments de l&apos;onglet "Géographie" sont chargés en même temps ce qui évite de rafraîchir plusieurs fois la carte.

### Scan FME

* version 1.0.24
* correction de bugs
* prise en charge des formats PNG, GPx  et APIC ASC.

<!-- /timeline -->

<!-- timeline -->

## 2.9 {#v209}

Publiée fin septembre 2014.

Consulter :

* [l&apos;article de blog](http://blog.isogeo.com/version-2-9)
* le [mail envoyé aux utilisateurs](http://us4.campaign-archive2.com/?u=256352d96aabf0dec0ee32d84&id=fabb845b06)
* la [vidéo du webinaire](http://youtu.be/l6vmlYwUHDM?list=PLouu1QiHcsHSDGdvysTn1KRhr3JQUDol4) présentant les principales nouveautés :

{% youtube %}
<https://www.youtube.com/embed/l6vmlYwUHDM>
{% endyoutube %}

### APP

* possibilité de téléverser une donnée en ressource associée,
* distinction entre format DXF et DWG,
* de nouveaux types de fiches de métadonnées sont possibles (non géométriques, ressources)
* documentation à jour,
* les filtres s&apos;affichent de nouveau dans l&apos;ordre alphabétique (APP et OpenCatalog),
* le format DGN ne s&apos;affichait pas correctement,

### Scan FME

* format KML / KMZ (seulement la 1ère couche),
* spécifique à Créteil / Plaine Centrale : nouveau type de point d&apos;entrée : prise en charge de requêtes SQL sur une base Oracle
* le scan FME prise en compte par le scan FME du renommage d&apos;un champ attributaire ainsi que de l&apos;ajout d&apos;un champ attributaire sans valeur.

> A l&apos;étude : édition par lot et planification

<!-- /timeline -->

<!-- timeline -->

## 2.8 {#v208}

Publiée en juillet 2014.

Consulter :

* [l&apos;article de blog](http://blog.isogeo.com/une-ergonomie-revisitee-une-valorisation-facilitee-isogeo-v2-8)
* le [mail envoyé aux utilisateurs](http://us4.campaign-archive1.com/?u=256352d96aabf0dec0ee32d84&id=6dc56a2972)

### APP

* abonnements newsletter,
* champ adresse postale pour l&apos;utilisateur,
* ergonomie générale harmonisée (listes déroulantes et gestion administration)
* les formats s&apos;affichent de nouveau,
* enlever une thématique INSPIRE,
* corrections mineures.
* fin de la vignette = fin coupe du monde

### Scan FME

* affecter automatiquement les nouvelles fiches à des catalogues,
* le scan FME évite les "pseudo-doublons" des bases Oracle (voir procédure de mise à jour),
* planification : désactivée avant refonte

<!-- /timeline -->
