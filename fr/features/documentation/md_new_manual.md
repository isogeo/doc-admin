# Fiches manuelles

Au-delà des formats de données pour lesquels le scan automatique prend en charge une partie de la documentation et le suivi des mises à jour, vous pouvez à tout moment créer une fiche manuellement, dite aussi "orpheline" puisqu&apos;elle n&apos;est pas liée à la donnée source.

Vous pouvez choisir parmi les différents modèles disponibles :

* Données (vecteur) ;
* Données (raster) ;
* Données (tabulaire non géographique) ;
* Ensemble de données ;
* Ressource ;
* Service.

Pour cela il suffit de cliquer sur le bouton `+ Créer`, situé en haut à gauche de l&apos;inventaire (sauf si l&apos;administrateur l&apos;a désactivé dans [les paramètres du groupe de travail](../admin/group.html)).

Il y a alors deux 2 façons de procéder :

* créer une fiche vierge en indiquant seulement son titre ;
* créer une fiche à partir de l&apos;import d&apos;un fichier XML standardisé ISO 19139.

Cette fonctionnalité est utile dans différents cas de figure :

* si votre groupe de travail ne dispose pas du scan ;
* si vous souhaitez créer des fiches de métadonnées dont les formats ne sont pas pris en compte par le scan (carte PDF, fichier statistique Excel, etc.), par exemple pour créer une cartothèque ;
* pour documenter un service web standardisé.

> Astuce : l&apos;administrateur d&apos;un groupe de travail peut désactiver cette possibilité via les [paramètres](../admin/group.html) dans le menu `Administration`.

## Documenter un service

La documentation des services géographiques est automatisée et dynamique : [consulter la section dédiée](../inventory/md_services/srv_howto.html).

> Astuce : pour retrouver toutes les fiches de type service de votre inventaire, [cliquer ici](https://app.isogeo.com/inventory/search?p=1&ob=_created&od=des&q=type%3Aservice).

## Documenter une ressource {#manual_resource}

> Astuce : pour retrouver toutes les fiches de type ressource de votre inventaire, [cliquer ici](https://app.isogeo.com/inventory/search?p=1&ob=_created&od=des&q=type%3Aresource).

### Pourquoi {#manual_resource_why}

Dans Isogeo, l&apos;objectif est de ne documenter qu&apos;une fois pour pouvoir valoriser X fois et cela passe par les ressources associées. Une ressource peut être une carte, une cartothèque, un serveur cartographique, un service de visualisation externe, un serveur de téléchargement, etc.

L&apos;objectif de ces fiches ressources est de centraliser les ressources associées et de pouvoir les associer à différentes fiches. Par exemple, une carte exportée au format PDF va concerner plusieurs fiches de données. On la documente alors qu&apos;une seule fois pour la lier ensuite aux fiches des données concernées.

### Comment {#manual_resource_how}

1. Cliquer sur le bouton `Créer` en haut à gauche ;
2. Choisir `d&apos;une fiche relative à une ressource`
3. Dans le champ `Titre`renseigner le type de ressource  et le territoire concerné. Par exemple : *Serveur de visualisation des données du Département de Belfort* ;
4. Dans l&apos;onglet `Ressources`, indiquer les différents liens pouvant être associés.

[Voir le chapitre Valoriser](../publish/index.html).
