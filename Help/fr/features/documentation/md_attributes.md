## <i class="fa fa-list-alt"></i>  Onglet "Attributs"

L’onglet « Attribut » liste tous les champs attributaires de la donnée et précise pour chaque champ son nom, son alias, sa description et sa langue.

![Edition unitaire - Attributs](/images/inv_edit_one_attributes.png "L&apos;édition unitaire - onglet Attributs")

> Astuce : chaque attribut étant une sous-ressource de la métadonnée, il faut enregistrer les modifications de chaque attribut avant d&apos;enregistrer les modifications au niveau de la métadonnée, sans quoi les modifications seront perdues !


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


### Edition par lot de la langue des attributs

De façon à faciliter la saisie de la langue des attributs, il est possible de l&apos;affecter en une seule fois **uniquement aux champs textuels qui contiennent du texte traduisible**. De façon à respecter les bonnes pratiques de modélisation d&apos;une base de données relationnelle, les types suivants sont éligibles :

* clob
* nvarchar
* nvarchar2
* string
* text
* texte
* varchar
* varchar2

En revanche les attributs de type *CHAR* ou *NCHAR*, de taille fixe, sont destinés à recevoir des listes de valeur, des énumérations, qui s&apos;apparentent à des codes informatiques. Ils ne sont donc pas concernés par cette fonctionnalité.

