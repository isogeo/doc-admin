# Architecture et cycles de développement

Isogeo est une plateforme SaaS dont le développement suit la méthodologie AGILE et les cycles de la méthode Scrum.

La qualité est l'un des axes majeurs de développement d'Isogeo. A ce sujet, nous recommandons la lecture de [l'article du directeur technique sur les processus à l'oeuvre pour garantir la qualité du développement](http://blog.isogeo.com/software-quality-assurance-the-road-to-zero-defects). Il est proposé une traduction partielle ci-après.

## Intégration continue

Pour chacune des modifications de code (commits), l'intégration continues contrôle :

* le code source se doit d'être cohérent, c'est-à-dire qu'il ne doit pas casser le processu de compilation de l'application. Cela permet d'assurer que les versions de l'application synchronisées en local ne posent pas de problème aux autres développeurs.
* l'application en sortie correspond à des critères de qualité basiques :
    + elle doit passer tous les [tests unitaires](http://www.extremeprogramming.org/rules/unittests.html) ;
    + elle doit répondre aux chartes internes, qui s'appuient sur un ensemble d'outils dédiés ([FxCop](https://msdn.microsoft.com/en-us/library/bb429476%28v=vs.80%29.aspx) or [JSHint](http://jshint.com/)).

Tous les développeurs sont chargés de surveiller l'état de l'intégration continue et crriger immédiatement le moindre problème.

La configuration du serveur de compilation peut être simple en observant queles bonnes pratiques :

* des conventions qui définissent comment sont organisés les dossiers des projets (certains dossiers de fichiers sont là dans un certain but). C'est également très important pour les développeurs qui peuvent ainsi passer d'un projet à un autre sans perdre leurs repères.
* les gestionnaires de paquets permettent de gérer facilement les dépendances ([NuGet](http://www.nuget.org/) ou [npm](https://www.npmjs.com/)). L'une d'entre elles est un ensemble de scripts commun à tous les projets qui assure la cohérence globale et le respect des conventions sus-mentionnées. Le code source de ces scripts est librement accessible sur [GitHub](https://github.com/isogeo/Isogeo.Build).


## Intégration quotidienne


