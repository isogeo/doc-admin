# Systèmes de référence spatiale (SRS) et emprises non reconnus

Il peut arriver que le scan ne renseigne pas le système de coordonnées ou l'enveloppe convexe. Basé sur FME, il faut s'assurer que les projections soient renseignées de façon à être correctement lues par l'[ETL](https://fr.wikipedia.org/wiki/Extract_Transform_Load).

## Cas n°1 (majoritaire) : une emprise, pas de SRS

Dans la majeure partie des cas, le problème provient du fait que FME ne reconnaisse pas le système de coordonnées. Cela ne veut pas dire que le système n’a pu être lu et utilisé par FME. Pour résumer, FME utilise la définition du système, mais ne le reconnaît pas.

![Une emprise, pas de SRS](/fr/images/annex_srsNotFound_case1_NoSRS_ButMap.png "Problème de configuration des projections de FME - Cas 1")

Afin de corriger ce problème, il faut donc indiquer à FME comment reconnaître ce système. Deux cas de figure sont possibles :

### Le système est un système connu avec un code EPSG

Si le but est de configurer un seul logiciel FME, il faut se rendre dans le dossier `Reproject/Exceptions` (dans le répertoire d’installation de FME), et éditer le fichier correspondant au format utilisé. Il faut ensuite trouver le paragraphe concernant le pays du système de coordonnées. Puis comme pour les systèmes déjà présents dans le document, ajouter une nouvelle ligne pour le système à ajouter.

![Modification du fichier esriwkt.db](/fr/images/annex_srsNotFound_EditWKT.png "Ajouter la reconnaissance d'une projection à FME")

#### Exemples

Le système de coordonnées Lambert93 (EPSG 2154) pour les formats ESRI (Shapefile,
Geodatabases...) n’est pas reconnu :

1. Ouvrir `esriwkt.db`,
2. Rechercher le paragraphe `French`,
3. Par défaut, il existe déjà plusieurs définitions pour le système Lambert93 ;
4. Ajouter votre définition en la recopiant depuis le fichier .prj.

> Astuce : si vous n'avez pas de fichier `.prj` (stockage en geodatabases par exemple), vous pouvez en créer un la liste des systèmes (clic droit/sauvegarder comme...).

Le système de coordonnées RGF93 / CC42 (EPSG 3942) pour le format Oracle n’est pas
reconnu :

1. Ouvrir le document `oracle.db`,
2. Rechercher le paragraphe `French`,
3. Ajouter la ligne suivante : `ORACLE|RGF93.CC42|3942`.

## Cas n°2 : ni emprise, ni SRS

Si la fiche n’a pas d’emprise, c'est que la reprojection n’a pu être effectuée, ce qui signifie que FME ne possède pas le système d’origine.

![Ni SRS, ni emprise](/fr/images/annex_srsNotFound_case2_NoSRS_NoMap.png "Problème de configuration des projections de FME - Cas 2")

Cela peut se produire pour les formats de données qui ne gèrent pas correctement les systèmes de coordonnées, comme cela est le cas des fichiers CAO / DAO par exemple.

### Ressources

* trouvez votre système de coordonnées dans le [registre officiel EPSG](http://epsg.io/) ;
* les [systèmes de coordonnées français dans FME](http://documentation.veremes.net/public/fme/fme_ft_systemes_de_projection_francais.pdf).
