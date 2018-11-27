# Publier sur OpenDataSoft

## Description

OpenDataSoft est une entreprise éditrice de la plateforme logicielle éponyme dédiée aux données ouvertes et fonctionnant également sur le mode _SaaS_.

## Prérequis {#requirements}

- disposer d&apos;un groupe de travail Isogeo avec le module CSW activé
- disposer d&apos;une organisation OpenDataSoft avec :
  - le [moissonneur CSW](https://help.opendatasoft.com/platform/fr/publishing_data/02_harvesting_a_catalog/harvesters/csw.html) activé
  - les métadonnées [DCAT](https://help.opendatasoft.com/platform/fr/publishing_data/06_configuring_metadata/interoperability_metadata.html#dcat-metadata) et [INSPIRE](https://help.opendatasoft.com/platform/fr/publishing_data/06_configuring_metadata/interoperability_metadata.html#inspire)
- disposer de métadonnées de données avec des services WFS associés et accessibles publiquement

## Processus global {#step-by-step}

Voici les grandes étapes :

1. Créer un partage Isogeo à l&apos;applicatikon CSW et récupérer l&apos;URL du service CSW ;
2. Ajouter un [moissonneur CSW](https://docs.opendatasoft.com/fr/sourcing_and_processing_data/harvesters/csw.html) dans le _Back Office_ OpenDataSoft

### Créer un service CSW dans Isogeo {#csw-srv}

Cette étape est le fonctionnement décrit dans la section : [Valoriser : diffuser en CSW](/features/publish/csw_server.html).

Si plusieurs catalogues sont partagés, il est recommandé d&apos;appliquer la manipulation décrite permettant d&apos;obtenir une seule URL pour tous les catalogues : [un service, des catalogues](http://help.isogeo.com/fr/features/publish/csw_server.html#un-service-des-catalogues).

Au terme de cette étape, vous disposez d&apos;une URL (dite GetCapabilities) du service CSW du type : <https://services.api.isogeo.com/ows/s/22ececf244e14be293a7a1e58619289e/8WuwB5H9ysC-XztiBS93s-DmDNdW0?service=CSW&version=2.0.2&request=GetCapabilities.>

### Moissonner le service CSW dans OpenDataSoft {#harvester}

La [documentation officielle d&apos;OpenDataSoft fait référence](https://docs.opendatasoft.com/fr/sourcing_and_processing_data/harvesting_a_catalog.html), ce paragraphe n&apos;étant destiné qu&apos;à accompagner au mieux l&apos;administrateur Isogeo. 

1. Dans le `Back Office`, se rendre dans la gestion des moissonneurs (une url du type : <https://monorganisation.opendatasoft.com/backoffice/catalog/harvesters/)> et cliquer sur le bouton `+ Ajouter un moissonneur`.
2. Créer un moissonneur en sélectionnant le type `CSW` :

    ![](/assets/ods/csw2ods_harvester_create.png "OpenDataSoft - Création du moissonneur CSW")

3. Dans le formulaire, coller l&apos;URL du service CSW généré à l&apos;étape précédente et cliquer sur `Aperçu`puis sur `Enregistrer`.

### Optionnellement {#options}

Il est possible de :

- planifier le moissonnage : [voir la documentation OpenDataSoft](https://docs.opendatasoft.com/fr/sourcing_and_processing_data/harvesting_a_catalog.html#scheduling).
- surcharger les métadonnées pour assurer une traçabilité :

![](/assets/ods/csw2ods_harvester_option_overload.png "OpenDataSoft - Surcharger les métadonnées")
