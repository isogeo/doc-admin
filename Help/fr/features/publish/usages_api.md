# Valoriser les données dans n'importe quelle interface logicielle grâce à l'API

La plateforme Isogeo repose sur la puissance de son API qui permet à chacun de développer des applicatifs adaptés à ses besoins spécifiques.

![API REST](/images/api_rest.png "Une API REST déployée dans le cloud Azure")

## Les principes

Respectant le standard REST,  l'API publique est dédiée à la lecture et ouverte à quiconque souhaite développer et possède un accès à Isogeo. Elle permet d'exécuter des requêtes et d'en retranscrire les résultats dans une interface originale. L'idée est d'élargir les horizons des usages des catalogues de données constitués dans Isogeo.

Une application tierce peut être développée par Isogeo, un intégrateur, un partenaire ou un développeur.

![Cartographie de l'offre usages](/images/schema_CartoOffre.png "Une plateforme orientée usages")

<iframe width="640" height="360" src="https://www.youtube.com/embed/sOv9LeMycbo" frameborder="0" allowfullscreen></iframe>

## Exemples d'applications basées sur l'API

### Les plugins pour les SIG

L'un des usages les plus fréquemment demandés est de pouvoir consulter les catalogues directement dans les logiciels SIG. Aujourd'hui, des plugins ont été développés pour ArcMap, ArcCatalog et ArcGIS WebAppBuilder for Developer. D'autres sont en cours et attendent une contribution financière pour être réalisés. Ces extensions sont librement téléchargeables et utilisables.

> Astuce : consulter [le site dédié aux applications tierces](http://www.isogeo.com/applications/).

![Captures plugins Esri](http://www.isogeo.com/_medias/images/applications/portfolio/2widget-plugin.png "Captures d'écran du plugin pour ArcMap et du widget pour ArcGIS WebAppBuilder")

### Les portails de données ouvertes

Si l'OpenCatalog permet de couvrir l'essentiel des besoins de consultation, il est également possible de développer des portails d'accès aux données. Interne ou public, l’objectif n’est pas de mettre un simple catalogue en consultation mais d’implémenter des fonctionnalités dédiées à l’animation autour du patrimoine de données :

* commentaires et notation sur les données ;
* suivi des modifications par abonnement mail personnalisable par chaque utilisateur ;
* interopérabilité avec les annuaires internes (Active Directory, LDAP...) ;
* flux dynamiques autour de la vie du patrimoine ;
* interface de recherche cartographique ;
* des fonctionnalités qu'il tient à chacun de contribuer à développer ! :)

> Astuce : [consulter et se créer un compte sur le portail de démonstration](http://demo.isogeo.net/) (attention, il sert parfois à des tests et peut être indisponible ou personnalisé pour une démo en particulier).


### L'extracteur de données


#### Webinaire de présentation


http://blog.isogeo.com/2016/03/16/retour-sur-le-webinaire-automatiser-lextraction-de-vos-donnees-sig-avec-lapi-isogeo/



## Lancez vous !

Si vous avez des notions de développement, l'API respecte le protocole REST pour les requêtes et oAuth2 pour l'authentification des applications tierces.

| ![nodeJS](/images/logos/nodejs.png "Inventaire automatique") | ![Python](/images/logos/python.png "Interopérabilité des formats") | ![PHP](/images/logos/php.png "Mises à jour automatiques") |
| :--: | :--: | :--: |




