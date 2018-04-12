# Configuration

Pour pouvoir utiliser le Scan FME, il faut installer un service Windows nommé Isogeo Worker sur une machine, virtuelle ou physique, de votre organisme respectant les pré-requis.

## Système d’exploitation

Même s'il est possible d’installer le service Isogeo sur un poste d'utilisateur, **il est fortement recommandé d’utiliser un serveur** pour des questions de performances, d’accès et de disponibilité.

Les versions de Windows supportées sont (les versions  en **gras** sont recommandées) :
* Windows Server 2003 SP2, 2008, **2008 R2**, **2012** et **2012 R2** ;
* Windows XP SP3 32 bits, Vista SP2, **7**, 8, **8.1**, **10**.

Du côté des spécifications techniques, il est recommandé de suivre les recommandations pour le bon fonctionnement de la version de FME Desktop utilisée ([voir ici par exemple pour la 2016](https://knowledge.safe.com/articles/40683/fme-20160-to-20161-technical-specifications.html)).

___

## Installation de FME Desktop

FME Desktop doit être installé et parfaitement configuré pour accéder et manipuler vos données géographiques. Points de vérification :

* édition de la licence (Professionnal ou Esri Edition pour ArcSDE)  ;
* jeton de licence FME disponible au moment du scan ;
* architecture 32 ou 64 bits ;
* plugins spécifiques.

À ce jour, les versions de FME supportées sont :

* de FME Desktop 2013 SP4 ;
* à FME Desktop 2016 SP1.

Ainsi que les Service Pack associés.

Pour télécharger FME :

* la dernière version compatible [en 32 bits](https://s3.amazonaws.com/downloads.safe.com/fme/2016/fme-desktop-b16717-win-x86.msi) ou [en 64 bits](https://s3.amazonaws.com/downloads.safe.com/fme/2016/fme-desktop-b16717-win-x64.msi) ;
* une [ancienne version spécifique](https://www.safe.com/support/support-resources/fme-downloads/archived/).

Pour plus d’informations, veuillez contacter votre distributeur FME.

### Cas spécifique pour les connexions Esri ArcSDE

Pour des questions d'interopérabilité entre FME et Esri, il faut être particulièrement vigilant sur les prérequis à installer pour pouvoir scanner correctement les schémas ArcSDE.

1. Tout d'abord, il faut **la version 32 bits de FME** et si possible l'édition Esri
2. Ensuite :
    * soit ArcGIS Desktop 32 bits sur la même machine avec une licence disponible pendant toute la durée du Scan - méthode recommandée ;
    * soit installer les librairies SDE sur la machine où est installée votre FME ([voir cet article](https://knowledge.safe.com/articles/358/arcsde-libraries-required-for-the-esri-arcsde-sde3.html)) - méthode plus complexe.
3. Si ArcGIS est en licence flottante liée à un serveur de licences distant, ajouter la variable d'environnement `ARCGIS_LICENCE_FILE` (voir [la doc Esri](http://resources.arcgis.com/fr/help/install-guides/license-manager/10.1/index.html#/Defining_port_host_to_one_or_more_license_servers/00790000000t000000/)) avec pour valeur le port et l'adresse de votre serveur de licence (information située dans ArcGIS Administrator) :

	![Scan - ArcGIS SDE license](/images/scanFME_install_SDE_env_var_arcgis_licensing.png "Variable d'environnement pour le serveur de licence d'ArcGIS")

Pour aller plus loin :
* consulter la [matrice des formats et versions de FME](http://www.safe.com/fme/formats-matrix/#search=arcsde) ;
* consulter [l'article dédié [en]](https://knowledge.safe.com/articles/1517/notes-on-fme-and-esri-versions-and-compatibility.html) à ces questions d'interopérabilité sur le site de Safe, éditeur de FME.
* si vous utilisez une [version d'ArcGIS qui n'est plus supportée](http://support.esri.com/other-resources/product-life-cycle) par Esri, [consulter l'article dédié](https://knowledge.safe.com/articles/22886/fme-compatibility-for-retired-esri-software.html) ;
* si vous utilisez Direct Connect, [consulter cet article](https://knowledge.safe.com/articles/227/how-do-i-connect-to-my-arcsde-geodatabase-using-di.html).

### Oracle

Pour les bases de données Oracle, penser à installer le client sur la même machine que FME.

___

## Compte utilisateur

Vous devez créer un compte utilisateur Windows permettant :

* d'exécuter FME Desktop sur le poste où est installé le service Isogeo,
* d'écrire dans le répertoire d'installation du service Isogeo,
* d’accéder aux ressources réseaux nécessaires pour lire vos données SIG.

Il est recommandé de créer un nouveau compte utilisateur de niveau administrateur local intitulé Isogeo ayant les droits adéquats sur les données.

___

## Configuration réseau et sécurité

Si votre serveur est connecté à Internet via un réseau d’entreprise soumis à des politiques de sécurité (cas le plus fréquent), vous devez vous assurer que :

* votre navigateur peut accéder aux différents sites Internet gérés par Isogeo (tous nos sites ont des domaines qui se terminent par isogeo.com et utilisent le protocole sécurisé HTTPS) tel que https://app.isogeo.com
* votre système d’exploitation peut se connecter au port **5671** des domaines **daemons-mq.isogeo.com** et **daemons.isogeo.com**, tous deux sur l'IP *65.52.153.255*, à l'aide du **protocole TCP sécurisé**.

Il faut vérifier auprès de vos éventuels pare-feu, proxy et fichiers hosts que le filtre par domaine ou  IP autorise bien les communications. Généralement vous obtiendrez ces informations auprès de votre service informatique.
