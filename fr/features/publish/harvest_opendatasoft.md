# Publier sur Opendatasoft

## Description

Opendatasoft est une entreprise éditrice de la plateforme logicielle éponyme dédiée aux données ouvertes et fonctionnant également sur le mode _SaaS_.

!["Logo"](/assets/ods/logo_ods.png)

## Prérequis {#requirements}

### Isogeo

- disposer d'un groupe de travail Isogeo avec le module CSW activé ;
- disposer de métadonnées de données **vecteurs et rasters** partagées à l'application CSW (les données tabulaires non-géographiques ne sont pas prises en charge par le CSW) ;
- disposer de services WFS accessibles publiquement, associés aux métadonnées vecteurs et partagés à l'application CSW pour automatiser la récupération des données par Opendatasoft (compatibilité validée pour les services WFS ArcGIS Server et Geoserver).

### Opendatasoft
- disposer d'une organisation Opendatasoft avec :
  - le [moissonneur CSW](https://help.opendatasoft.com/platform/fr/publishing_data/02_harvesting_a_catalog/harvesters/csw.html) activé
  - les métadonnées [DCAT](https://help.opendatasoft.com/platform/fr/publishing_data/06_configuring_metadata/interoperability_metadata.html#dcat-metadata) et [INSPIRE](https://help.Opendatasoft.com/platform/fr/publishing_data/06_configuring_metadata/interoperability_metadata.html#inspire)
  - la configuration dans le back-office :
    - des [licences](https://help.opendatasoft.com/platform/fr/configuring_domain/02_managing_legal_information/legals.html#licenses) pour le mapping avec les licences Isogeo
    - des [thèmes](https://help.opendatasoft.com/platform/fr/customizing_look_and_feel/05_defining_dataset_themes/dataset_themes.html) pour le mapping avec les thématiques Inspire

## Correspondance des champs 

Les champs suivants sont moissonnés par Opendatasoft :

| Champ Isogeo                     | Champ Opendatasoft | Remarques                                                                                                        |
|----------------------------------|--------------------|------------------------------------------------------------------------------------------------------------------|
| Titre                            | Titre              |                                                                                                                  |
| Résumé                           | Description        | sans interprétation du markdown                                                                                  |
| Mots-clés                        | Mots-clés          |                                                                                                                  |
| Thèmes Inspire                   | Thèmes             | récupérés en indiquant le thésaurus GEMET - INSPIRE themes, version 1.0 et la correspondance avec les thèmes ODS |
| Licence                          | Licence            | récupérée en indiquant la correspondance avec les licences ODS                                                   |
| Contact                          | Contacts (INSPIRE) | rôle et email récupérés                                                                                          |
| Propriétaire                     | Producteur         |                                                                                                                  |
| Emprise                          | Latitudes/longitudes | Longitude Ouest, Longitude Est, Latitude Sud, Latitude Nord du rectangle englobant (boundingbox) en WGS 84     |

> NB : les thématiques du groupe de travail ne sont pas remontées par le moissonneur CSW car elles ne correspondent pas à un thésaurus officiel de la norme ISO.

## Processus global {#step-by-step}

Voici les grandes étapes :

1. Créer un partage Isogeo à l'application CSW et récupérer l'URL du service CSW ;
2. Ajouter un [moissonneur CSW](https://docs.opendatasoft.com/fr/sourcing_and_processing_data/harvesters/csw.html) dans le _Back Office_ Opendatasoft

### Créer un service CSW dans Isogeo {#csw-srv}

Cette étape est le fonctionnement décrit dans la section : [Valoriser : diffuser en CSW](/features/publish/csw_server.html).

Si plusieurs catalogues sont partagés, il est recommandé d'appliquer la manipulation décrite permettant d'obtenir une seule URL pour tous les catalogues : [un service, des catalogues](https://help.isogeo.com/fr/features/publish/csw_server.html#un-service-des-catalogues).

Au terme de cette étape, vous disposez d'une URL (dite GetCapabilities) du service CSW du type : https://services.api.isogeo.com/ows/s/8d491301f61249139918e3710cd39eb7/c/355b870869204c39b0fb9deb44469f2a/wak8OBU2hQX6F6rtIe3fWiRCvzFH0?service=CSW&version=2.0.2&request=GetCapabilities

### Moissonner le service CSW dans Opendatasoft {#harvester}

La [documentation officielle d'Opendatasoft fait office de référence](https://docs.opendatasoft.com/fr/sourcing_and_processing_data/harvesting_a_catalog.html), ce paragraphe n'étant destiné qu'à accompagner au mieux l'administrateur Isogeo. 

1. Dans le `Back Office`, se rendre dans la gestion des moissonneurs (une url du type : <https://monorganisation.opendatasoft.com/backoffice/catalog/harvesters/)> et cliquer sur le bouton `+ Ajouter un moissonneur`.
2. Créer un moissonneur en sélectionnant le type `CSW` :
![Créer un moissonneur](/assets/ods/csw2ods_harvester_create.png "Opendatasoft - Création du moissonneur CSW")
3. Dans le formulaire, nommer le moissonneur puis coller l'URL du service CSW généré à l'étape précédente ;
4. Indiquer les noms exacts des licences Isogeo et leurs correspondances avec les licences ODS (`Licence ouverte ETALAB 2.0` et `ODbL 1.0 - Open Database Licence` en général) ;
5. Faire de même avec les thèmes Inspire en ajoutant le thésaurus `GEMET - INSPIRE themes, version 1.0` ;
![Correspondance entre les thèmes Inspire et les thèmes ODS](/assets/ods/licenses_and_inspire_themes_mapping.png)
6. Cliquer sur `Aperçu`puis sur `Enregistrer`.

### Optionnellement {#options}

Il est possible de :

* supprimer les jeux de données du Portail ODS automatiquement si le jeu de donnée source est supprimé du moissonnage ;
* restreindre la visibilité des jeux de données nouvellement moissonnés ;
* surcharger les métadonnées pour assurer une traçabilité :
![](/assets/ods/csw2ods_harvester_option_overload.png "Opendatasoft - Surcharger les métadonnées")
* planifier le moissonnage : [voir la documentation Opendatasoft](https://docs.opendatasoft.com/fr/sourcing_and_processing_data/harvesting_a_catalog.html#scheduling) en paramétrant les traitements récurrents.