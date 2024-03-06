# <i class="fa fa-list-alt"></i> Onglet "Attributs"

L’onglet « Attributs » liste tous les champs attributaires de la donnée et précise pour chaque champ son nom, son alias, son type, sa description et sa langue.

![Mode édition - Attributs](/assets/inv_edit_attributes.png "Mode édition - onglet Attributs")

| Définition          | Liste des champs de la table attributaire |
| :------------------ | :---------------------------------------- |
| Indications         | Le scan remonte le nom, le type de chaque attribut et le commentaire / l'alias en base de donnée. Il s&apos;agit donc de renseigner :<br />- l&apos;alias,<br />- une description,<br />- la langue. |
| Exemple             | Nom : type_epci<br />Alias : Type d&apos;intercommunalité<br />Type : char(80)<br />Description : Type d&apos;EPCI (source OSM) :<br />- CC = Communauté de Communes (1900)<br />- CA = Communauté d&apos;Agglomération (222)<br />- CU = Communauté Urbaine (15)<br />- metropole = Métropole (1)<br />- SAN = Syndicat d&apos;Agglomération Nouvelle (4)<br />- NULL = non renseigné (3)<br />Langue : Français |
| Exigence INSPIRE    | Facultatif                    |
| Edition par lot     | Oui, par incrémentation       |
| Scan                | Oui                           |
| Moteur de recherche | Non                           |
| Fiche ressource     | Non                           |
| Fiche service       | Non                           |

## Édition par lots de la langue des attributs

Pour faciliter la saisie de la langue des attributs, il est possible de l&apos;affecter en une seule fois **uniquement aux champs textuels qui contiennent du texte traduisible**. De façon à respecter les bonnes pratiques de modélisation d&apos;une base de données relationnelle, les types suivants sont éligibles :

* clob,
* char,
* nvarchar,
* nvarchar2,
* string,
* text,
* texte,
* varchar,
* varchar2.

## Export et import des attributs en CSV {#export_import_attributes}

Pour faciliter la documentation des attributs par des utilisateurs n'ayant pas accès à la plateforme par exemple, vous pouvez exporter les exporter afin que ces derniers les complètent dans un tableur puis importer le tableau complété dans la fiche de métadonnée.

Pour information, le markdown et les sauts de lignes éventuels sont gérés à l'export et à l'import. 

### Export {#export}

En mode consultation de la fiche, il est possible d'exporter les attributs au format CSV. Le délimiteur pour séparer les champs peut-être précisé lors de l'export entre : 

* Point-virgule ; (idéal pour l'ouverture avec Excel)
* Virgule ,
* Pipe |
* Délimiteur personnalisé (un caractère entré manuellement dans un champ textuel)

**A savoir** : Si le caractère choisi pour délimiter les champs est présent dans l'un des champs, il sera supprimé du champ en question.

Le fichier exporté est alors un fichier CSV encodé en *UTF-8*, dont les chaînes de caractères sont délimitées par des guillemets `"`, et comporte 7 colonnes :

| Nom de la colonne   | Champ Isogeo |
| :------------------ | :---------------------------------------- |
| name                | Nom |
| alias               | Alias |
| comment             | Alias, *en italique* dans le cas d'une donnée de BDD |
| dataType            | Type |
| description         | Description |
| language            | Langue |
| _id                 | Identifiant Isogeo de l'attribut |

### Import {#import}

En mode édition de la fiche, il est possible d'importer des attributs à partir d'un fichier CSV encodé en UTF-8. Les chaînes de caractères peuvent être délimitées par des guillemets `"` ou non. En effet cette pratique dépend du tableur utilisé (Excel, Libre Office etc.). Le délimiteur de colonne est automatiquement identifié. 

Le contenu du fichier doit respecter la présence des colonnes suivantes :

| Nom de la colonne   | Champ Isogeo |
| :------------------ | :---------------------------------------- |
| name                | Nom |
| alias               | Alias |
| comment             | Alias, *en italique* dans le cas d'une donnée de BDD |
| dataType            | Type |
| description         | Description |
| language            | Langue |
| _id                 | Identifiant Isogeo de l'attribut |

A savoir: Si un attribut se trouve en plusieurs exemplaires, seul le dernier exemplaire sera importé.

Avant de valider l'import, deux options sont sélectionnables : 
* Ne mettre à jour que les champs renseignés;
* Ajouter les nouveaux attributs.

#### Ne mettre à jour que les champs renseignés  

Dans le cas où des attributs sont déjà documentés sur la fiche et que des champs sont vides dans le fichier CSV, l'import ne modifiera que les champs renseignés dans le fichier et n'écrasera pas les attributs déjà documentés. Si vous souhaitez écraser le contenu pour tous les champs (même vides), il vous faudra décocher cette option.

#### Ajouter les nouveaux attributs

Par défaut, l'import ne met à jour que les attributs ayant un nom similaire aux attributs déjà présents dans la fiche. Si vous souhaitez ajouter de nouveaux attributs à la fiche, il vous faudra cocher cette option.

