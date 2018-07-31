# Les mots-clés <i class="fa fa-tags"></i>

Dans Isogeo, les mots-clés sont gérés de façon centralisée dans ce que l&apos;on appelle le thésaurus Isogeo. Au moment d&apos;étiqueter, chaque groupe de travail vient piocher dans ce thésaurus ou y contribuer en ajoutant un mot-clé s&apos;il n&apos;existe pas déjà, constituant ainsi son propre thésaurus. Celui-ci n&apos;étant qu&apos;une "vue" sur le thésaurus global de la plateforme.

## Avoir une vision globale du thésaurus Isogeo et du groupe de travail

Chaque mot-clé, qu&apos;il soit affecté à une donnée du groupe de travail ou pas, est qualifié par son nombre d&apos;occurrences dans tout Isogeo et dans le groupe de travail.


### Via l&apos;administration

A l&apos;instar de la page des systèmes de coordonnées, cette interface permet aux administrateurs de chaque groupe de travail de parcourir le thésaurus Isogeo et l&apos;ensemble des mots-clés présents dans son groupe de travail.

> Astuce : accéder directement aux [mots-clés](https://app.isogeo.com/admin/keywords).

![Administrer les mots-clés](/images/adm_keywords_occurs.png "Administrer les mots-clés")

Fonctionnement détaillé :

* à gauche, la liste des mots-clés et leurs nombre d&apos;occurrences dans le thésaurus Isogeo. Il est possible de chercher dedans et d&apos;ajouter des mots-clés à la liste de son groupe de travail quand la liste est restreinte.
* à droite, la liste de smots-clés affectés à au moins une métadonnée appartenant au groupe de travail.

![Ajouter un mot-clé](/images/adm_keywords_restricted_addToIsogeo.gif "Ajouter un mot-clé à son groupe de travail à partir du thésaurus Isogeo")

#### Fontionnement du filtre et du tri

* quand aucune recherche n&apos;est active, les mots-clés sont triés par nombre d&apos;occurrences
* quand une recherche est lancée, les mots-clés sont triés selon leur score de correspondance avec les caractères entrés.

![Filtre et tri](/images/adm_keywords_filtrer_order.gif "Comprendre le fonctionnement du tri et du filtre par recherche dynamique")

### Au moment d&apos;étiqueter

L&apos;éditeur a une informaiton sur la représentativité des mots-clés au moment de l&apos;étiquetage d&apos;une/plusieurs données.

Un administrateur ou un éditeur de métadonnées peut au moment d’étiqueter, savoir combien de fois le mot-clé est utilisé dans son groupe de travail et dans l’ensemble de la plateforme Isogeo pour être guidé dans son choix.

> Astuce : consulter la page dédiée à l&apos;étiquetage.

____

## Harmoniser l&apos;étiquetage

En tant qu&apos;administrateur, il est possible de restreindre la liste des mots-clés disponible lors de l&apos;étiquetage pour guider les éditeurs dans le choix de leurs mots-clés. Cela permet d&apos;assurer une certaine cohérence et homogénéité dans le thésaurus du groupe de travail.

### Si l’administrateur a restreint la liste des mots-clés disponibles :

Quand la liste est active :
* seuls les mots-clés présents dans la liste sont disponibles à l’affectation pour un administrateur ou un éditeur ;
* seul un administrateur peut créer un nouveau mot-clé via l&apos;interface d&apos;administration.

![Mots-clés - liste restreinte](/images/inv_edit_tags_keywords_restricted.gif "Créer un nouveau mot-clé quand la liste est restreinte")

### Si la liste des mots-clés n’est pas restreinte :

Quand la liste n&apos;est pas active :
* tous les mots-clés sont disponibles à l’affectation pour un administrateur ou un éditeur ;
* un administrateur ou un éditeur peut créer un nouveau mot-clé qui est ajouté au thésaurus Isogeo et au groupe de travail.

![Mots-clés - liste non restreinte](/images/inv_edit_tags_keywords.gif "Créer un nouveau mot-clé quand la liste n&apos;est pas restreinte")

____

## Harmoniser l&apos;affichage des mots-clés

En plus de pouvoir encadrer la cohérence au moment de la saisie, l&apos;administrateur peut choisir de quelle façon sont affichés les mots-clés lors de la recherche et de la consultation.

il peut choisir le mode d’affichage des mots-clés :
* en minuscules ;
* EN MAJUSCULES ;
* En Capitalisation Sur La Première Lettre ;
* En capitalisation sur la première lettre du premier mot.

![Changement de la casse des mots-clés à l&apos;affichage](/images/adm_keywords_case_switch.gif "Différentes options de la casse de l&apos;affichage des mots-clés")

### Dans les partages

Ce choix d&apos;affichage ne se limite pas à APP et se répercute également dans les interfaces de partage. OpenCatalog et le serveur CSW utiliseront le **choix du groupe de travail qui a créé le partage**.

En ce qui concerne les [applications tierces (plugins SIG, portails webs..)](../publish/usages_api.html), l&apos;option choisie par l&apos;administrateur du groupe de travail est transmise via l&apos;API et il faut alors distinguer 3 cas de figure :

* dans le cas où l&apos;application n&apos;est alimentée que par un seul groupe de travail : l&apos;équipe en charge du développement de l&apos;application pourra appliquer automatiquement le paramètre.

* dans le cas où l&apos;application est alimentée par plusieurs groupes de travail et que tous les groupes de travail participant ont la même option : comportement identique.

* dans le cas où l&apos;application est alimentée par plusieurs groupes de travail et que tous les groupes de travail participant n&apos;ont **pas** la même option : l&apos;équipe en charge du développement de l&apos;application devra implémenter la possibilité de choisir le paramétrage au niveau de l&apos;application.
