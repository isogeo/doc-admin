# Les mots-clés

Dans Isogeo, les mots-clés sont gérés de façon centralisée dans ce que l'on appelle le thésaurus Isogeo. Au moment d'étiqueter, chaque groupe de travail vient piocher dans ce thésaurus ou y contribuer en ajoutant un mot-clé s'il n'existe pas déjà, constituant ainsi son propre thésaurus. Celui-ci n'étant qu'une "vue" sur le thésaurus global de la plateforme.

## Avoir une vision globale du thésaurus Isogeo et du groupe de travail

Chaque mot-clé, qu'il soit affecté à une donnée du groupe de travail ou pas, est qualifié par son nombre d'occurrences dans tout Isogeo et dans le groupe de travail.


### Via l'administration

A l'instar de la page des systèmes de coordonnées, cette interface permet aux administrateurs de chaque groupe de travail de parcourir le thésaurus Isogeo et l'ensemble des mots-clés présents dans son groupe de travail.

> Astuce : accéder directement aux [mots-clés](https://app.isogeo.com/admin/keywords).

![Administrer les mots-clés](/images/adm_keywords_occurs.png "Administrer les mots-clés")

Fonctionnement détaillé :

* à gauche, la liste des mots-clés et leurs nombre d'occurrences dans le thésaurus Isogeo. Il est possible de chercher dedans et d'ajouter des mots-clés à la liste de son groupe de travail quand la liste est restreinte.
* à droite, la liste de smots-clés affectés à au moins une métadonnée appartenant au groupe de travail.

![Ajouter un mot-clé](/images/adm_keywords_restricted_addToIsogeo.gif "Ajouter un mot-clé à son groupe de travail à partir du thésaurus Isogeo") 

#### Fontionnement du filtre et du tri

* quand aucune recherche n'est active, les mots-clés sont triés par nombre d'occurrences
* quand une recherche est lancée, les mots-clés sont triés selon leur score de correspondance avec les caractères entrés.

![Filtre et tri](/images/adm_keywords_filtrer_order.gif "Comprendre le fonctionnement du tri et du filtre par recherche dynamique")

### Au moment d'étiqueter

L'éditeur a une informaiton sur la représentativité des mots-clés au moment de l'étiquetage d'une/plusieurs données.

Un administrateur ou un éditeur de métadonnées peut au moment d’étiqueter, savoir combien de fois le mot-clé est utilisé dans son groupe de travail et dans l’ensemble de la plateforme Isogeo pour être guidé dans son choix.

> Astuce : consulter la page dédiée à l'étiquetage.

____

## Harmoniser l'étiquetage

En tant qu'administrateur, il est possible de restreindre la liste des mots-clés disponible lors de l'étiquetage pour guider les éditeurs dans le choix de leurs mots-clés. Cela permet d'assurer une certaine cohérence et homogénéité dans le thésaurus du groupe de travail.

### Si l’administrateur a restreint la liste des mots-clés disponibles :

Quand la liste est active :
* seuls les mots-clés présents dans la liste sont disponibles à l’affectation pour un administrateur ou un éditeur ;
* seul un administrateur peut créer un nouveau mot-clé via l'interface d'administration.

![Mots-clés - liste restreinte](/images/inv_edit_tags_keywords_restricted.gif "Créer un nouveau mot-clé quand la liste est restreinte")

### Si la liste des mots-clés n’est pas restreinte :

Quand la liste n'est pas active :
* tous les mots-clés sont disponibles à l’affectation pour un administrateur ou un éditeur ;
* un administrateur ou un éditeur peut créer un nouveau mot-clé qui est ajouté au thésaurus Isogeo et au groupe de travail.

![Mots-clés - liste non restreinte](/images/inv_edit_tags_keywords.gif "Créer un nouveau mot-clé quand la liste n'est pas restreinte")

____

## Harmoniser l'affichage des mots-clés

En plus de pouvoir encadrer la cohérence au moment de la saisie, l'administrateur peut choisir de quelle façon sont affichés les mots-clés lors de la recherche et de la consultation.

il peut choisir le mode d’affichage des mots-clés :
* en minuscules ;
* EN MAJUSCULES ;
* En Capitalisation Sur La Première Lettre ;
* En capitalisation sur la première lettre du premier mot.

![Changement de la casse des mots-clés à l'affichage](/images/adm_keywords_case_switch.gif "Différentes options de la casse de l'affichage des mots-clés")

### Dans les partages

Ce choix d'affichage ne se limite pas à APP et se répercute également dans les interfaces de partage. OpenCatalog et le serveur CSW utiliseront le **choix du groupe de travail qui a créé le partage**.

En ce qui concerne les [applications tierces (plugins SIG, portails webs..)](/features/publish/usages_api.html), l'option choisie par l'administrateur du groupe de travail est transmise via l'API et il faut alors distinguer 3 cas de figure :

* dans le cas où l'application n'est alimentée que par un seul groupe de travail : l'équipe en charge du développement de l'application pourra appliquer automatiquement le paramètre.

* dans le cas où l'application est alimentée par plusieurs groupes de travail et que tous les groupes de travail participant ont la même option : comportement identique.

* dans le cas où l'application est alimentée par plusieurs groupes de travail et que tous les groupes de travail participant n'ont **pas** la même option : l'équipe en charge du développement de l'application devra implémenter la possibilité de choisir le paramétrage au niveau de l'application.
