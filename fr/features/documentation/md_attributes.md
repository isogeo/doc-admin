# <i class="fa fa-list-alt"></i> Onglet "Attributs"

L’onglet « Attributs » liste tous les champs attributaires de la donnée et précise pour chaque champ son nom, son alias, son type, sa description et sa langue.

![Mode édition - Attributs](/assets/inv_edit_attributes.png "Mode édition - onglet Attributs")

| Définition          | Liste des champs de la table attributaire |
| :------------------ | :---------------------------------------- |
| Indications         | Le scan remonte le nom ainsi que le type de chaque attribut. Il s&apos;agit donc de renseigner :<br />- l&apos;alias,<br />- une description,<br />- la langue. |
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

## Export des attributs en CSV

En mode visualisation, il est possible d'exporter les attributs au format CSV. Le délimiteur pour séparer les champs peut-être précisé lors de l'export entre : 
* Virgule ,
* Point-virgule ;
* Pipe |
* Délimiteur personnalisé (un caractère entré manuellement dans un champs textuel)

A savoir: Si le caractère choisi pour délimiter les champs est présent dans l'un des champs, il sera supprimé du champs en question.

Le fichier exporté est alors un fichier CSV codé en UTF-8, les chaînes de caractères sont délimitées par des guillements `"`, et comportant 7 colonnes :

| Définition          | Liste des champs de la table attributaire |
| :------------------ | :---------------------------------------- |
| name                | Information contenue dans le champs "Nom"|
| alias               | Information contenue dans le champs "Alias" |
| comment             | Information contenue dans le champs "Alias", dans le cas d'une donnée venant d'une base de données|
| dataType            | Information contenue dans le champs "Type" |
| description         | Information contenue dans le champs "Description" |
| language            | Information contenue dans le champs "Langue" |
| _id                 | Identifiant Isogeo de la donnée |
