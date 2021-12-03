# L&apos;inventaire

L&apos;[inventaire](https://app.isogeo.com/inventory) est la partie dédiée à la recherche et à la documentation des métadonnées. Vous pouvez y accéder en permanence de plusieurs façons :

* via le bouton dans le menu horizontal ;
* via une recherche dans la barre de recherche ;
* via l&apos;un des graphiques dynamiques du tableau de bord.

Vous y retrouvez :

* Les fiches créées automatiquement par un scan ;
* Les fiches créées manuellement par un membre de votre groupe de travail ;
* Les fiches créées par d’autres groupes Isogeo et partagées avec vous ;
* Les fiches moissonnées à partir d&apos;un service CSW.

## L&apos;interface

![Inventaire Isogeo](/assets/inv_global.png "Interface général de l&apos;inventaire Isogeo")

Sous la barre des menus, une barre d&apos;actions permet d&apos;interagir avec l&apos;inventaire.

### Créer une fiche manuelle

Quand l&apos;option est activée dans [les paramètres du groupe de travail](../features/admin/group.html)).

> Astuce : voir [le chapitre dédié à la création de fiches manuelles](../features/documentation/md_new_manual.html).

### Gérer la sélection

![Sélection](/assets/inv_selection.png "Gérer la sélection")

* sélectionner toutes les fiches de la page en cours ;
* retirer de la sélection les fiches de la page en cours (quand une sélection est active) ;
* vider la sélection (quand une sélection est active).

### Les options de tri

![Tri](/assets/inv_order_options.png "Options de tri")

Dérouler pour gérer les options de tri :

* <i class="fa fa-star fa-fw"></i> par pertinence (par défaut) ;
* <i class="fa fa-font fa-fw"></i> par titre ;
* <i class="fa fa-calendar fa-fw text-violet"></i> par date de création de la métadonnée (par défaut si recherche vide) ;
* <i class="fa fa-calendar fa-fw text-danger"></i> par date de dernière modification de la métadonnée ;
* <i class="fa fa-calendar fa-fw text-success"></i> par date de création de la donnée ;
* <i class="fa fa-calendar fa-fw text-info"></i> par date de dernière modification de la donnée ;
* <i class="fa fa-calendar fa-fw text-warning"></i> par date de publication de la donnée.

Et de choisir la direction du tri :

* <i class="fa fa-sort-alpha-asc"></i> ascendant : ordre alphabétique, du plus petit au plus grand, du plus ancien au  plus récent ;
* <i class="fa fa-sort-alpha-desc"></i> descendant (valeur par défaut)

> Astuce : pour en savoir plus sur le moteur de recherche, consulter [le chapitre dédié](../features/inventory/search.html).

### Pagination

En haut à droite, il est possible de sélectionner une page en particulier :

![Pagination](/assets/inv_pagination_browse.png "Aller à une page")

Tout en bas à gauche, il est possible de régler la pagination :

* afficher 20 fiches par page (par défaut) ;
* afficher 30 fiches par page ;
* afficher 50 fiches par page.

![Pagination](/assets/inv_pagination_display.png "Nombre de fiches par page")

## L&apos;en-tête des fiches de métadonnées

![En-tête des fiches](/assets/inv_ressource_header.png "Les informations affichées dans l&apos;en-tête d&apos;une fiche dans l&apos;inventaire")

* la vignette avec l&apos;enveloppe convexe de la donnée sur un fond en niveaux de gris ;
* le titre et entre parenthèses le nom technique de la donnée : c&apos;est la partie cliquable pour ouvrir une fiche en particulier ;
* le propriétaire de la fiche : <span style="color:#C09E7E">en marron</span>,
* le type de ressource (vecteur, raster, ensemble de données, service, ressource): <span style="color:#8FB39B">en vert</span>
* le format : <span style="color:#6480a7">en bleu</span>
* le système de coordonnées : <span style="color:#999">en gris foncé</span>
* le(s) catalogue(s) : <span style="color:#bed3db">en gris clair</span>
* les thèmes Inspire précédés d’une icône en forme de feuille <i class="fa fa-leaf"></i> ;
* les thématiques précédées d'une icône en forme de trombone <i class="fa fa-paperclip"></i> ;
* les mots-clés précédés d’une icône en forme d&apos;étiquette  <i class="fa fa-tag"></i> ;
* sur la droite, la date de tri choisie s’affiche ;
* la couleur tout à droite est calculée automatiquement sur la base du nom du groupe de travail.

> Astuce : la plupart de ces informations agissent également comme des filtres. Par exemple, si vous cliquez sur le tag d&apos;un format, vous afficherez toutes les données correspondantes.
