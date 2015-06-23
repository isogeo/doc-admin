# Systèmes de référence spatiale (SRS) et emprises non reconnus




voir http://documentation.veremes.net//public/fme/fme_ft_systemes_de_projection_francais.pdf

Afin de corriger ce problème, il faut paramétrer FME afin qu’il reconnaisse ce système. Deux
solutions sont possibles :

Le système est un système connu avec un code EPSG Si le but est de configurer un seul logiciel FME, il faut modifier le fichier situé dans le répertoire d’installation de FME, dossier Reproject/Exceptions, correspondant au format utilisé. Il faut ensuite trouver le paragraphe concernant le pays du système de coordonnées. Puis comme pour les systèmes déjà présents dans le document, ajouter une nouvelle ligne pour le système à ajouter.

## Exemples

Le système de coordonnées Lambert93 (EPSG 2154) pour les formats ESRI (Shapefile,
Geodatabases, ...) n’est pas reconnu.

1. Ouvrir le document esriwkt.db
2. Rechercher le paragraphe French
3. Il existe déjà plusieurs définitions pour le système Lambert93
4. Ajouter à la suite votre définition en la recopiant depuis le fichier .prj. Si vous n’en avez pas (geodatabases), vous pouvez depuis ArcMap créer un fichier .prj via la liste des
systèmes/clic droit/sauvegarder comme...


Le système de coordonnées RGF93 / CC42 (EPSG 3942) pour le format Oracle n’est pas
reconnu.

1. Ouvrir le document oracle.db
2. Rechercher le paragraphe French
3. Ajouter la ligne suivante : ORACLE|RGF93.CC42|3942

### Ressources

* trouvez votre système de coordonnées dans le [registre officiel EPSG](http://epsg.io/) ;
* les [systèmes de coordonnées français dans FME](http://documentation.veremes.net//public/fme/fme_ft_systemes_de_projection_francais.pdf).
