# Architecture et cycles de développement

Isogeo est une plateforme SaaS dont le développement suit la méthodologie AGILE et les cycles de la méthode Scrum.

![Architecture Isogeo](/fr/images/architecture_Isogeo.png "Schéma global de l'architecture de la plateforme Isogeo")

## Installation et gestion des environnements

La solution Isogeo est déployée en mode SaaS sur la plateforme de Cloud Computing de Microsoft : Windows Azure.  Trois environnements distincts permettent de gérer les développements, les tests et la production :

* la plateforme de **développement** est réservée à la société Isogeo. Elle permet de gérer les développements de la solution. Mise à jour toutes les nuits elle agrège l’ensemble des développements effectués dans la journée (voir plus bas pour la démarche de qualité logicielle à Isogeo) ;

* la plateforme de **recette** est réservée à la société Isogeo. Elle permet de gérer les tests de la solution avant une mise en production. Toutes les deux semaines une nouvelle version est livrée sur la plateforme de tests. Une fois validée cette nouvelle version peut être mise en production ; Les anomalies détectées sont déclarées dans l’outil de suivi Redmine ;

* la plateforme de **production** est accessible par tous les utilisateurs. Elle permet de gérer les formations et la production. Toutes les deux semaines une nouvelle version est potentiellement livrée sur la plateforme de production. Lorsque les développements concernent uniquement le site internet « outil », l’exécutable installé chez le client n’a pas besoin d’être mis à jour. Lorsque les développements concernent l’exécutable, une mise à jour manuelle chez le client peut être nécessaire. Le planning, l’exécutable et la procédure de mise à jour sont préalablement communiqués à l’organisme client.

Les utilisateurs de la solution ont accès à un seul et même environnement de production.

## Ressources matérielles pour le service

Les besoins matériels nécessaires sont fonction du volume et du type de données traitées par l’agent au sein du système d’information. De manière générale il est judicieux de se rapporter aux besoins matériels de FME Desktop 2013.

En fonction des caractéristiques des données parcourues, il peut devenir gourmand en RAM (signature de jeux de données vectoriels en multi-géométries, rasters très lourds...). Un processeur simple cœur et un dimensionnement suffisant de la RAM sont à prévoir en fonction de la taille maximale des données disponibles.

## Sauvegarde et restauration

La plateforme Isogeo (application et base de données) est sauvegardée quotidiennement dans un lieu de stockage privé sur le Cloud Computing Microsoft© : Windows Azure©. Les moyens de sauvegarde utilisés sont décrits sur le site officiel de Microsoft©: http://www.windowsazure.com/fr-fr.

Une restauration générale de la plateforme peut être réalisée en quelques heures à la charge d’Isogeo.

La restauration de l’environnement propre à l’organisme peut être réalisée dans la journée à la charge de l’organisme.

## Conditions d'hébergement

La plateforme Isogeo est hébergée dans le Cloud de Microsoft© : Windows Azure©. Les conditions d’hébergement sont décrites en détail sur le site officiel de Microsoft© pour plus de détails : http://www.windowsazure.com/fr-fr/

Cette plateforme met à disposition cinq types de services :

* Une ferme de frontaux web (Web Roles) ;
* Des services d’arrière-plan (WorkerRoles) : comparables à des services Windows ;
* Un cluster de bases de données (SQL Azure) ;
* Des machines virtuelles ;
* Un service de stockage de fichiers ;
* La communication entre le navigateur et l’outil se fait exclusivement en SSL (*Secure Sockets Layer*).

### Taux d’indisponibilité

La société Isogeo met en œuvre les moyens nécessaires pour assurer une disponibilité maximale (s’approchant des 24h/24 et 7j/7) et pour rendre les données accessibles à tout moment. Les moyens mis en œuvre sont détaillés sur le site de Microsoft© Windows Azure© : http://azure.microsoft.com/fr-fr/support/faq/

En raison de l’état de l’art, la société Isogeo ne peut pas garantir le fonctionnement du service sans anomalie et de manière ininterrompue. Néanmoins Isogeo s’engage à garantir un taux de disponibilité conformément au tableau suivant :

| Service            | Disponibilité | Indisponibilité / an        | Indisponibilité / trimestre |
| :----------------- | :-----------: | :-------------------------: | :-------------------------: |
| Microsoft Azure    | 99,95%        | 4,5h                        | 1,12h                       |
| Isogeo déploiement | 99,45%        | 48h (24 déploiements de 2h) | 12h                         |
| Isogeo imprévues   | 99,60%        | 35h                         | 8,75h                       |

Le taux de disponibilité global du service est donc de 99%.

Toutes les opérations de maintenance non programmées seront préalablement annoncées à l’organisme dans un délai minimum d’une journée.

Les opérations de maintenance programmées concernent la mise à jour du site internet « outil » et la mise à jour de l’exécutable installé à l’organisme.

La mise à jour du site internet « outil » est transparente pour les utilisateurs de la solution. Elle ne nécessite pas d’intervention de la part de l’organisme.

Seules les mises à jour de l’exécutable peuvent requérir l’intervention de l’organisme. Un mail est envoyé par le support Isogeo une semaine avant l’opération de maintenance programmée dans le cas où une intervention manuelle devrait être réalisée.

## Sécurité

### Sécurisation des accès et des transmissions

* L’exécutable Isogeo (composant client) communique avec la plateforme Isogeo lors de certaines opérations d’administration (scan des données géographiques et synchronisation). L’authentification se fait par identifiants et la communication est chiffrée entre l’agent et la plateforme (SSL).

* La communication entre l’agent et la plateforme est initiée depuis l’agent. Il n’est pas nécessaire d’ouvrir de ports entrants spécifiques.

* Il est en revanche indispensable d’autoriser les communications entrantes pour toutes les communications initiées depuis le réseau local sur le port tcp 5671.

### Contrôle de l’accès aux données lors du recensement automatique

* L’accès aux données s’effectue par l’intermédiaire du logiciel [FME](http://www.safe.com/fme/fme-technology/fme-desktop/overview/)

* L’accès aux données est entièrement configurable par l’organisme. Il suffit d’indiquer à l’exécutable les bases de données et les répertoires auquel il peut accéder.

* L’accès aux données se fait quel que soit le système d’exploitation du serveur ou du poste de travail dans lequel elles sont stockées (Windows 2000, XP, Vista, 7, Unix, Linux, OS X de MAC)

* L'accès aux données est en lecture seule, mais certains fournisseurs d’accès aux données requièrent un accès en lecture/écriture. La donnée géographique n’est pas modifiée, mais des mises à jour de fichiers d’index ou d’informations techniques peuvent demander des accès en écriture.

* L’agent ne stocke pas d’informations pour lui-même. Cependant il peut être amené à générer des fichiers temporaires potentiellement volumineux dont il assure le nettoyage de façon automatique.

## Démarche de qualité logicielle

La qualité est l'un des axes majeurs de développement d'Isogeo. A ce sujet, nous recommandons la lecture de [l'article (en anglais) du directeur technique sur les processus à l'oeuvre pour garantir la qualité du développement](http://blog.isogeo.com/software-quality-assurance-the-road-to-zero-defects), dont il est proposé une traduction partielle ci-après.

### Intégration continue
Pour chacune des modifications de code (commits), l'intégration continue contrôle :

* le code source se doit d'être cohérent, c'est-à-dire qu'il ne doit pas casser le processus de compilation de l'application. Cela permet d'assurer que les versions de l'application synchronisées en local ne posent pas de problème aux autres développeurs.

* l'application en sortie correspond à des critères de qualité basiques :
    + elle doit passer tous les [tests unitaires](http://www.extremeprogramming.org/rules/unittests.html) ;
    + elle doit répondre aux chartes internes, qui s'appuient sur un ensemble d'outils dédiés ([FxCop](https://msdn.microsoft.com/en-us/library/bb429476%28v=vs.80%29.aspx) or [JSHint](http://jshint.com/)).

Tous les développeurs sont chargés de surveiller l'état de l'intégration continue et corriger immédiatement le moindre problème.

![Intégration continue](/fr/images/architecture_ContinuousBuild.png "Le processus d'intégration continue")

La configuration du serveur de compilation peut être simple en observant quelques bonnes pratiques :

* des conventions qui définissent comment sont organisés les dossiers des projets (certains dossiers de fichiers sont là dans un certain but). C'est également très important pour les développeurs qui peuvent ainsi passer d'un projet à un autre sans perdre leurs repères.

* les gestionnaires de paquets permettent de gérer facilement les dépendances ([NuGet](http://www.nuget.org/) ou [npm](https://www.npmjs.com/)). L'une d'entre elles est un ensemble de scripts commun à tous les projets qui assure la cohérence globale et le respect des conventions sus-mentionnées. Le code source de ces scripts est librement accessible sur [GitHub](https://github.com/isogeo/Isogeo.Build).

### Compilation quotidienne

La compilation quotidienne (*Nightly Build*) est la suite logique de l'intégration continue. Déclenchée toutes les nuit, elle repasse par les mêmes étapes et en plus :

* elle crée un paquet déployable pour le projet, c'est-à-dire à même d'être déployé sur l'ensemble de nos plateformes (*Integration*, *QualityAssurance* et *Production*) en adaptant seulement la configuration a technologie utilisée pour générer ces paquets est [*Microsoft Web Deploy*](http://www.iis.net/downloads/microsoft/web-deploy) qui est tout à fait adaptée à ce genre d'usage.

* elle déploie ensuite automatiquement la paquet sur la plateforme d'intégration. Auto-hébergée à Isogeo, cette plateforme peut être utilisée par les développeurs et les testeurs notamment pour s'assurer que les différents composants assemblés forment toujours une plateforme cohérente.

Nous avons également une plateforme de recette hébergée sur Windows Azure (tout comme la plateforme de production). Elle est utilisée pour tester la plateforme en conditions réelles avant la sortie d'une nouvelle version, tous les 3 mois. La plupart des composants déployés sur Windows Azure utilise également la technologie *Microsoft Web Deploy*, mais notre API requiert d'être packagée dans un [format Azure spécifique](https://msdn.microsoft.com/fr-fr/library/azure/gg433055.aspx). Nous utilisons donc un autre ensemble de scripts pour générer manuellement ces paquets à partir du serveur de compilation.

![Compilation quotidienne](/fr/images/architecture_NightlyBuild.png "Le processus de compilation quotidienne")

Pour le moment, les tests exécutés sur ces plateformes sont manuels. Mais une fois déployées, les plateformes sont automatiquement surveillées :

* par le [système de surveillance et de notifications intégré à Azure](https://msdn.microsoft.com/fr-fr/library/azure/dn306639.aspx),
* par l'excellent service [New Relic](http://newrelic.com/).

### La route à parcourir

Nos procédures actuelles facilitent grandement la mise en production d'une nouvelle version et nous permettent d'être assez confiants sur tout le processus. Mais il y a encore de nombreuses pistes d'améliorations à apporter sur certains points pour monter d'un cran la qualité de notre plateforme : nous avons besoin de monter en puissance sur les tests automatisés et de nous débarasser des résidus d'opérations manuelles dans le processus de déploiement.

#### Tests automatisés

Le principal objectif pour les évolutions à venir est d'améliorer la qualité et la couverture des tests actuels :

* plus de tests unitaires sur tous les composants. C'est un processus permanent et de longue haleine ;
* des tests automatisés d'intégration de notre API. Le principal effort à fournir réside dans la création d'une base de données dédiée aux tests de nos différents cas d'usage. Nous nous intéressons de près à des services comme [Runscope](https://www.runscope.com/).
* des tests automatisés d'intégration de nos applicatifs. Le prérequis est le même : une base de données de test. Une fois satisfait, des outils tels que [Selenium](http://docs.seleniumhq.org/) devraient convenir à nos besoins.

Tous ces tests ne feront pas partie de l'intégration continue car ils ont beaucoup trop de dépendances: l'indisponibilité, pour une raison ou pour une autre, de la base de test ou de l'un des serveurs web ne devrait pas nous empêcher de compiler un nouveau paquet ou déployer un correctif par exemple.

#### Déploiement automatisé

Nous avons également besoin d'un serveur de déploiement qui puisse automatiquement, à partir d'un ensemble de configurations et de paquets, déployer une nouvelle version de notre logiciel sur n'importe laquelle de nos plateformes (*Integration*, *QualityAssurance*, *Production*). Les principaux bénéfices de ce genre de plateforme seraient :

* d'automatiser complètement le déploiement de notre solution sans nécessiter un haut niveau de compétence technique ;
* permettre de faire tourner tout ou partie des tests automatisés d'intégration sur n'importe laquelle e nos plateformes.

![Déploiement automatisé](/fr/images/architecture_ContinuousDeployment.png "Schma du déploiement automatisé visé")

La route est droite mais la pente est rude ([référence](http://fr.wikipedia.org/wiki/Raffarinade)) ! Qu'importe nous continuons d'avancer en intégrant les outils nécessaires et en instaurant ces nouveaux processus de façon à ce que nos utilisateurs puissent profiter d'une expérience toujours plus sereine sur Isogeo.
