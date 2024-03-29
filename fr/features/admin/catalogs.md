# Les catalogues <i class="fa fa-book"></i>

Isogeo permettant de disposer d&apos;une connaissance exhaustive de son patrimoine de données, les catalogues sont le moyen d&apos;organiser cette connaissance de façon indépendante de la structuration des données en base ou en fichiers.

> Astuce : accéder directement à l&apos;interface d&apos;administration des [catalogues](https://app.isogeo.com/admin/catalogs).

## Définition

A la différence des mots-clés qui sont des éléments descriptifs, les catalogues sont des vues logiques sur l&apos;inventaire.

Voici quelques caractéristiques :
* les catalogues sont visibles uniquement par les utilisateurs d&apos;APP, ils n&apos;apparaissent pas dans les OpenCatalogs par exemple ;
* une fiche peut appartenir à un ou plusieurs catalogues (voir schéma ci-dessous) ;
* le catalogue est l&apos;unité de partage, que ce soit [à un autre groupe de travail de la plateforme](../publish/share_platform.html), [CSW](../publish/csw_server.html) ou [OpenCatalog](https://help.isogeo.com/opencatalog/fr/usage/generate.html) ;
* une fiche n&apos;appartenant à aucun catalogue n&apos;est visible que par les utilisateurs disposant d&apos;un niveau d&apos;accès `Administrateur` (voir [la matrice des droits](../admin/users.html#droits-de-chaque-profil)) et ne peut être partagée.

![Concept de catalogue dans Isogeo](/assets/adm_catalog_principles.png "Une donnée peut appartenir à un ou plusieurs catalogues")

## Gérer les catalogues

### Les différents catalogues

Dans la liste des catalogues, vous retrouvez :
* [`Mes catalogues`](https://app.isogeo.com/admin/catalogs/owned) : uniquement les catalogues créés à votre groupe de travail ;
* [`Autres`](https://app.isogeo.com/admin/catalogs/shared) : les catalogues partagés par d&apos;autres groupes de travail ;
* `Tous` : l&apos;ensemble des catalogues présents dans le groupe de travail.

### Créer, éditer un catalogue

![Editer un catalogue](/assets/adm_catalog_new.png "Ajouter, éditer un catalogue dans Isogeo")

1.	Dans le menu `Administration` > `Catalogues` ;
2.	Cliquer sur le bouton [`+ Ajouter`](https://app.isogeo.com/admin/catalogs/new) ;
3.	Renseigner le nom,
4.	Indiquer si vous souhaitez que les prochaines données scannées soient automatiquement ajoutées à ce catalogue,
5.	Cliquer sur `Créer`, `Enregistrer` ou `Supprimer`.
