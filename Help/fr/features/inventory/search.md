# Naviguer dans son inventaire

La meilleure façon de naviguer dans l'inventaire des données est le moteur de recherche, basé sur la recherche libre et des filtres contextuels dynamiques.

## La recherche textuelle

Lorsque l'utilisateur entre une recherche libre (champ `contient`), le moteur recherche dans les champs suivants :

* Le titre ;
* Le nomde la table ou du fichier (sans son extension) ;
* Le résumé ;
* Le format ;
* Les mots-clés ;
* Les thématiques INSPIRE.

### Pertinence <i class="fa fa-star fa-fw"></i>

Le moteur calcule un score de pertinence qui impacte l'ordre d'affichage par défaut des résultats. Cela est mis en évidence à l'aide d'un léger surlignage en jaune de la recherche dans les résultats.

![Pertinence](/images/search_relevance_prescription.png "Mise en évidence des mots recherchés dans l'affichage des résultats")

La pertinence est définie comme le nombre de fois où un mot de la recherche textuelle apparaît exactement dans les champs concernés. Le tri par pertinence est un tri basé sur cette valeur, calculée pour chaque recherche sur chaque métadonnée renvoyée. En cas d’égalité, les métadonnées sont triées selon la date de création des fiches de métadonnées (ordre stable).

Le score de pertinence est la somme des pertinences pondérées de chaque champ :

| Champ métadonnée | Pondération |
| :--------------- | :---------: |
| Titre            | 100%        |
| Nom technique    | 83%         |
| Résumé           | 10%         |
| Format           | 20%         |
| Mots-clés        | 50%         |

### Caractères spéciaux et casse

Il est important de garder certaines caractéristiques à l’esprit quand on utilise la recherche textuelle :

* le moteur  est insensible à la casse (minuscules / majuscules), donc 'ABC' est équivalent à 'abc' ;
* il ne prend pas en compte les caractères spéciaux (points, accents…), donc 'àéù' est équivalent à 'aeu' ;
* il est en revanche sensible à la casse singulier - pluriel. Il faut donc privilégier le pluriel dans la mesure du possible.

___________

## Les principes d'une recherche optimale

Suivant les logiques des principaux systèmes de recherche, Isogeo encourage les utilisateurs à adopter la démarche dite de l’entonnoir.

![Schéma de la recherche en entonnoir](/images/all_search_schema.png "Chercher les données dans Isogeo")

### Les étapes d'une recherche

1.	Commencer à formuler les termes dans la barre recherche, choisir parmi les propositions de l'auto-complétion :

    ![Première étape, la barre de recherche](/images/search_bar_submersion.png "Commencer par taper les termes de la recherche")

2.	Appliquer les filtres : le menu déroulant à droite de la barre de recherche affiche les filtres disponibles selon les résultats de la recherche :

    ![Appliquer les filtres via le formulaire](/images/search_bar_filters_submersion.png "Filtrer sur les différents critères disponibles")

3.	Régler l’affichage avec les options de [tri et de pagination](../../settings/inventory.html#linterface) :

    ![Options de tri et de pagination](/images/inv_ordering_pagination_options.png "Trier et régler la pagination")

### L'auto-complétion

Lorsque l'on tape dans la barre de recherche, l’auto-complétion propose les **3** valeurs de filtres les plus proches en prenant en compte l'intitulé et l’identifiant.

#### Fonctionnement détaillé

* en navigant de haut en bas sur les tags proposés, la valeur sélectionnée s'affiche (en remplaçant) dynamiquement au champ de recherche ;
* en cliquant sur l’une des propositions, la valeur sélectionnée est ajoutée à la recherche ;
* en appuyant sur la touche *Entrée*, la recherche est lancée avec les valeurs déjà ajoutées ;
* en appuyant sur la touche *Espace*, l’autocomplétion repart de zéro, l’utilisateur peut ainsi ajouter plusieurs tags au fur et à mesure.

![Démo auto-complétion](/images/search_bar_autocompletion.gif "L'auto-complétion permet de gagner du temps lors de la recherche")


#### Matrice des icônes par champ de recherche

| Champ                     | Icône                             |
| :------------------------ | :-------------------------------: |
| Catalogues                | <i class="fa fa-book"></i>        |
| Contacts                  | <i class="fa fa-phone"></i>       |
| Formats                   | <i class="fa fa-cube"></i>        |
| Licences                  | <i class="fa fa-gavel"></i>       |
| Mots-clés                 | <i class="fa fa-tag"></i>         |
| Propriétaires             | <i class="fa fa-users"></i>       |
| Systèmes de coordonnées   | <i class="fa fa-globe"></i>       |
| Thèmes INSPIRE            | <i class="fa fa-leaf"></i>        |
| Types de ressource        | <i class="fa fa-asterisk"></i>    |
| Types d'actions associées | <i class="fa fa-play"></i>        |
