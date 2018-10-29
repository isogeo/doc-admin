# Diffuser les catalogues avec la cartothèque (beta)

## Générer une cartothèque {#maplib_create}

Pour créer une cartothèque :

1. Dans le menu `Administration`  > `Partage`, cliquer sur `Nouveau` ;
2. Cliquer sur le bouton en forme d&apos;engrenages ;
3. Sélectionner l’application `Cartothèque` ;
4. Sélectionner le ou les catalogues à publier ;
5. Nommer le partage ;
6. `Enregistrer` ;

L&apos;URL de consultation de la cartothèque apparaît alors.

![Partager les cartothèques](/assets/maplib/ml_adm_share.png "Générer une nouvelle carothèque")

____

## Documenter une carte {#maplib_metadata}

Pour créer une fiche de métadonnées de carte vous devez :

* Créer une fiche manuelle de type “ressource” ([voir le paragraphe dédié](/features/documentation/md_new_manual.html#how)).
* Compléter la fiche de métadonnées en renseignant tous les champs descriptifs (résumé, dates, mots-clés, format, etc.). 

![Créer une métadonnée de carte](/assets/maplib/ml_create_metadata_resource.png "Créer une fiche de métadonnées de carte")

### Ajouter des filtres {#maplib_filters}

Pour renseigner une “catégorie thématique”, il suffit de saisir un mot-clé en utilisant le préfixe **thematique:** . Par exemple pour le thème “tourisme” vous devez saisir `thematique:Tourisme`.

Pour renseigner le **type de carte**, saisir le mot-clé :

* `maptype:dynamique` pour une carte interactive (application web...)
* ou  `maptype:statique` pour une carte statique (PDF, format image...)

Si la carte décrite est de type statique, il est possible de renseigner le(s) format(s) d’impression, à l'aide d'un mot-clé en utilisant le préfixe **impression;**. Par exemple : `impression:a3`.

![Carte - Affecter des filtres](/assets/maplib/ml_tags_impression_type_theme.png "Carte - Affecter une thématique, un format et un type")

### Ajouter une vignette {#maplib_thumbnails}

Les vignettes doivent être prédimensionnées à la taille attendue : 150x150. Deux méthodes possibles.

#### Vignette directe {#maplib_thumbnails_direct}

1. dans l’onglet “Ressource”, ajouter un lien
2. ajouter le libellé `_vignette`
3. renseigner l’url de l’image
4. laisser l’action sélectionnée par défaut “Autre”
5. cliquer sur enregistrer

![Carte - Ajouter une vignette directe](/assets/maplib/ml_thumbnail_direct.png)

#### Vignette associée {#maplib_thumbnails_related}

1. créer une fiche “Ressource” nommée “Vignettes”
2. dans l’onglet “Ressource”, ajouter pour chaque vignette :
    * une donnée en renseignant l’url de la vignette
    * ou une donnée en téléversant sur Isogeo le fichier à utiliser comme vignette
3. modifier les fiches relatives aux cartes
4. dans l’onglet “Ressource” ajouter un lien en associant la vignette de la fiche “Vignettes”
5. modifier le libellé “_vignette”
6. sélectionner l’action “Autre”
7. enregistrer

### Ajouter un lien de visualisation {#maplib_view_link}

Deux méthodes possibles.

#### Lien direct {#maplib_view_link_direct}

1. dans l’onglet “Ressource”, ajouter un lien vers une donnée
2. renseigner l’url de votre carte (ou téléverser le fichier image sur Isogeo)
3. ajouter un libellé
4. cocher l’action “visualiser”
5. enregistrer

#### Lien associé {#maplib_view_link_direct}

1. créer une fiche “Ressource” nommée “Cartes”
2. dans l’onglet “Ressource”, ajouter pour chaque carte :
    * une donnée en renseignant l’url de la carte
    * une donnée en la téléversant sur Isogeo
3. modifier les fiches relatives aux cartes
4. dans l’onglet “Ressource” ajouter un lien en associant la carte de la fiche “Cartes”
5. modifier le libellé “Texte libre”
6. sélectionner l’action “Visualiser”
7. enregistrer
