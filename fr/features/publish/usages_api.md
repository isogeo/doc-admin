# Valoriser les données dans n&apos;importe quelle interface logicielle grâce à l&apos;API

La plateforme Isogeo repose sur la puissance de son API qui permet de développer des applicatifs adaptés à tous les besoins, en utilisant les métadonnées comme une couche d&apos;abstraction intelligente pour brancher des services sur le patrimoine de données.

## Les principes

Respectant l&apos;architecture [REST](https://fr.wikipedia.org/wiki/Representational_State_Transfer),  l&apos;API publique permet la recherche et la lecture des fiches de métadonnées dans n'importe quel langage ou outil mais nécessite une clé de connexion pour s'y authentifier. Sachez également qu'une application tierce ne peut être développée que par Isogeo ou un de ses partenaires, c'est pourquoi nous vous invitons à nous contacter en cas de besoin d'un développement spécifique.

____

## Exemples d&apos;applications basées sur l&apos;API

Il est possible d&apos;utiliser l&apos;API dans autant d&apos;applications qu&apos;il y a de développeurs pour les faire. Voici quelques exemples d&apos;applications développées aujourd&apos;hui et disponibles en tant qu&apos;extensions de la plateforme.

![Une API pour différents usages](/assets/api_usages.png "Une API, des usages")

### Les plugins pour les SIG {#plugins}

[![Moteur de recherche Isogeo dans SIG](/assets/api_plugins_header.png "Chercher et afficher des données via le moteur de recherche Isogeo directement intégré aux logiciels SIG")](https://www.isogeo.com/nos-produits/Plugins-Widgets)

L&apos;un des usages les plus demandés est de pouvoir consulter les catalogues directement dans les logiciels SIG. Aujourd&apos;hui, des plugins ont été développés pour :

* [ArcGIS Pro (2.5+)](https://help.isogeo.com/arcgispro/fr/index.html),
* [ArcGIS WebAppBuilder for Developer](https://help.isogeo.com/arcgis-webapp/fr/index.html),
* [QGIS 3.x LTR](https://help.isogeo.com/qgis/fr/index.html).

> Astuce : consulter [la page des plugins et widgets sur le site isogeo](https://www.isogeo.com/nos-produits/plugins/7).

____

### Les portails de données {#portals}

Si l&apos;OpenCatalog permet de couvrir l&apos;essentiel des besoins de consultation, il est également possible de développer des portails d&apos;accès aux données. Interne ou public, l’objectif n’est pas de mettre un simple catalogue en consultation mais d’implémenter des fonctionnalités dédiées à l’animation autour du patrimoine de données :

* suivi des modifications sur les données par abonnement mail personnalisable par chaque utilisateur (listes de favoris) ;
* commentaires et notation sur les données ;
* interopérabilité avec les annuaires internes (Active Directory, LDAP...) ;
* flux dynamiques autour de la vie du patrimoine ;
* interface cartographique de recherche et de consultation  ;
* interface d&apos;administration de type CMS (modèle WordPress) pour les configurations avancées et la gestion de contenus éditoriaux ;
* interfaces *responsive design* ;
* des fonctionnalités qu&apos;il tient à chacun de contribuer à développer ! :)

> Astuce : Consulter [la documentation du portail](https://help.isogeo.com/pixup-portal/fr/).

#### Générique ou spécifique

Selon votre projet et vos besoins, il est possible d&apos;envisager la mise en place d&apos;un portail au socle générique ou bien d&apos;un développement spécifique complet.

| [![portail générique](/assets/portal_demo_carto.png  "Portail de données générique de PixUp")](https://demo.isogeo.net) | [![geomayenne](/assets/portal_geomayenne_carto.png "Portail de données geomayenne d&apos;arx iT")](https://www.geomayenne.fr) |
| :--: | :--: |
| [Portail générique<br \>Isogeo & PixUp](https://demo.isogeo.net) | [geomayenne<br \>Isogeo & arx iT](https://www.geomayenne.fr) |

> Astuce : [consulter et se créer un compte sur le portail générique de démonstration](https://demo.isogeo.net/).

#### Réalisations intéressantes supplémentaires

Voici une sélection de portails utilisant l&apos;API Isogeo pour apporter des fonctionnalités d&apos;interaction via le catalogue :

* [Infrastructure de données géographiques du département des Hauts de Seine](https://geo.hauts-de-seine.fr/Site/)
* [Syndicat Mixte d&apos;Aménagement de la Vallée de la Durance (SMAVD)](http://geocatalogue.smavd.org/) ;
* [Lorient Agglomération](http://geocatalogue.lorient-agglo.bzh/) ;

D&apos;autres existent mais sont réservés à un accès en intranet (GRDF, ADP, CD 64 par exemple)
____

<!-- ### L&apos;extracteur de données {#extractor}

Avec Isogeo, vous valorisez déjà votre ETL FME en capitalisant sur son intéropérabilité via le Scan. L&apos;extracteur permet d&apos;aller plus loin en proposant de s&apos;appuyer sur l&apos;API Isogeo pour automatiser et optimiser la mise à disposition des données auprès de différents destinataires :

* extraction déclenchée automatiquement à une périodicité personnalisable par jeu de données ;
* transformation en différents formats et projections en sortie (choix personnalisble) ;
* découpage des données selon des emprises géographiques définies et personnalisables par l&apos;administrateur ;

<iframe src="//fr.slideshare.net/slideshow/embed_code/key/4Gc2nND2iDRxWY" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>

____ -->

<!--### L&apos;export vers les formats bureautiques {#isogeotooffice}

Pour les besoins d&apos;une consultation hors-ligne, une sauvegarde ou une impression dans un modèle graphique propre à un organisme, un petit programme a été développé permettant d&apos;exporter par lot les métadonnées dans des formats bureautiques :

* Microsoft Word (.docx) à partir d&apos;un ou plusieurs modèles personnalisables par l&apos;utilisateur ;
* Microsoft Excel (.xlsx) ;
* XML ISO 19139.

Au-delà de ces formats existants, il est possible d&apos;envisager d&apos;autres formats : CSV, base locale, etc.

> Astuce : Consulter [la documentation de l&apos;application Isogeo to Office](https://help.isogeo.com/isogeo2office/fr/index.html).

Capture d&apos;écran de l&apos;interface d&apos;isogeo2office :

!["Interface d&apos;isogeo2office"](/assets/apps/isogeo_to_office/isogeo2office_UI_French_English.png)

____

## Lancez vous {#dev}

> Astuce : Consulter [la documentation dee l&apos;API](https://help.isogeo.com/api/fr/index.html).

### Notions {#dev_skills}

Si vous avez des compétences en développement, voici les notions techniques utiles pour démarrer :

* l&apos;API respecte le protocole REST pour les requêtes ;
* oAuth2 pour l&apos;authentification des applications tierces ;
* l&apos;accès aux fichiers hébergés via les métadonnées (données brutes, fiches XML...) est soumis à la mise en place d&apos;un proxy.

![API REST](/assets/api_rest.png "Une API REST déployée dans le cloud Azure")

### Présentation technique de l&apos;API {#dev_intro}

En janvier 2016, un webinaire a été consacré à une présentation de l&apos;architecture de l&apos;API et des bases de développement. Consulter le résumé sur notre blog

<iframe width="640" height="360" src="https://www.youtube.com/embed/sOv9LeMycbo" frameborder="0" allowfullscreen></iframe>

### Documentation et ressources {#dev_doc}

Une [liste de diffusion](http://eepurl.com/bfJYu9) pour informer et prévenir des évolutions, à laquelle il est fortement recommandé de s&apos;inscrire.

Des exemples de code dans différents langages sont librement disponibles en ligne, issus d&apos;Isogeo ou de ses partenaires :

| [![](/assets/logos/nodejs.png)](https://bitbucket.org/snippets/isogeo/L8rKz) | [![](/assets/logos/python.png)](https://pypi.python.org/pypi/isogeo-pysdk) | [![](/assets/logos/php.png)](https://github.com/pixup/isogeo-api-PHP-samples) |
| :--: | :--: | :--: |
| [JavaScript<br \>(nodeJS)](https://bitbucket.org/snippets/isogeo/L8rKz) | [Python](https://pypi.python.org/pypi/isogeo-pysdk) | [PHP](https://github.com/pixup/isogeo-api-PHP-samples) | -->
