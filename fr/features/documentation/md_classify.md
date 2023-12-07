# Classer facilement mes données grâce à l'étiquetage

Dans Isogeo, il est possible d'affecter 3 types d'étiquettes aux fiches de métadonnées :

* les catalogues, orientés usages, métiers, thématiques ;
* les thématiques INSPIRE pour les données ou services destinés à être en conformité avec la directive européenne ;
* les thématiques, spécifiques à chaque groupe, permettant un classement plus personnalisable ;
* les mots-clés descriptifs.

Dans tous les cas, une donnée peut se voir affecter une ou plusieurs étiquettes de chaque type, même si dans le cas d'INSPIRE, il est recommandé de ne choisir qu'un seul thème.

## Comment étiqueter

Première étape du cycle de documentation, il est possible d'affecter 3 types d'étiquettes via un simple bouton :

1. Aller dans l'inventaire et sélectionner une ou plusieurs données ;
2. Cliquer sur `Etiqueter`, le widget se déroule alors ;

![Etiqueter](/assets/inv_edit_tags_widget.png "Widget étiquetage")

Vous voyez alors :

* la liste des étiquettes déjà affectées aux données sélectionnées, par types et par ordre alphabétique, avec le nombre d'occurrence pour les mots-clés ;
* un champ de saisie vous permettant de :
  * rechercher dans les étiquettes déjà affectées ;
  * rechercher parmi les mots-clés existant dans tous les groupes de travail Isogeo (y compris le vôtre) ;
* quatre boutons de filtres :
  * `Voir tous les catalogues` permet d'afficher tous les catalogues disponibles dans votre groupe de travail ;
  * `Voir toutes les thématiques Inspire` permet d'afficher toutes les thématiques de la directive ;
  * `Voir toutes les thématiques du groupe de travail` permet d'afficher toutes les thématiques spécifiques au groupe de travail ;
  * `Voir uniquement les mots-clés` permet d'afficher les mots-clés utilisés dans les données selectionnées et les mots-clés correspondant à la recherche saisie ;

![Affecter et enlever des mots-clés](/assets/inv_edit_tags_keywords.gif "Mots-clés")

## Le pot commun des mots-clés sur Isogeo

Les mots-clés libres sont issus d'un référentiel ouvert et partagé à tous les groupes de travail de la plateforme Isogeo. Cela permet d'assurer une certaine cohérence au niveau de la documentation des métadonnées et de guider les éditeurs au moment de choisir les étiquettes.

Cependant, il faut garder quelques règles en tête :

* on ne peut pas créer 2 mots-clés avec une casse différente : ce sont les mêmes (`ABC` est équivalent à `abc`) ;
* on peut créer 2 mots-clés qui diffèrent par leur accentuation : ils seront tous 2 renvoyés par les mêmes critères de recherche textuelle, avec ou sans accents ('àéù' est différent de 'aeu') ;
* si un mot-clé n'existe pas, vous pouvez le créer depuis le bouton `Etiqueter` si et seulement si la [liste n'est pas restreinte](/features/admin/keywords.md#restrict_keywords) en cliquant sur `Créer le mot-clé "Nouveau mot-clé"`. Le mot-clé est ensuite coché automatiquement et peut être affecté à la ou aux fiche(s) sélectionnée(s).

Ces règles s'appliquent également aux thématiques, à la seule différence que celles-ci doivent au préalable être sélectionnées ou créées depuis l'onglet Administration pour constituer la liste restreinte au groupe de travail.

## Recommandation minimale d'affectation de mots-clés

Afin de faciliter la recherche et la découverte, il est conseillé d'affecter, à minima, un mot-clé pour :

* le producteur des données (IGN, DGFIP, CG Mayenne, etc.) ;
* la direction productrice (DRB, DTECV, etc.) ;
* le produit (BD Topo ; BD Ortho, BD Carto, Scan 25, Cadastre etc.) ;
* le territoire concerné (France ; Pays-de-la-Loire, Mayenne, Laval, etc.) ;
* le thème correspondant à celui utilisé au sein de la base de donnée et notamment dans les préfixes des noms de données (Pédologie, Déchet, Environnement, Rivière, Social, etc.) ;
* le sous-thème (Assainissement collectif, ENS, SAGE, etc.) ;
* la date pour les données millésimées.

Il est recommmandé d'écrire les mots-clés dénombrables au pluriel.
