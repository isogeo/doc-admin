# Configuration

Pour pouvoir utiliser le Service Isogeo Worker (scan FME) sur votre poste de travail ou votre serveur, vous devez vérifier les pré-requis suivants :

## Système d’exploitation

À ce jour nous ne supportons que les systèmes Windows :

* Windows 8 et 8.1 (recommandé)
* Windows 7 (recommandé)
* Windows Vista SP2
* Windows Server 2012 (recommandé)
* Windows Server 2008 et 2008 R2
* Windows Server 2003 SP2
* Windows XP SP3 (sauf la version 64 bits)

Même si il est possible d’installer le service Isogeo sur un poste d'utilisateur, il est recommandé d’utiliser un serveur pour des questions de performances, d’accès et de disponibilité.

## Installation de FME Desktop

Votre poste de travail ou votre serveur doit avoir le logiciel FME Desktop installé et parfaitement configuré pour accéder et manipuler vos données géographiques (choix de l’édition, composants tierces parties). Pour plus d’informations, veuillez contacter votre distributeur FME.

À ce jour le Service Isogeo supporte :

* FME Desktop 2013 ;
* FME Desktop 2014

Ainsi que les Service Pack associés (SP1, SP2, SP3, SP4).

## Compte utilisateur

Vous devez posséder un compte utilisateur Windows permettant :

* d'exécuter FME Desktop sur le poste où est installé le Service Isogeo
* d’accéder aux ressources réseaux nécessaires pour lire vos données SIG

Vous pouvez par exemple créer un nouveau compte utilisateur Isogeo ayant les droits nécessaires.

## Navigateur

Les outils développés par Isogeo utilisent les dernières technologies disponibles pour faire profiter ses clients d’une expérience utilisateur de qualité. Pour cela nous avons fait le choix de ne supporter que les navigateurs récents :

* Internet Explorer 10 et plus
* Firefox 24 et plus
* Chrome 30 et plus
* Safari 6 et plus
* Opera 17

D’autres versions plus anciennes peuvent être parfaitement prises en charge bien que non officiellement supportées par Isogeo (c’est notamment le cas pour de nombreuses versions de Firefox et Chrome). Internet Explorer 7, 8 et 9 ne sont pas supportés.

## Sécurité

Si votre poste de travail ou votre serveur est connecté à Internet via un réseau d’entreprise soumis à des politiques de sécurité (cas le plus fréquent), vous devez vous assurer que :

* Votre navigateur peut accéder aux différents sites Internet gérés par Isogeo (tous nos sites ont des domaines qui se terminent par isogeo.com et utilisent le protocole sécurisé HTTPS) tel que https://app.isogeo.com
* Votre système d’exploitation peut se connecter au port 5671 du domaine daemons-mq.isogeo.com à l'aide du protocole TCP sécurisé

Généralement vous obtiendrez ces informations auprès d’un technicien ou d’un responsable des services informatiques.
