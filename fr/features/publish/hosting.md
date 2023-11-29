# Lier les données à télécharger

Toujours en vue d'enrichir l'expérience des utilisateurs de vos catalogues, par exemple pour répondre à des besoins métiers ou dans le cadre d'une démarche d'ouverture des données (Open Data), il est possible de permettre le téléchargement de données ou de documents directement depuis la fiche de métadonnées.

Plusieurs options s'offrent à vous :

* héberger directement la donnée sur Isogeo ;
* indiquer un lien direct vers la donnée hébergée par ailleurs ;
* indiquer un lien vers un service de téléchargement.

## Héberger des données ou documents sur Isogeo {#upload}

Vous pouvez héberger des données brutes ou des documents sur Isogeo, via l’interface de saisie des métadonnées.

Les étapes à suivre :

1. Dans l’onglet « Ressources », cliquer sur `Ajouter un lien` ;
2. Sélectionner « Donnée brute » et l’onglet `Téléverser` ;
3. Sélectionner le fichier ou faites le glisser depuis votre ordinateur.

![Formulaire de téléversement](/assets/inv_edit_one_resource_download_upload.png "Déposer un fichier sur Isogeo")

Avec le lien fort donnée / métadonnée du scan automatique et la mise à disposition des données brutes, la boucle de la donnée géographique est bouclée grâce à Isogeo !

Remarques :

* Le stockage est une ressource et dépend de votre contrat. Par défaut, Isogeo vous offre 100 Mo
* Pour des raisons de bande passante, il n’est possible de téléverser que des fichiers inférieurs à 10 Mo
* Pour des raisons de sécurité, les scripts et exécutables ne sont pas autorisés.

> En mode On-premises, les données sont stockées directement dans le système de fichier de l'API selon l'arborescence et la nomenclature suivante : Api.V10.Web/Storage/workgroup_{uid}/ressource_{uid}/data/{uid}.bin

## Lier vers des données hébergées par ailleurs {#external_data}

Si vous disposez d'un hébergement en ligne par ailleurs, vous pouvez évidemment indiquer les liens vers les données et documents concernées.

![Lien externe](/assets/inv_edit_one_resource_download_link.png "Lier vers un hébergement externe")
