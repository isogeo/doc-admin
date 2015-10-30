## Onglet "Métadonnée"

L’onglet « Métadonnées » permet d’indiquer la date de création et la langue de la fiche de métadonnée.

![Edition unitaire - Métadonnée](/fr/images/inv_edit_one_metadata.png "L'édition unitaire - onglet Métadonnée")

### Date de création

| Définition          | Date de création de la métadonnée |
| :------------------ | :------------------------------------------------ |
| Indications         | Elle est enregistrée automatiquement, que ce soit à partir d'un scan, d'un moissonnage CSW, d'un import XML ou d'une création manuelle. C'est cette date qui est transmise dans la balise *dateStamp* du profil CSW de l'ISO 19115.<br />Il n'est pas possible d'éditer ce champ. |
| Exemple             | 23/06/2015                    |
| Exigence INSPIRE    | Obligatoire                   |
| Edition par lot     | Non                           |
| Scan                | Oui                           |
| Moteur de recherche | Filtres                       |
| Fiche ressource     | Oui                           |
| Fiche service       | Oui                           |

> Astuce : si vous importez un fichier XML depuis une fiche existante (automatique ou manuelle) et que vous choisissez d'écraser les données, la date de création sera remplacée par celle contenue dans le XML. Pour plus d'informations, consulter :
* l'[import XML](/fr/features/documentation/md_import.html) et le [moissonnage CSW](/fr/features/csw_client/csw_harvest.html),
* les [dates dans Isogeo](/fr/appendices/different_dates.html).

### Langue

| Définition          | Langue dans laquelle est rédigée la métadonnée       |
| :------------------ | :------------------------------------------------    |
| Indications         | La langue de la métadonnée et non celle de la donnée |
| Exemple             | Français                                             |
| Exigence INSPIRE    | Obligatoire                   |
| Edition par lot     | Oui, par écrasement           |
| Scan                | Non                           |
| Moteur de recherche | Non                           |
| Fiche ressource     | Oui                           |
| Fiche service       | Oui                           |

> Astuce : il est possible de définir la langue des métadonnées par défaut dans les paramètres du groupe de travail (voir [chapitre dédié](/fr/features/admin/group.html#dfinir-la-langue-des-mtadonnes-par-dfaut)). Elle n'apparaîtra pas ici mais sera celle de référence dans vos partages CSW.
