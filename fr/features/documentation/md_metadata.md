## Onglet "Propriétés"

L’onglet « Propriétés » permet d’indiquer la date de création et la langue de la fiche de métadonnée. C&apos;est aussi dans cet onglet que se trouve le lien de téléchargement de la fiche au format XML ISO19139.

![Edition unitaire - Propriétés](/assets/inv_edit_one_properties.png "L&apos;édition unitaire - onglet Propriétés")

### <i class="fa fa-file-o"></i> Date de création

| Définition          | Date de création de la métadonnée |
| :------------------ | :------------------------------------------------ |
| Indications         | Elle est enregistrée automatiquement, que ce soit à partir d&apos;un scan, d&apos;un import XML ou d&apos;une création manuelle. C&apos;est cette date qui est transmise dans la balise *dateStamp* du profil CSW de l&apos;ISO 19115.<br />Il n&apos;est pas possible d&apos;éditer ce champ. |
| Exemple             | 23/06/2015                    |
| Exigence INSPIRE    | Obligatoire                   |
| Edition par lot     | Non                           |
| Scan                | Oui                           |
| Moteur de recherche | Filtres                       |
| Fiche ressource     | Oui                           |
| Fiche service       | Oui                           |

> Astuce : si vous importez un fichier XML depuis une fiche existante (automatique ou manuelle) et que vous choisissez d&apos;écraser les données, la date de création sera remplacée par celle contenue dans le XML. Pour plus d&apos;informations, consulter :
* l&apos;[import XML](../../features/documentation/md_import.html) et le [moissonnage CSW](../../features/csw_client/csw_harvest.html),
* les [dates dans Isogeo](../../appendices/different_dates.html).

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

> Astuce : il est possible de définir la langue des métadonnées par défaut dans les paramètres du groupe de travail (voir [chapitre dédié](../../features/admin/group.html#dfinir-la-langue-des-mtadonnes-par-dfaut)). Elle n&apos;apparaîtra pas ici mais sera celle de référence dans vos partages CSW.

### <i class="fa fa-download"></i> La fiche au format XML (ISO 19139)

La structure des fiches de métadonnées sur les jeux de données géographiques sont standardisées par l&apos;ISO (International Organization for Standardization) sous la référence 19139, qui est l&apos;implémentation XML du modèle 19115, elle-même définie par le [comité ISO /TC 211](https://en.wikipedia.org/wiki/ISO/TC_211), en charge des questions géograhiques au sein de l&apos;organisme de standardisation.

Pleinement interopérable, la plateforme Isogeo maintient à jour en permanence la [version 19139:2007](http://www.iso.org/iso/catalogue_detail.htm?csnumber=32557) des fiches de métadonnées, vous permettant de les récupérer à tout moment à des fins d&apos;échanges ou d&apos;import dans une autre fiche par exemple.

Elle est systématiquement accessible dans la section `Services associés` de l&apos;onglet Ressources d&apos;une fiche ou sous le bouton `Télécharger` lorsque la fiche est partagée dans un OpenCatalog.

![Export XML](/assets/xml_export.png "Aperçu d&apos;un export XML19139 d&apos;une fiche Isogeo")
