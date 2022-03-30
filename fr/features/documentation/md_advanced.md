## Onglet "Avancé"

L’onglet « Avancé » permet de spécifier le format, la version du format et l’encodage des caractères de la donnée.

![Edition unitaire - Avancé](/assets/inv_edit_one_advanced.png "L&apos;édition unitaire - onglet Avancé")

### Type de ressource

| Définition          | Type de ressource renseigné                       |
| :------------------ | :------------------------------------------------ |
| Indications         | Il s&apos;agit d&apos;indiquer s&apos;il s&apos;agit d&apos;un jeu de données ou d&apos;un ensemble de données. Dans Isogeo, les modèles sont clairement différenciés au moment de la création de la fiche de métadonnée (manuelle ou automatique). |
| Exigence INSPIRE    | Obligatoire                   |
| Edition par lot     | Oui, par écrasement           |
| Scan                | Oui                           |
| Moteur de recherche | Filtres                       |
| Fiche ressource     | Non                           |
| Fiche service       | Non                           |

### <i class="fa fa-file"></i> Format

| Définition          | Format informatique                               |
| :------------------ | :------------------------------------------------ |
| Indications         | Cette liste est restreinte aux formats reconnus automatiquement par Isogeo.<br />En ce qui concerne les métadonnées de service, la liste est celle des 6 protocles reconnus (WMS, WFS, WMTS, Esri Feature, Esri Map, Esri Tiled Map).<br />En ce qui concerne les métadonnées de ressource, la liste est libre. |
| Exemple             | Shapefile<br />Version 1.0<br /><br />WMS<br />1.3.0<br /><br />Microsoft Word<br />2013 |
| Exigence INSPIRE    | Obligatoire                                |
| Edition par lot     | Oui, par écrasement                        |
| Scan                | Oui (pas la version)                       |
| Moteur de recherche | Filtres (sauf pour les formats libres des fiches ressources qui sont seulement il s&apos;agit d&apos;indiquerpris en compte dans la recherche textuelle) |
| Fiche ressource     | Oui, liste libre                              |
| Fiche service       | Oui, liste spécifique des formats OGC et Esri reconnus |

### <i class="fa fa-code"></i> Encodage

| Définition          | Codage des caractères du jeu de données           |
| :------------------ | :------------------------------------------------ |
| Indications         | L&apos;encodage définit la façon dont sont codés les caractères et il est souvent lié au système d&apos;exploitation et aux logiciels utilisés. Par exemple, si vous créez vos données avec ArcGIS sur Windows, l&apos;encodage a (très) grandes chances d&apos;être *Windows-1252* qui est une déclinaison de l&apos;*[ISO 8859-1](https://fr.wikipedia.org/wiki/ISO_8859-1)*. |
| Exemple             | UTF-8 |
| Exigence INSPIRE    | Obligatoire, si l'encodage utilisé n'est pas basé sur du utf-8  |
| Edition par lot     | Oui, par écrasement           |
| Scan                | Non                           |
| Moteur de recherche | Non                           |
| Fiche ressource     | Non                           |
| Fiche service       | Non                           |
