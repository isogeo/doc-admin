# Les mots-clés

Une donnée géographique a généralement un système de coordonnées qu’il faut indiquer dans sa fiche de métadonnées. Le scan Isogeo l'identifie automatiquement ce système mais dans le cas de fiches manuelles ou de certains formats mal reconnus, il revient à l'éditeur de renseigner ou corriger le système de coordonnées.

Pour cela, Isogeo prend en compte les milliers de systèmes de coordonnées inscrits dans le référentiel international [`EPSG Registry`](http://www.epsg-registry.org/) (voir [ici pour consulter le registre via une interface plus moderne](http://epsg.io/)).

Pour en faciliter la gestion et éviter la confusion aux éditeurs (pas forcément spécialistes ou au fait des besoins de projection), l’administrateur peut restreindre les systèmes de coordonnées visibles dans l’onglet `Géographie` d’une fiche de métadonnées.

> Astuce : accéder directement aux [systèmes de coordonnées](https://app.isogeo.com/admin/coordinate-systems).

## Avoir une vision globale du thésaurus Isogeo et du groupe de travail

### Via l'administration

### Au moment d'étiqueter

Un administrateur ou un éditeur de métadonnée pourra au moment d’étiqueter, savoir combien de fois le mot-clé est utilisé dans son groupe de travail et dans l’ensemble de la plateforme Isogeo pour être guidé dans son choix.


## Harmoniser l'étiquetage

restreindre la liste des mots-clés disponibles pour les éditeurs

### Si l’administrateur a restreint la liste des mots-clés disponibles :
seuls ces mots-clés sont disponibles à l’affectation pour un administrateur ou un éditeur.
seul un administrateur peut créer un nouveau mot-clé (automatiquement ajouté à la liste des mots-clés restreints du groupe de travail).


### Si la liste des mots-clés n’est pas restreinte :
tous les mots-clés sont disponibles à l’affectation pour un administrateur ou un éditeur.
un administrateur ou un éditeur peut créer un nouveau mot-clé.



## Harmoniser l'affichage des mots-clés

il peut choisir le mode d’affichage des mots-clés :
* en minuscules.
en MAJUSCULES.
en Capitalisation Sur La Première Lettre.
en Capitalisation sur la première lettre du premier mot.





### Dans les partages


OpenCatalog et le serveur CSW utiliseront le même paramétrage du groupe de travail qui a créé le partage afin d’afficher les mots-clés.

En ce qui concerne les applicatiosn tierces (plugins SIG, portails webs..), l'option choisie par l'administrateur du groupe de travail est transmise via l'API et il faut distinguer 3 cas de figure :
* dans le cas où l'application n'est alimentée que par un seul groupe de travail : l'équipe en charge du développement de l'application pourra appliquer automatiquement le paramètre.
* dans le cas où l'application est alimentée par plusieurs groupes de travail et que tous les groupes de travail participant ont la même option : idem.
* dans le cas où l'application est alimentée par plusieurs groupes de travail et que tous les groupes de travail participant n'ont **pas** la même option : l'équipe en charge du développement de l'application devra implémenter la possibilité de choisir le paramétrage au niveau de l'application.
