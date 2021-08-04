# Les partages <i class="fa fa-share-alt"></i>

Une fois les données inventoriées, cataloguées, documentées ou en cours de documentation, il est alors temps de les diffuser. Que ce soit sur Isogeo, sur un catalogue web interne, sur un portail SIG public, sur un logiciel métier, un site web public, etc. : tout se passe par l&apos;interface d&apos;administration des partages.

> Astuce : accéder directement à l&apos;interface d&apos;administration des [partages](https://app.isogeo.com/admin/shares).

## Définition

Un partage est la configuration de la diffusion des catalogues de données. Il permet d&apos;ajuster ce qu&apos;un groupe de travail choisit de montrer (tel ou tel catalogue), comment (moissonnage, site web...) et à qui (destinataires).

### Relations logiques

* un groupe de travail peut créer autant de partages qu&apos;il le souhaite ;
* un partage peut être de 2 types différents :
	+ <button type="button" class="btn btn-lg btn-default  type-switch" data-type="group"><i class="fa fa-users"></i></button> intraplateforme : à d&apos;autre(s) groupe(s) de travail isogeo ;
	+ <button type="button" class="btn btn-lg btn-default type-switch" data-type="group"><i class="fa fa-cogs"></i></button> applicatif : à des applications tierces consommatrices de l&apos;API Isogeo.
* un partage peut se faire vers :
    + aucun, un ou plusieurs groupes de travail ;
    + aucune, une ou plusieurs applications.
* un partage peut contenir 0, un ou plusieurs catalogues ;
* un partage peut contenir des catalogues appartenant à d&apos;autres groupes de travail que celui qui crée le partage ;
* deux partages peuvent diffuser les mêmes catalogues à des applications différentes.

### Utiliser  les différents partages

Consulter les pages dédiées dans la rubrique **Valoriser** :
* le [partage à d&apos;autres groupes de travail Isogeo](../publish/share_platform.html) ;
* le [partage au serveur CSW](../publish/csw_server.html) ;
* le [partage en OpenCatalog](https://help.isogeo.com/opencatalog/fr/usage/generate.html) ;
* le [partage à une application tierce](../publish/usages_api.html).

## Administrer les partages

1. Dans le menu `Administration` > `Partages` ;
2. Cliquer sur le bouton [`+ Nouveau`](https://app.isogeo.com/admin/shares/new) ;
3. Choisir le type de partage ;
4. Sélectionner le/s groupe/s de travail ou l&apos;/les application/s destinataire/s
5. Sélectionner le/s catalogues à partager ;
6. Donner un nom ;
7. Cliquer sur `Créer`.

| Editer un partage à un/plusieurs groupe/s de travail Isogeo | Editer un partage à une/plusieurs application/s |
| :--: | :--: |
| ![Partage plateforme ](/assets/adm_shares_platform_edit.png "") | ![Partage plateforme](/assets/adm_shares_apps_multiApps_multiCatalogs.png "") |
