# Fiches manuelles

Au-delà des formats de données pour lesquels le scan automatique prend en charge une partie de la documentation et le suivi des mises à jour, vous pouvez à tout moment créer une fiche manuellement, dite aussi "orpheline" puisqu'elle n'est pas liée à la donnée source.

Vous pouvez choisir parmi les différents modèles disponibles :

* Données (vecteur) ;
* Données (raster) ;
* Ensemble de données ;
* Ressource ;
* Service.

Pour cela il suffit de cliquer sur le bouton `+ Créer`, situé en haut à gauche de l'inventaire (sauf si l'administrateur l'a désactivé dans [les paramètres du groupe de travail](../admin/group.html)).

Il y a alors deux 2 façons de procéder :

* créer une fiche vierge en indiquant seulement son titre ;
* créer une fiche à partir de l'import d'un fichier XML standardisé ISO 19139.

Cette fonctionnalité est utile dans différents cas de figure :
* si votre groupe de travail ne dispose pas du scan ;
* si vous souhaitez créer des fiches de métadonnées dont les formats ne sont pas pris en compte par le scan (carte PDF, fichier statistique Excel, etc.), par exemple pour créer une cartothèque ;
* pour documenter un service web standardisé.

> Astuce : l'administrateur d'un groupe de travail peut désactiver cette possibilité via les [paramètres](../admin/group.html) dans le menu `Administration`.

## Documenter un service

> Astuce : pour retrouver toutes les fiches de type service de votre inventaire, [cliquer-ici](https://app.isogeo.com/inventory/search?p=1&ob=_created&od=des&q=type%3Aservice).

### Pourquoi

Dans le cadre de la directive INSPIRE, il s'agit de documenter les services web mis en place pour donner accès aux données. Cela passe par les fiches de métadonnées de service.

Ces fiches sont à créer en supplément des ressources associées aux données. Il s'agit d'une différence de granularité :

* la métadonnée de service documente l'infrastructure technique mise en place et permet à des outils tiers d'accéder à ses caractéristiques et à l'ensemble des données concernées ;

* la ressource associée à une donnée doit la concerner spécifiquement et pointer sur l'objet correspondant dans le service (par exemple, le paramètre *layers* dans un WMS ou encore *featureType* dans un WFS).

### Comment

Dans l'inventaire :

1. Cliquer sur le bouton `Créer` en haut à gauche ;
2. Choisir `d'une fiche relative à un service` ;
3. Dans le champ `Titre`renseigner le type de service et le territoire concerné. Par exemple : *Service de consultation des données du Département de Belfort* ;
4. Dans le champ `Emplacement`, indiquer l'URL du GetCapabilities (*?request=GetCapabilities*)
5. Dans l'onglet `Avancé`, indiquer le format et la version la plus élevée que votre service peut fournir.

## Documenter une ressource

> Astuce : pour retrouver toutes les fiches de type ressource de votre inventaire, [cliquer-ici](https://app.isogeo.com/inventory/search?p=1&ob=_created&od=des&q=type%3Aresource).

### Pourquoi

Dans Isogeo, l'objectif est de ne documenter qu'une fois pour pouvoir valoriser X fois et cela passe par les ressources associées. Une ressource peut être une carte, une cartothèque, un serveur cartographique, un service de visualisation externe, un serveur de téléchargement, etc.

L'objectif de ces fiches ressources est de centraliser les ressources associées et de pouvoir les associer à différentes fiches. Par exemple, une carte exportée au format PDF va concerner plusieurs fiches de données. On la documente alors qu'une seule fois pour la lier ensuite aux fiches des données concernées.

### Comment

1. Cliquer sur le bouton `Créer` en haut à gauche ;
2. Choisir `d'une fiche relative à une ressource `
3. Dans le champ `Titre`renseigner le type de ressource  et le territoire concerné. Par exemple : *Serveur de visualisation des données du Département de Belfort* ;
4. Dans l'onglet `Ressources`, indiquer les différents liens pouvant être associés.

[Voir le chapitre Valoriser](../publish/index.html).

