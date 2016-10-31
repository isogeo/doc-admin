# Les catalogues <i class="fa fa-book"></i>

Isogeo permettant de disposer d'une connaissance exhaustive de son patrimoine de données, les catalogues sont le moyen d'organiser cette connaissance de façon indépendante de la structuration des données en base ou en fichiers.

> Astuce : accéder directement à l'interface d'administration des [catalogues](https://app.isogeo.com/admin/catalogs).

## Définition

A la différence des mots-clés qui sont des éléments descriptifs, les catalogues sont des vues logiques sur l'inventaire.

Voici quelques caractéristiques :
* les catalogues sont visibles uniquement par les utilisateurs d'APP, ils n'apparaissent pas dans les OpenCatalogs par exemple ;
* une fiche peut appartenir à un ou plusieurs catalogues (voir schéma ci-dessous) ;
* le catalogue est l'unité de partage, que ce soit [à un autre groupe de travail de la plateforme](/fr/features/publish/share_platform.html), [CSW](/fr/features/publish/csw_server.html) ou [OpenCatalog](/fr/features/publish/share_opencatalog.html) ;
* une fiche n'appartenant à aucun catalogue n'est visible que par les utilisateurs disposant d'un niveau d'accès `Administrateur` (voir [la matrice des droits](/fr/features/admin/users.html#droits-de-chaque-profil)) et ne peut être partagée.

![Concept de catalogue dans Isogeo](/images/adm_catalog_principles.png "Une donnée peut appartenir à un ou plusieurs catalogues")

## Gérer les catalogues

### Les différents catalogues

Dans la liste des catalogues, vous retrouvez :
* [`Mes catalogues`](https://app.isogeo.com/admin/catalogs/owned) : uniquement les catalogues créés à votre groupe de travail ;
* [`Autres`](https://app.isogeo.com/admin/catalogs/shared) : les catalogues partagés par d'autres groupes de travail ;
* `Tous` : l'ensemble des catalogues présents dans le groupe de travail.

### Créer, éditer un catalogue

![Editer un catalogue](fr/images/adm_catalog_new.png "Ajouter, éditer un catalogue dans Isogeo")

1.	Dans le menu `Administration` > `Catalogues` ;
2.	Cliquer sur le bouton [`+ Ajouter`](https://app.isogeo.com/admin/catalogs/new) ;
3.	Renseigner le nom,
4.	Indiquer si vous souhaitez que les prochaines données scannées soient automatiquement ajoutées à ce catalogue,
5.	Cliquer sur `Créer`, `Enregistrer` ou `Supprimer`.
