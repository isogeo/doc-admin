# Valoriser les données dans n'importe quelle interface logicielle grâce à l'API

La plateforme Isogeo repose sur la puissance de son API qui permet de développer des applicatifs adaptés à tous les besoins, en utilisant les métadonnées comme une couche d'abstraction intelligente pour brancher des services sur le patrimoine de données.

![Cartographie de l'offre usages](/images/schema_CartoOffre.png "Une plateforme orientée usages")

## Les principes

Respectant l'architecture [REST](https://fr.wikipedia.org/wiki/Representational_State_Transfer),  l'API publique est dédiée à la lecture des catalogues et ouverte à quiconque souhaite développer et possède un accès à Isogeo. Elle permet d'exécuter des requêtes et d'en retranscrire les résultats dans une interface originale. L'idée est d'élargir les horizons des usages des catalogues de données constitués dans Isogeo.

Les premières applications à utiliser l'API Isogeo ne sont autres que APP et OpenCatalog !

Une application tierce peut être développée par Isogeo, un intégrateur, un partenaire ou un développeur indépendant.

____

## Exemples d'applications basées sur l'API

Il est possible d'utiliser l'API dans autant d'applications qu'il y a de développeurs pour les faire. Voici quelques exemples d'applications développées aujourd'hui et disponibles en tant qu'extensions de la plateforme.

![Une API pour différents usages](/images/api_usages.png "Une API pour des usages")

### Les plugins pour les SIG

L'un des usages les plus demandés est de pouvoir consulter les catalogues directement dans les logiciels SIG. Aujourd'hui, des plugins ont été développés pour ArcMap, ArcCatalog et ArcGIS WebAppBuilder for Developer. D'autres sont en cours et attendent une contribution financière pour être finalisés. Ces extensions sont librement téléchargeables et utilisables.

> Astuce : consulter [le site dédié aux extensions](http://www.isogeo.com/applications/).

![Captures plugins Esri](http://www.isogeo.com/_medias/images/applications/portfolio/2widget-plugin.png "Captures d'écran du plugin pour ArcMap et du widget pour ArcGIS WebAppBuilder")

### Les portails de données

Si l'OpenCatalog permet de couvrir l'essentiel des besoins de consultation, il est également possible de développer des portails d'accès aux données. Interne ou public, l’objectif n’est pas de mettre un simple catalogue en consultation mais d’implémenter des fonctionnalités dédiées à l’animation autour du patrimoine de données :

* suivi des modifications sur les données par abonnement mail personnalisable par chaque utilisateur (listes de favoris) ;
* commentaires et notation sur les données ;
* interopérabilité avec les annuaires internes (Active Directory, LDAP...) ;
* flux dynamiques autour de la vie du patrimoine ;
* interface cartographique de recherche et de consultation  ;
* interface d'administration de type CMS (modèle WordPress) pour les configurations avancées et la gestion de contenus éditoriaux ;
* interfaces *responsive design* ;
* des fonctionnalités qu'il tient à chacun de contribuer à développer ! :)

#### Générique ou spécifique

Selon votre projet et vos besoins, il ets possible d'envisager la mise en place d'un portail au socle générique ou bien d'un développement spécifique complet.

| [![portail générique](/images/portal_demo_carto.png  "Portail de données générique de PixUp")](http://demo.isogeo.net) | [![geomayenne](/images/portal_geomayenne_carto.png "Portail de données geomayenne d'arx iT")](https://www.geomayenne.fr) |
| :--: | :--: |
| [Portail générique<br \>Isogeo & PixUp](http://demo.isogeo.net) | [geomayenne<br \>Isogeo & arx iT](https://www.geomayenne.fr) |

> Astuce : [consulter et se créer un compte sur le portail générique de démonstration](http://demo.isogeo.net/) (attention, il sert parfois à des tests et peut être indisponible ou personnalisé pour une démo en particulier).

#### Réalisations intéressantes supplémentaires

Voici une sélection de portails utilisant l'API Isogeo pour apporter des fonctionnalités d'interaction via le catalogue :
* 2 portails motorisés par un seul groupe de travail Isogeo :  [Créteil](http://geodata.ville-creteil.fr/) et [Plaine Centrale](http://geodata.agglo-plainecentrale94.fr/) ;
* [Lorient Agglomération](http://geolorient.isogeo.com/) ;


### L'extracteur de données

Avec Isogeo, vous valorisez déjà votre ETL FME en capitalisant sur son intéropérabilité via le Scan. L'extracteur permet d'aller plus loin en proposant de s'appuyer sur l'API Isogeo pour automatiser et optimiser la mise à disposition des données auprès de différents destinataires :

* extraction déclenchée automatiquement à une périodicité personnalisable par jeu de données ;
* transformation en différents formats et projections en sortie (choix personnalisble) ;
* découpage des données selon des emprises géographiques définies et personnalisables par l'administrateur ;

Consulter le [résumé du webinaire consacré à cette extension de février 2016](http://blog.isogeo.com/2016/03/16/retour-sur-le-webinaire-automatiser-lextraction-de-vos-donnees-sig-avec-lapi-isogeo/).


### L'export vers les formats bureautiques

Pour les besoins d'une consultation hors-ligne, une sauvegarde ou une impression dans un modèle graphique propre à un organisme, un petit programme a été développé permettant d'exporter les métadonnées dans des formats bureautiques :
* Microsoft Word (.docx) à partir d'un ou plusieurs modèles personnalisables par l'utilisateur ;
* Microsoft Excel (.xls/x).

Au-delà de ces formats existants, il est possible d'envisager d'autres formats : XML 19139, CSV, base locale, etc.

![isogeo2office](/images/isogeo2office_all.png "Exporter vos métadonnées dans des formats bureautiques")

____

## Lancez vous !

### Notions

Si vous avez des compétences en développement, voici les notions techniques utiles pour démarrer :
* l'API respecte le protocole REST pour les requêtes ;
* oAuth2 pour l'authentification des applications tierces ;
* l'accès aux fichiers hébergés via les métadonnées (données brutes, fiches XML...) est soumis à la mise en place d'un proxy.

![API REST](/images/api_rest.png "Une API REST déployée dans le cloud Azure")

### Présentation technique de l'API

En janvier 2016, un webinaire a été consacré à une présentation de l'architecture de l'API et des bases de développement. Consulter le résumé sur notre blog

<iframe width="640" height="360" src="https://www.youtube.com/embed/sOv9LeMycbo" frameborder="0" allowfullscreen></iframe>

### Documentation et ressources

Une documentation technique est [disponible en ligne](https://docs.google.com/document/d/11dayY1FH1NETn6mn9Pt2y3n8ywVUD0DoKbCi9ct9ZRo/edit?usp=sharing).

Une [liste de diffusion](http://eepurl.com/bfJYu9) pour informer et prévenir des évolutions, à laquelle il est fortement recommandé de s'inscrire.

Des exemples de code dans différents langages sont librement disponibles en ligne, issus d'Isogeo ou de ses partenaires :

| [![nodeJS](/images/logos/nodejs.png "Snippet en JavaScript")](https://bitbucket.org/snippets/isogeo/L8rKz) | [![Python](/images/logos/python.png "Classe d'abastraction sur l'API en Python")](https://github.com/Guts/isogeo-api-py-minsdk) | [![PHP](/images/logos/php.png "Différents exemples en PHP")](https://github.com/pixup/isogeo-api-PHP-samples) |
| :--: | :--: | :--: |
| [JavaScript<br \>(nodeJS)](https://bitbucket.org/snippets/isogeo/L8rKz) | [Python](https://github.com/Guts/isogeo-api-py-minsdk) | [PHP](https://github.com/pixup/isogeo-api-PHP-samples) |




