# Classer facilement mes données grâce à l&apos;étiquetage

Dans Isogeo, il est possible d&apos;affecter 3 types d&apos;étiquettes aux fiches de métadonnées :

* les catalogues, orientés usages, métiers, thématiques ;
* les thématiques INSPIRE pour les données destinées à être en conformité avec la directive européenne ;
* les mots-clés descriptifs.

Dans tous les cas, une donnée peut se voir affecter une ou plusieurs étiquettes de chaque type, même si dans le cas d&apos;INSPIRE, il est recommandé de ne choisir qu&apos;une seule thématique.

## Comment étiqueter

Première étape du cycle de documentation, il est possible d&apos;affecter 3 types d&apos;étiquettes via un simple bouton :

1.	Aller dans l&apos;inventaire et sélectionner une ou plusieurs données ;
2.	Cliquer sur `Etiqueter`, le widget se déroule alors ;

![Etiqueter](/assets/inv_edit_tags_widget.png "Widget étiquetage")

Vous voyez alors :

* la liste des étiquettes déjà affectées aux données sélectionnées, par types et par ordre alphabétique, avec le nombre d&apos;occurrence pour les mots-clés ;
* un champ de saisie vous permettant de :
  * rechercher dans les étiquettes déjà affectées ;
  * rechercher parmi les mots-clés existant dans tous les groupes de travail Isogeo (y compris le vôtre) ;

* trois boutons de filtres :
  * `Voir tous les catalogues` permet d&apos;afficher tous les catalogues disponibles dans votre groupe de travail ;
  * `Voir toutes les thématiques Inspire` permet d&apos;afficher toutes les thématiques de la directive ;
  * `Voir les mots-clés` permet d&apos;afficher les mots-clés utilisés dans les données selectionnées et les mots-clés correspondant à la recherche saisie ;

![Affecter et enlever des mots-clés](/assets/inv_edit_tags_keywords.gif "Mots-clés")

## Le pot commun des mots-clés sur Isogeo

Les mots-clés libres sont issus d&apos;un référentiel ouvert et partagé à tous les groupes de travail de la plateforme Isogeo. Cela permet d&apos;assurer une certaine cohérence au niveau de la documentation des métadonnées et de guider les éditeurs au moment de choisir les étiquettes.

Cependant, il faut garder quelques règles en tête :

* on ne peut pas créer 2 mots-clés avec une casse différente : ce sont les mêmes (&apos;ABC&apos; est équivalent à &apos;abc&apos;) ;

* on peut créer 2 mots-clés qui diffèrent par leur accentuation : ils seront tous 2 renvoyés par les mêmes critères de recherche textuelle, avec ou sans accents (&apos;àéù&apos; est différent de &apos;aeu&apos;) ;

## Recomendation minimale d'affectation de mots-clés

Afin de faciliter la recherche et la découverte, il est conseillé d'affecter, à minima, un mot-clé pour :

* le producteur des données (IGN, DGFIP, CG Mayenne, etc.) ;
* la direction productrice (DRB, DTECV, etc.) ;
* le produit (BD Topo ; BD Ortho, BD Carto, Scan 25, Cadastre etc.) ;
* le territoire concerné (France ; Pays-de-la-Loire, Mayenne, Laval, etc.) ;
* le thème correspondant à celui utilisé au sein de la base de donnée et notamment dans les préfixes des noms de données (Pédologie, Déchet, Environnement, Rivière, Social, etc.) ;
* le sous-thème (Assainissement collectif, ENS, SAGE, etc.) ;
* la date pour les données millésimées.

Il est recommendé d'écrire les mots-clés au pluriel.
