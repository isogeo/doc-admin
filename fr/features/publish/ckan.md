# Publier vos données sur Données Québec

Une fois constitué, votre catalogue peut être publié sur [Données Québec](https://www.donneesquebec.ca) à l'aide du module CKAN Server développé par Isogeo.

## Prérequis {#prerequisites}

Afin que vos données puissent être remontées sur [Données Québec](https://www.donneesquebec.ca), il faut qu'elles remplissent plusieurs critères :

* être dans un catalogue partagé au serveur CKAN et à l'OpenCatalog ;
* contenir au moins un lien de téléchargement opérationnel. Les liens de téléchargement reconnus sont :
  * lien vers un service WFS capable de délivrer la donnée au format GeoJSON en WGS84 (4326) : voir [affecter un service WFS](/features/publish/webservices.html#associer-un-flux-wfs) ;
  * lien vers des fichiers de données vecteur (GeoJSON, Shapefile Zippé et Geopackage), raster (ECW, JPEG2000 et GeoTIFF) ou tabulaire (csv, xls et xlsx) : voir [affecter un lien de téléchargement](/features/publish/hosting.html).

## Liste de champs "métadonnées" complétés {#fields_list}

| Champs donneesquebec.ca    | Champs Isogeo                                                             |
|:--------------------------:|:-------------------------------------------------------------------------:|
| Titre                      | Titre                                                                     |
| Description                | Mélange de plusieurs champs                                               |
| Organisation               | Organisation Données Québec                                               |
| Étiquettes                 | Mots-clés                                                                 |
| Catégorie                  | Thématique dont la chaîne de caractère est identique aux catégories donneesquebec.ca)                                                               |
| Licence                    | Conditions                                                                |
| Responsable                | Nom du groupe de travail                                                  |
| Courriel                   | Courriel du contact associé à la fiche ayant pour rôle "Point de contact" |
| Fréquence de mise à jour   | Fréquence de mise à jour                                                  |
| Couverture géographique    | Non rempli (saisi par donneesquebec.ca)                                   |
| Couverture temporelle      | Période de validité                                                       |
| Source (URL)               | Lien de la fiche de l'OpenCatalog associé au même partage que le CKAN     |
| Diffusion modification     | Non rempli (saisi par donneesquebec.ca)                                   |
| Diffusion initiale         | Non rempli (saisi par donneesquebec.ca)                                   |
| Identifiant                | Non rempli (saisi par donneesquebec.ca)                                   |

### Description {#description_content}

La description est formatée de la manière suivante :

**Description :** Résumé

**Contexte de collecte :** Contexte de collecte de la donnée (s'il existe)  

**Méthode de collecte :** Méthode de collecte de la donnée (si elle existe)

**Attributs** : tableau contenant le nom du champ, le type et l'alias (ou le commentaire en base).

## Liste de champs complétés automatiquement dans les ressources de la fiche de Données Québec {#ressources_fields_list}

Lorsque vous éditer une ressource sur Données Québec, vous avez la possibilité d'ajouter des informations concernant cette dernière (cf. capture).

![Modification manuellement de la ressource](/assets/CKAN/modify_ressources.png)

Voici la liste de champs d'une ressource que le CKAN Isogeo renseigne automatiquement :

| Champs Données Québec                                                   | Choix complété automatiquement                                    |
|:-----------------------------------------------------------------------:|:-----------------------------------------------------------------:|
| Description des champs                                                  | Fournie dans la description des métadonnées                       |
| Séparateur virgule (CSV seulement)                                      | Oui                                                               |
| utf-8                                                                   | Oui                                                               |
| EPSG 4326 / EPSG 32198                                                  | Oui                                                               |
| Le fichier n'est pas compressé                                          | Oui pour les format zip ou shp ; Non pour tous les autres formats |
| Valeurs inconnues/non disponibles = vide                                | Oui                                                               |
| Format des nombres = décimal avec un « . », unités SI (mètres) ou $ CAD | Oui                                                               |
| Booléen (valeur simple)                                                 | Oui                                                               |

### Fréquence de mise à jour {#updateFrequency_field}

La fréquence de mise à jour est saisie selon cette correspondance :

|         Isogeo      |    Données Québec        |
|:-------------------:|:------------------------:|
| Toutes les heures   | Horaire                  |
| Tous les jours      | Quotidien                |
| Toutes les semaines | Hebdomadaire             |
| Tous les mois       | Mensuel                  |
| Tous les 3 mois     | Trimestriel              |
| Tous les 6 mois     | Semestriel               |
| Tous les ans        | Annuel                   |
| Tous les 2 ans      | Biennal                  |
| Tous les 3 ans      | Triennal                 |

Les valeurs "Temps réel", "Irrégulier" et "Archives sont à compléter manuellement car elles n'ont pas d'équivalent dans Isogeo.

## Liens des services, de téléchargement des données et des cartes interactives {#download_links}

Pour alimenter la fiche de Données Québec en ressources, plusieurs types de liens peuvent être remontés.

* liens de services :
  * lien vers un service de visualisation WMS (Web Map Service) ;
  * lien vers un service de visualisation EMS (Esri Map Service) ;
* liens de téléchargement :
  * lien vers un fichier téléversé dans Isogeo (hosted) ;
  * lien vers des fichiers de données vecteur (GeoJSON, Shapefile Zippé, Geopackage KML/GML, CSV), raster (GeoTIFF et JPEG2000) ou tabulaire (csv et xlsx) en tant que lien de type "Données" avec l’action *téléchargement* ;
* lien vers un service WFS
  * le nombre d’entités doit être inférieur au seuil du serveur carto (paramètre *MaxRecordCount=1000* par défaut pour ArcGIS Server, paramètre *nombre maximal d'objets* pour Geoserver etc..)
  * le système de coordonnées 4326 doit être disponible dans les capacités
  * le format d’export Geojson également
* lien de cartes interactives : liens vers une ressource de type "Données" ou "Liens" avec l'action *visualisation*.

## Génération et suivi des jeux de données valides {#generate}

1. Pour générer un nouveau lien de moissonnage, aller dans `Administration`, `Partages` puis cliquer sur `Nouveau` ;
2. Choisir ensuite l'application CKAN, un catalogue et un Nom pour le partage ;
3. Cliquer sur `Créer` ;
4. Un lien est automatiquement généré, c'est celui-ci qui permettra de lancer la synchronisation afin de publier vos données sur Données Québec.

Pour information, les fiches de données qui ne disposent pas de lien de téléchargement respectant les prérequis [ci-dessus](#download_links) sont considérées comme invalides.

## Liste d'erreurs de synchronisation possibles

Voici la liste des erreurs possibles lors du lancement de la synchronisation :

* `Unable to update dataset to CKAN` : Impossible de mettre à jour une donnée (généralement problème d'autorisation) dans le portail CKAN ;
* `Unable to compute CKAN dataset` : Impossible de récupérer les données présentes dans le portail CKAN ;
* `No defined target organization` : L'organisation CKAN renseignée n'est pas trouvée dans le portail CKAN ;
* `CKAN dataset is now orphean from Isogeo` : Une donnée est présente sur DOnnées Québec mais plus dans le catalogue Isogeo.
