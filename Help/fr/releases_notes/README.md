# Architecture et cycles de développement

Isogeo est une plateforme SaaS dont le développement suit la méthodologie AGILE et les cycles de la méthode Scrum.

La qualité est l'un des axes majeurs de développement d'Isogeo. A ce sujet, nous recommandons la lecture de [l'article du directeur technique sur les processus à l'oeuvre pour garantir la qualité du développement](http://blog.isogeo.com/software-quality-assurance-the-road-to-zero-defects). Il est proposé une traduction partielle ci-après.

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

La société Isogeo met en œuvre les moyens nécessaires pour assurer une disponibilité maximale (s’approchant des 24h/24 et 7j/7) et pour rendre les données accessibles à tout moment. Les moyens mis en œuvre sont détaillés sur le site de Microsoft© Windows Azure© : https://www.windowsazure.com/en-us/support/faq/

En raison de l’état de l’art, la société Isogeo ne peut pas garantir le fonctionnement du service sans anomalie et de manière ininterrompue. Néanmoins Isogeo s’engage à garantir un taux de disponibilité conformément au tableau suivant :

| Service            | Disponibilité | Heures d’indisponibilité    |
| :----------------- | :-----------: | :-------------------------: |
| Microsoft Azure    | 99,95%        | 4,5h                        |
| Isogeo déploiement | 99,45%        | 48h (24 déploiements de 2h) |
| Isogeo imprévues   | 99,60%        | 35h                         |


Le taux de disponibilité global du service est donc de 99%.

Toutes les opérations de maintenance non programmées seront préalablement annoncées à l’organisme dans un délai minimum d’une journée.

Les opérations de maintenance programmées concernent la mise à jour du site internet « outil » et la mise à jour de l’exécutable installé à l’organisme.

La mise à jour du site internet « outil » est transparente pour les utilisateurs de la solution. Elle ne nécessite pas d’intervention de la part de l’organisme.

Seules les mises à jour de l’exécutable peuvent requérir l’intervention de l’organisme. Un mail est envoyé par le support Isogeo une semaine avant l’opération de maintenance programmée dans le cas où une intervention manuelle devrait être réalisée.

### Modalités du constat du taux d’indisponibilité

Le taux de disponibilité est mesuré par le service de Windows Azure. Les outils mis en œuvre sont décrits sur le site de Microsoft© Windows Azure© : https://www.windowsazure.com/en-us/support/faq/

Isogeo s’engage à garantir un taux de disponibilité conformément au tableau suivant :

| Service            | Disponibilité | Indisponibilité / an        | Indisponibilité / trimestre |
| :----------------- | :-----------: | :-------------------------: | :-------------------------: |
| Microsoft Azure    | 99,95%        | 4,5h                        | 1,12h                       |
| Isogeo déploiement | 99,45%        | 48h (24 déploiements de 2h) | 12h                         |
| Isogeo imprévues   | 99,60%        | 35h                         | 8,75h                       |


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

### Intégration continue
Pour chacune des modifications de code (commits), l'intégration continues contrôle :

* le code source se doit d'être cohérent, c'est-à-dire qu'il ne doit pas casser le processu de compilation de l'application. Cela permet d'assurer que les versions de l'application synchronisées en local ne posent pas de problème aux autres développeurs.
* l'application en sortie correspond à des critères de qualité basiques :
    + elle doit passer tous les [tests unitaires](http://www.extremeprogramming.org/rules/unittests.html) ;
    + elle doit répondre aux chartes internes, qui s'appuient sur un ensemble d'outils dédiés ([FxCop](https://msdn.microsoft.com/en-us/library/bb429476%28v=vs.80%29.aspx) or [JSHint](http://jshint.com/)).

Tous les développeurs sont chargés de surveiller l'état de l'intégration continue et crriger immédiatement le moindre problème.

La configuration du serveur de compilation peut être simple en observant queles bonnes pratiques :

* des conventions qui définissent comment sont organisés les dossiers des projets (certains dossiers de fichiers sont là dans un certain but). C'est également très important pour les développeurs qui peuvent ainsi passer d'un projet à un autre sans perdre leurs repères.
* les gestionnaires de paquets permettent de gérer facilement les dépendances ([NuGet](http://www.nuget.org/) ou [npm](https://www.npmjs.com/)). L'une d'entre elles est un ensemble de scripts commun à tous les projets qui assure la cohérence globale et le respect des conventions sus-mentionnées. Le code source de ces scripts est librement accessible sur [GitHub](https://github.com/isogeo/Isogeo.Build).



