## Onglet "Géographie"

L’onglet « Géographie » représente l’emprise de la donnée sur une carte et indique le format de la donnée, le nombre d’entités, le type de géométrie, le système de coordonnées, les coordonnées de l’emprise, l’échelle et la résolution de la donnée ;

![Edition unitaire - Géographie](/images/inv_edit_one_geography.png "L'édition unitaire - onglet Géographie")

________

## <i class="fa fa-map-marker fa-lg fa-fw"></i> Carte

| Définition                 | Étendue de la ressource dans l’espace géographique, exprimée sous la forme d'un polygone de délimitation |
| :------------------------- | :--------------------------------------------------------- |
| Indications                | L’emprise doit englober l’ensemble des objets contenus dans le jeu de données. En cas d'édition manuelle, le polygone de délimitation doit être le plus ajusté possible, afin de délimiter le plus fidèlement possible la ressource décrite (ne pas donner un rectangle couvrant la France entière pour des données limitées à une commune). Dans l'idéal, le polygone de délimitation couvre seulement des espaces contigus et doit être multiple en cas de territoires éparpillés.<br />Si plusieurs emprises sont indiquées, elles ne doivent pas se superposer. |
| Exemple                    | ![Onglet géographie - carte](/images/inv_edit_one_geography_map_500px.png "La représentation de l'enveloppe convexe d'une donnée sur la carte") |
| Exigence INSPIRE           | Obligatoire            |
| Edition par lot            | Oui, par écrasement    |
| Scan                       | Oui, enveloppe convexe |
| Moteur de recherche        | Non                    |
| Fiche ressource            | Non                           |
| Fiche service              | Oui                           |


> Astuce : si l'enveloppe convexe n'est pas reconnue automatiquement par le scan, consultez [l'annexe à ce sujet](/fr/appendices/scan_srsnotfound_fme_fix.html).

### Saisie manuelle d'une emprise géographique

Pour dessiner manuellement l’emprise de la donnée sur la carte :

1.	Cliquer sur « Modifier » ;
2.	Dans la carte, choisir l’outil « dessiner un polygone » ou « dessiner un rectangle » ;
3.	Tracer l’emprise sur la carte **en respectant le sens anti-horaire (voir plus bas)** ;
4.	Terminer votre saisie en double-cliquant sur la carte ou en recliquant sur le premier sommet du polygone ;
5.	Enregistrer.

**De l'importance du sens de saisie :**

En traçant un polygone, il est essentiel de se préoccuper de l'ordre de saisie, en respectant la règle du sens anti-horaire (dite [Left Hand Rule](https://docs.microsoft.com/en-us/sql/relational-databases/spatial/spatial-data-types-overview)).

En fait, saisir les dans le sens horaire revient à saisir une emprise qui correspond à toute la Terre, à l'exception du polygone lui-même.

Plus d'infos dans [cet article de blog technique](http://www.scalefocus.com/blog/using-spatial-data-in-sql-server-the-left-hand-rule/) (en angais).

______

## Nombre d'entités

| Définition                 | Nombre d'objets géographiques |
| :------------------------- | :---------------------------- |
| Indications                | Doit être un entier.          |
| Exemple                    | 20                            |
| Exigence INSPIRE           | Facultatif                    |
| Edition par lot            | Oui, par écrasement           |
| Scan                       | Oui                           |
| Moteur de recherche        | Non                           |
| Fiche ressource            | Non                           |
| Fiche service              | Non                           |


_____

## Géométrie

| Définition                 | Type de géométrie des objets géographiques |
| :------------------------- | :--------------------------------------------------------- |
| Indications                | L'une des valeurs suivantes :<br />- Point,<br />- LineString,<br />- Polygon,<br />- MultiPoint,<br />- MultiLineString,<br />- MultiPolygon,<br />- GeometryCollection,<br />- CircularString,<br />- CompoundCurve,<br />- CurvePolygon,<br />- MultiCurve,<br />- MultiSurface,<br />- Curve,<br />- Surface,<br />- PolyhedralSurface,<br />- TIN |
| Exemple                    | Polygon |
| Exigence INSPIRE           | Obligatoire            |
| Edition par lot            | Oui, par écrasement    |
| Scan                       | Oui                    |
| Moteur de recherche        | Non                    |
| Fiche ressource            | Non                           |
| Fiche service              | Non                           |

________

## Systèmes de coordonnées

| Définition                 | Nom et code EPSG du système de coordonnées géographique ou projeté |
| :------------------------- | :--------------------------------------------------------- |
| Indications                | Si le système n'a pas été reconnu automatiquement, choisir une valeur dans la liste disponible, personnalisable par l'administrateur ([voir chapitre dédié](/fr/features/admin/srs.html)) |
| Exemple                    | Code EPSG : 2154<br />Nom : RGF93 / Lambert-93  |
| Exigence INSPIRE           | Obligatoire            |
| Edition par lot            | Oui, par écrasement    |
| Scan                       | Oui                    |
| Moteur de recherche        | Filtre                 |
| Fiche ressource            | Non                    |
| Fiche service              | Non                    |


> Astuce : si le système de coordonnées n'est pas reconnu automatiquement par le scan, consultez [l'annexe à ce sujet](/fr/appendices/scan_srsnotfound_fme_fix.html).

________

## Echelle

| Définition                 | Précision géographique de la ressource (surtout utilisée pour les données vecteur) |
| :------------------------- | :--------------------------------------------------------- |
| Indications                | Numérique |
| Exemple                    | 10000 |
| Exigence INSPIRE           | Obligatoire si la résolution n'est pas renseignée |
| Edition par lot            | Oui, par écrasement                         |
| Scan                       | Non                                         |
| Moteur de recherche        | Non                                         |
| Fiche ressource            | Non                                         |
| Fiche service              | Non                                         |

________

## Résolution

| Définition                 | Précision géographique de la ressource (surtout utilisée pour les données raster) |
| :------------------------- | :--------------------------------------------------------- |
| Indications                | Numérique et exprimée en mètres|
| Exemple                    |  5 m |
| Exigence INSPIRE           | Obligatoire si l'échelle n'est pas renseignée |
| Edition par lot            | Oui, par écrasement                           |
| Scan                       | Non                                           |
| Moteur de recherche        | Non                                           |
| Fiche ressource            | Non                                           |
| Fiche service              | Non                                           |

