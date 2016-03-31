# Les mots-clés




## Avoir une vision globale du thésaurus Isogeo et du groupe de travail

### Via l'administration

#### Fontionnement du filtre et du tri
* quand aucune recherche n'est active, les mots-clés sont triés par nombre d'occurrences
* quand une recherche est lancée, les mots-clés sont triés selon leur score de correspondance avec les caractères entrés.

> Astuce : accéder directement aux [mots-clés](https://app.isogeo.com/admin/keywords).

### Au moment d'étiqueter

Un administrateur ou un éditeur de métadonnée pourra au moment d’étiqueter, savoir combien de fois le mot-clé est utilisé dans son groupe de travail et dans l’ensemble de la plateforme Isogeo pour être guidé dans son choix.


## Harmoniser l'étiquetage

restreindre la liste des mots-clés disponibles pour les éditeurs

### Si l’administrateur a restreint la liste des mots-clés disponibles :

Quand la liste est active :
* seuls les mots-clés présents dans la liste sont disponibles à l’affectation pour un administrateur ou un éditeur ;
* seul un administrateur peut créer un nouveau mot-clé via l'interface d'administration.

![Changement de la casse des mots-clés à l'affichage](/images/adm_specs_add.gif "Ajouter une nouvelle spécification")

### Si la liste des mots-clés n’est pas restreinte :

Quand la liste n'est pas active :
* tous les mots-clés sont disponibles à l’affectation pour un administrateur ou un éditeur.
* un administrateur ou un éditeur peut créer un nouveau mot-clé.

![Mots-clés - liste non restreinte](/images/adm_specs_add.gif "Créer un nouveau mot-clé quand la liste n'est pas restreinte")

## Harmoniser l'affichage des mots-clés

il peut choisir le mode d’affichage des mots-clés :
* en minuscules ;
* EN MAJUSCULES ;
* En Capitalisation Sur La Première Lettre ;
* En capitalisation sur la première lettre du premier mot.


![Changement de la casse des mots-clés à l'affichage](/images/adm_specs_add.gif "Ajouter une nouvelle spécification")


### Dans les partages


OpenCatalog et le serveur CSW utiliseront le même paramétrage du groupe de travail qui a créé le partage afin d’afficher les mots-clés.

En ce qui concerne les applicatiosn tierces (plugins SIG, portails webs..), l'option choisie par l'administrateur du groupe de travail est transmise via l'API et il faut distinguer 3 cas de figure :
* dans le cas où l'application n'est alimentée que par un seul groupe de travail : l'équipe en charge du développement de l'application pourra appliquer automatiquement le paramètre.
* dans le cas où l'application est alimentée par plusieurs groupes de travail et que tous les groupes de travail participant ont la même option : idem.
* dans le cas où l'application est alimentée par plusieurs groupes de travail et que tous les groupes de travail participant n'ont **pas** la même option : l'équipe en charge du développement de l'application devra implémenter la possibilité de choisir le paramétrage au niveau de l'application.
