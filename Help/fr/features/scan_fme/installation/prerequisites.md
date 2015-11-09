# Configuration

Pour pouvoir utiliser le Service Isogeo Worker (scan FME) sur votre poste de travail ou votre serveur, vous devez vérifier les pré-requis suivants :

## Système d’exploitation

Les systèmes supportés sont :

* Windows 8 et 8.1 (recommandé)
* Windows 7 (recommandé)
* Windows Vista SP2
* Windows Server 2012 et 2012 R2 (recommandé)
* Windows Server 2008 et 2008 R2
* Windows Server 2003 SP2
* Windows XP SP3 (sauf la version 64 bits)

Même s'il est possible d’installer le service Isogeo sur un poste d'utilisateur, **il est fortement recommandé d’utiliser un serveur** pour des questions de performances, d’accès et de disponibilité.

## Installation de FME

FME doit être installé et parfaitement configuré pour accéder et manipuler vos données géographiques (choix de l’édition, composants tierces parties). Pour plus d’informations, veuillez contacter votre distributeur FME.

À ce jour, les versions de FME supportées sont :

* FME Desktop 2013 ;
* FME Desktop 2014 ;
* FME Desktop 2015.

Ainsi que les Service Pack associés.

## Compte utilisateur

Vous devez créer un compte utilisateur Windows permettant :

* d'exécuter FME Desktop sur le poste où est installé le service Isogeo,
* de pouvoir écrire dans le répertoire d'installation du service Isogeo,
* d’accéder aux ressources réseaux nécessaires pour lire vos données SIG.

Par exemple, créer un nouveau compte utilisateur intitulé Isogeo ayant les droits adéquats.

## Sécurité

Si votre serveur est connecté à Internet via un réseau d’entreprise soumis à des politiques de sécurité (cas le plus fréquent), vous devez vous assurer que :

* votre navigateur peut accéder aux différents sites Internet gérés par Isogeo (tous nos sites ont des domaines qui se terminent par isogeo.com et utilisent le protocole sécurisé HTTPS) tel que https://app.isogeo.com
* votre système d’exploitation peut se connecter au port **5671** du domaine **daemons-mq.isogeo.com** (*137.117.169.33*) à l'aide du **protocole TCP sécurisé**.

Généralement vous obtiendrez ces informations auprès d’un technicien ou d’un responsable des services informatiques.
