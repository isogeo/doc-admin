# Naviguer dans son inventaire

La meilleure façon de naviguer dans l&apos;inventaire des données est le moteur de recherche, basé sur la recherche libre et des filtres contextuels dynamiques.

## La recherche textuelle

Lorsque l&apos;utilisateur entre une recherche libre (champ `contient`), le moteur recherche dans les champs suivants :

* Le titre ;
* Le nom de la table ou du fichier (sans son extension) ;
* Le résumé ;
* L'emplacement de la ressource ou l'URL du service ;
* Les mots-clés ;
* Les thématiques INSPIRE ;
* Les thématiques du groupe de travail.

### Pertinence <i class="fa fa-star fa-fw"></i>

Le moteur calcule un score de pertinence qui impacte l&apos;ordre d&apos;affichage par défaut des résultats. Cela est mis en évidence à l&apos;aide d&apos;un léger surlignage en jaune de la recherche dans les résultats.

![Pertinence](/assets/search_relevance_prescription.png "Mise en évidence des mots recherchés dans l&apos;affichage des résultats")

La pertinence est définie comme le nombre de fois où un mot de la recherche textuelle apparaît exactement dans les champs concernés. Le tri par pertinence est un tri basé sur cette valeur, calculée pour chaque recherche sur chaque métadonnée renvoyée. En cas d’égalité, les métadonnées sont triées selon la date de dernière modification des fiches de métadonnées (ordre stable).

Le score de pertinence est la somme des pertinences pondérées de chaque champ :

| Champ métadonnée | Pondération |
| :--------------- | :---------: |
| Titre            | 100%        |
| Nom technique    | 80%         |
| Résumé           | 50%         |
| Emplacement      | 50%         |
| Mots-clés        | 100%        |

### Caractères spéciaux et casse

Il est important de garder certaines caractéristiques à l’esprit quand on utilise la recherche textuelle :

* le moteur  est insensible à la casse (minuscules / majuscules), donc &apos;ABC&apos; est équivalent à &apos;abc&apos; ;
* il ne prend pas en compte les caractères avec accents, donc &apos;àéù&apos; est équivalent à &apos;aeu&apos; ;
* il ne prend pas en compte certains caractères spéciaux, en particuliers les crochets, les parenthèses ou les slash.

___________

## Les principes d&apos;une recherche optimale

Suivant les logiques des principaux systèmes de recherche, Isogeo encourage les utilisateurs à adopter la démarche dite de l’entonnoir.

![Schéma de la recherche en entonnoir](/assets/all_search_schema.png "Chercher les données dans Isogeo")

### Les étapes d&apos;une recherche

1. Commencer à formuler les termes dans la barre recherche, choisir parmi les propositions de l&apos;auto-complétion :

    ![Première étape, la barre de recherche](/assets/search_bar_submersion.png "Commencer par taper les termes de la recherche")

2. Appliquer les filtres : le menu déroulant à droite de la barre de recherche affiche les filtres disponibles selon les résultats de la recherche :

    ![Appliquer les filtres via le formulaire](/assets/search_bar_filters_submersion.png "Filtrer sur les différents critères disponibles")

3. Régler l’affichage avec les options de [tri et de pagination](../../settings/inventory.html#linterface) :

    ![Options de tri et de pagination](/assets/inv_ordering_pagination_options.png "Trier et régler la pagination")

### L&apos;auto-complétion

Lorsque l&apos;on tape dans la barre de recherche, l’auto-complétion propose les **3** valeurs de filtres les plus proches en prenant en compte l&apos;intitulé et l’identifiant.

#### Fonctionnement détaillé

* en navigant de haut en bas sur les tags proposés, la valeur sélectionnée s&apos;affiche (en remplaçant) dynamiquement au champ de recherche ;
* en cliquant sur l’une des propositions, la valeur sélectionnée est ajoutée à la recherche ;
* en appuyant sur la touche *Entrée*, la recherche est lancée avec les valeurs déjà ajoutées ;
* en appuyant sur la touche *Espace*, l’autocomplétion repart de zéro, l’utilisateur peut ainsi ajouter plusieurs tags au fur et à mesure.

![Démo auto-complétion](/assets/search_bar_autocompletion.gif "L&apos;auto-complétion permet de gagner du temps lors de la recherche")

#### Matrice des icônes par champ de recherche

| Champ                     | Icône                             |
| :------------------------ | :-------------------------------: |
| Propriétaires             | <i class="fa fa-users"></i>       |
| Catalogues                | <i class="fa fa-book"></i>        |
| Thématiques               | <i class="fa fa-paperclip"></i>   |
| Mots-clés                 | <i class="fa fa-tag"></i>         |
| Types de ressource        | <i class="fa fa-asterisk"></i>    |
| Formats                   | <i class="fa fa-cube"></i>        |
| Systèmes de coordonnées   | <i class="fa fa-globe"></i>       |
| Thèmes INSPIRE            | <i class="fa fa-leaf"></i>        |
| Types d&apos;actions associées | <i class="fa fa-play"></i>        |
| Licences                  | <i class="fa fa-gavel"></i>       |
| Contacts                  | <i class="fa fa-phone"></i>       |
