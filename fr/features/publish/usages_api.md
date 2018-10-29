# Valoriser les données dans n&apos;importe quelle interface logicielle grâce à l&apos;API

La plateforme Isogeo repose sur la puissance de son API qui permet de développer des applicatifs adaptés à tous les besoins, en utilisant les métadonnées comme une couche d&apos;abstraction intelligente pour brancher des services sur le patrimoine de données.

![Cartographie de l&apos;offre usages](/assets/schema_CartoOffre.png "Une plateforme orientée usages")

## Les principes

Respectant l&apos;architecture [REST](https://fr.wikipedia.org/wiki/Representational_State_Transfer),  l&apos;API publique est dédiée à la lecture des catalogues et ouverte à quiconque souhaite développer et possède un accès à Isogeo. Elle permet d&apos;exécuter des requêtes et d&apos;en retranscrire les résultats dans une interface originale. L&apos;idée est d&apos;élargir les horizons des usages des catalogues de données constitués dans Isogeo.

Les premières applications à utiliser l&apos;API Isogeo ne sont autres que APP et OpenCatalog !

Une application tierce peut être développée par Isogeo, un intégrateur, un partenaire ou un développeur indépendant.

____

## Exemples d&apos;applications basées sur l&apos;API

Il est possible d&apos;utiliser l&apos;API dans autant d&apos;applications qu&apos;il y a de développeurs pour les faire. Voici quelques exemples d&apos;applications développées aujourd&apos;hui et disponibles en tant qu&apos;extensions de la plateforme.

![Une API pour différents usages](/assets/api_usages.png "Une API pour des usages")

### Les plugins pour les SIG

[![Moteur de recherche Isogeo dans SIG](/assets/api_plugins_header.png "Chercher et afficher des données via le moteur de recherche Isogeo directement intégré aux logiciels SIG")](http://www.isogeo.com/applications)

L&apos;un des usages les plus demandés est de pouvoir consulter les catalogues directement dans les logiciels SIG. Aujourd&apos;hui, des plugins ont été développés pour :
* ArcMap(10.2/10.3/10.4),
* ArcCatalog,
* ArcGIS WebAppBuilder for Developer,
* [QGIS 2.x LTR](https://isogeo.gitbooks.io/app-plugin-qgis/content/fr/).

D&apos;autres sont en cours et attendent une contribution financière pour être développés ou finalisés :
* AutoCAD,
* AutoCAD Map
* WordPress,
* Drupal,
* etc.

> Astuce : consulter [le site dédié aux extensions](http://www.isogeo.com/applications/).

___

#### Plugin pour QGIS

* Consulter [l&apos;aide en ligne dédiée au plugin QGIS](https://isogeo.gitbooks.io/app-plugin-qgis/content/fr/) ;
* Consulter [le GIF de démonstration de l&apos;installation et du fonctionnement basique du plugin.](https://github.com/isogeo/isogeo-plugin-qgis/blob/master/img/demo_fr.gif?raw=true)

![Capture plugin Isogeo for QGIS](/assets/pluginQGIS_ui_tabs_main_search_empty_fr.png "Capture d&apos;écran de l&apos;interface principale du plugin Isogeo for QGIS")

#### Captures d&apos;écrans du plugin pour ArcMap et du widget pour ArcGIS WebAppBuilder :

![Captures plugins Esri](http://www.isogeo.com/_medias/assets/applications/portfolio/2widget-plugin.png "Captures d&apos;écran du plugin pour ArcMap et du widget pour ArcGIS WebAppBuilder")

___

### Les portails de données

Si l&apos;OpenCatalog permet de couvrir l&apos;essentiel des besoins de consultation, il est également possible de développer des portails d&apos;accès aux données. Interne ou public, l’objectif n’est pas de mettre un simple catalogue en consultation mais d’implémenter des fonctionnalités dédiées à l’animation autour du patrimoine de données :

* suivi des modifications sur les données par abonnement mail personnalisable par chaque utilisateur (listes de favoris) ;
* commentaires et notation sur les données ;
* interopérabilité avec les annuaires internes (Active Directory, LDAP...) ;
* flux dynamiques autour de la vie du patrimoine ;
* interface cartographique de recherche et de consultation  ;
* interface d&apos;administration de type CMS (modèle WordPress) pour les configurations avancées et la gestion de contenus éditoriaux ;
* interfaces *responsive design* ;
* des fonctionnalités qu&apos;il tient à chacun de contribuer à développer ! :)

> Astuce : Consulter [la documentation du portail](https://isogeo.gitbooks.io/app-portal-pixup-admin/content/).

#### Générique ou spécifique

Selon votre projet et vos besoins, il est possible d&apos;envisager la mise en place d&apos;un portail au socle générique ou bien d&apos;un développement spécifique complet.

| [![portail générique](/assets/portal_demo_carto.png  "Portail de données générique de PixUp")](http://demo.isogeo.net) | [![geomayenne](/assets/portal_geomayenne_carto.png "Portail de données geomayenne d&apos;arx iT")](https://www.geomayenne.fr) |
| :--: | :--: |
| [Portail générique<br \>Isogeo & PixUp](http://demo.isogeo.net) | [geomayenne<br \>Isogeo & arx iT](https://www.geomayenne.fr) |

> Astuce : [consulter et se créer un compte sur le portail générique de démonstration](http://demo.isogeo.net/) (attention, il sert parfois à des tests et peut être indisponible ou personnalisé pour une démo en particulier).

#### Réalisations intéressantes supplémentaires

Voici une sélection de portails utilisant l&apos;API Isogeo pour apporter des fonctionnalités d&apos;interaction via le catalogue :
* [Syndicat Mixte d&apos;Aménagement de la Vallée de la Durance (SMAVD)](http://geocatalogue.smavd.org/) ;
* [Lorient Agglomération](http://geocatalogue.lorient-agglo.bzh/) ;
* [Département d&apos;Indre-et-Loire (Touraine - 37)](http://data.touraine.fr) ;
* [Créteil](http://geodata.ville-creteil.fr/)
* [Plaine Centrale](http://geodata.agglo-plainecentrale94.fr/) ;

D&apos;autres existent mais sont réservés à un accès en intranet (intranet du SMAVD, Grand Port Maritime de Nantes Saint-Nazaire, Département de la Moselle...).

____

### L&apos;extracteur de données

Avec Isogeo, vous valorisez déjà votre ETL FME en capitalisant sur son intéropérabilité via le Scan. L&apos;extracteur permet d&apos;aller plus loin en proposant de s&apos;appuyer sur l&apos;API Isogeo pour automatiser et optimiser la mise à disposition des données auprès de différents destinataires :

* extraction déclenchée automatiquement à une périodicité personnalisable par jeu de données ;
* transformation en différents formats et projections en sortie (choix personnalisble) ;
* découpage des données selon des emprises géographiques définies et personnalisables par l&apos;administrateur ;

<iframe src="//fr.slideshare.net/slideshow/embed_code/key/4Gc2nND2iDRxWY" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>

Consulter le [résumé du webinaire consacré à cette extension de février 2016](http://blog.isogeo.com/2016/03/16/retour-sur-le-webinaire-automatiser-lextraction-de-vos-donnees-sig-avec-lapi-isogeo/).

___

### L&apos;export vers les formats bureautiques

Pour les besoins d&apos;une consultation hors-ligne, une sauvegarde ou une impression dans un modèle graphique propre à un organisme, un petit programme a été développé permettant d&apos;exporter par lot les métadonnées dans des formats bureautiques :

* Microsoft Word (.docx) à partir d&apos;un ou plusieurs modèles personnalisables par l&apos;utilisateur ;
* Microsoft Excel (.xlsx) ;
* XML ISO 19139.

Au-delà de ces formats existants, il est possible d&apos;envisager d&apos;autres formats : CSV, base locale, etc.

> Astuce : Consulter [la documentation de l&apos;application Isogeo to Office](https://isogeo.gitbooks.io/app-isogeo2office/content/fr/).

Capture d&apos;écran de l&apos;interface d&apos;isogeo2office (cliquer sur l&apos;image pour voir le GIF de démonstration) :

[![isogeo2office - démo](/assets/isogeo2office_UI_French_English.png "Interface d&apos;isogeo2office")](https://bytebucket.org/isogeo/isogeo-2-office/raw/5e6b1e771fba92a207b7dedf204cb0a9886c7610/img/demo_fr.gif)

____

## Lancez vous !

### Notions

Si vous avez des compétences en développement, voici les notions techniques utiles pour démarrer :
* l&apos;API respecte le protocole REST pour les requêtes ;
* oAuth2 pour l&apos;authentification des applications tierces ;
* l&apos;accès aux fichiers hébergés via les métadonnées (données brutes, fiches XML...) est soumis à la mise en place d&apos;un proxy.

![API REST](/assets/api_rest.png "Une API REST déployée dans le cloud Azure")

### Présentation technique de l&apos;API

En janvier 2016, un webinaire a été consacré à une présentation de l&apos;architecture de l&apos;API et des bases de développement. Consulter le résumé sur notre blog

<iframe width="640" height="360" src="https://www.youtube.com/embed/sOv9LeMycbo" frameborder="0" allowfullscreen></iframe>

### Documentation et ressources

Une documentation technique est [disponible en ligne](https://docs.google.com/document/d/11dayY1FH1NETn6mn9Pt2y3n8ywVUD0DoKbCi9ct9ZRo/edit?usp=sharing).

Une [liste de diffusion](http://eepurl.com/bfJYu9) pour informer et prévenir des évolutions, à laquelle il est fortement recommandé de s&apos;inscrire.

Des exemples de code dans différents langages sont librement disponibles en ligne, issus d&apos;Isogeo ou de ses partenaires :

| [![](/assets/logos/nodejs.png)](https://bitbucket.org/snippets/isogeo/L8rKz) | [![](/assets/logos/python.png)](https://pypi.python.org/pypi/isogeo-pysdk) | [![](/assets/logos/php.png)](https://github.com/pixup/isogeo-api-PHP-samples) |
| :--: | :--: | :--: |
| [JavaScript<br \>(nodeJS)](https://bitbucket.org/snippets/isogeo/L8rKz) | [Python](https://pypi.python.org/pypi/isogeo-pysdk) | [PHP](https://github.com/pixup/isogeo-api-PHP-samples) |
