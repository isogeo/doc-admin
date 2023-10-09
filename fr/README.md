# Isogeo - Guide de l'administrateur

Isogeo est une application web qui vous permet de gérer et partager un catalogue exhaustif, à jour et documenté de vos données géographiques.

<iframe width="560" height="315" src="https://www.youtube.com/embed/JbBxxpC4hzQ" frameborder="0" allowfullscreen></iframe>

Ce site web est la principale base de connaissances sur les interfaces d'administration d'Isogeo : fonctionnement, architecture, installation, configuration... Si vous rencontrez des difficultés que vous ne parvenez pas à résoudre avec cette aide en ligne, [contactez le support](support/README.md).

## Plateforme, modules et applications tierces

Isogeo désigne la plateforme *SaaS* ou *On premises* construite autour de son API REST et composée :

* de modules standards, indispensables pour l'utiliser, au premier rang desquels l'application d'administration APP soit [https://app.isogeo.com](https://app.isogeo.com) en SaaS.
* de modules optionnels mais fortement intégrés au coeur de la plateforme. C'est le cas d'[OpenCatalog](https://help.isogeo.com/opencatalog/fr/index.html), des serveurs [CSW](https://help.isogeo.com/admin/fr/features/publish/csw_server.html) et [DCAT](https://help.isogeo.com/admin/fr/features/publish/harvest_datagouv_fr.html), du [Scan FME](https://help.isogeo.com/scan/fr/index.html) ou encore du [Partage](https://help.isogeo.com/admin/fr/features/publish/share_platform.html) entre groupe de travail.
* d'applications tierces,  utilisant l'API Isogeo dans des interfaces logicielles indépendantes pour apporter de la valeur ajoutée complémentaire aux fonctions natives comme les plugins [QGIS](https://help.isogeo.com/qgis/fr/index.html) et [ArcGIS Pro](https://help.isogeo.com/arcgispro/fr/index.html) le [Widget Web AppBuilder](https://help.isogeo.com/arcgis-webapp/fr/index.html) ou encore le [Portail de données](https://help.isogeo.com/pixup-portal/fr/index.html).

![La plateforme](/assets/offer_schema_platform_modAPI.png "Modules et ressources de la plateforme Isogeo")

----

Date de la dernière mise à jour de cette documentation : **{{ gitbook.time | date("DD/MM/YYYY") }}**.
