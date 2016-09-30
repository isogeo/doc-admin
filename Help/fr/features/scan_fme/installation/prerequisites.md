# Configuration

Pour pouvoir utiliser le Scan FME, il faut installer un service Windows nommé Isogeo Worker sur une machine, virtuelle ou physique, de votre organisme respectant les pré-requis.

## Système d’exploitation

Même s'il est possible d’installer le service Isogeo sur un poste d'utilisateur, **il est fortement recommandé d’utiliser un serveur** pour des questions de performances, d’accès et de disponibilité.

Les versions de Windows supportées sont (les versions  en **gras** sont recommandées) :
* Windows Server 2003 SP2, 2008, **2008 R2**, **2012** et **2012 R2** ;
* Windows XP SP3 32 bits, Vista SP2, **7**, 8, **8.1**, **10**.

## Installation de FME

FME doit être installé et parfaitement configuré pour accéder et manipuler vos données géographiques. Points de vérification :
* édition de la licence (Professionnal ou Esri Edition pour ArcSDE)  ;
* jeton disponible au moment du scan ;
* architecture 32 ou 64 bits ;
* plugins spécifiques.

À ce jour, les versions de FME supportées sont :
* FME Desktop 2013 SP4 ;
* FME Desktop 2014 ;
* FME Desktop 2015 ;
* FME Desktop 2016 SP1.

Ainsi que les Service Pack associés.

Pour télécharger FME :
* la dernière version compatible [en 32 bits](https://s3.amazonaws.com/downloads.safe.com/fme/2015/fme-desktop-2015.1.3-win-x86.msi) ou [en 64 bits](https://s3.amazonaws.com/downloads.safe.com/fme/2015/fme-desktop-2015.1.3-win-x64.msi) ;
* une [ancienne version spécifique](https://www.safe.com/support/support-resources/fme-downloads/archived/).

Pour plus d’informations, veuillez contacter votre distributeur FME.

### Cas spécifique pour les connexions Esri ArcSDE



## Compte utilisateur

Vous devez créer un compte utilisateur Windows permettant :

* d'exécuter FME Desktop sur le poste où est installé le service Isogeo,
* d'écrire dans le répertoire d'installation du service Isogeo,
* d’accéder aux ressources réseaux nécessaires pour lire vos données SIG.

Par exemple, créer un nouveau compte utilisateur intitulé Isogeo ayant les droits adéquats.

## Sécurité

Si votre serveur est connecté à Internet via un réseau d’entreprise soumis à des politiques de sécurité (cas le plus fréquent), vous devez vous assurer que :

* votre navigateur peut accéder aux différents sites Internet gérés par Isogeo (tous nos sites ont des domaines qui se terminent par isogeo.com et utilisent le protocole sécurisé HTTPS) tel que https://app.isogeo.com
* votre système d’exploitation peut se connecter au port **5671** des domaines **daemons-mq.isogeo.com** et **daemons.isogeo.com**, tous deux sur l'IP *65.52.153.255*, à l'aide du **protocole TCP sécurisé**.

Il faut vérifier auprès de vos éventuels pare-feu, proxy et fichiers hosts que le filtre par domaine ou  IP autorise bien les communications. Généralement vous obtiendrez ces informations auprès de votre service informatique.
