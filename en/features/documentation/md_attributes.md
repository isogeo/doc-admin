# <i class="fa fa-list-alt"></i> "Attributes" tab

The "Attributes" tab lists all the data&apos;s attribute fields and specifies a name, alias, type, description and language for each one.

![Edition mode - Attributes](/assets/inv_edit_attributes.png "Edition mode - Attributes tab")

| Definition          | List of fields in the attribute table       |
| :------------------ | :------------------------------------------ |
| Indications         | The scan provides the name and type of each attribute. You must enter:<br />- the alias,<br />- a description,<br />- a language. |
| Example             | Name: type_epci<br />Alias: Type of inter-municipality<br />Type: char(80)<br />Description: EPCI type (OSM source):<br />- CC = Communauté de Communes (1900)<br />- CA = Communauté d&apos;Agglomération (222)<br />- CU = Communauté Urbaine (15)<br />- metropole = Métropole (1)<br />- SAN = Syndicat d&apos;Agglomération Nouvelle (4)<br />- NULL = not entered (3)<br />Language: French |
| INSPIRE requirement   | Optional                  |
| Batch edition         | Yes, by incrementation    |
| Scan                  | Yes                       |
| Search engine         | No                        |
| Resource page         | No                        |
| Service page          | No                        |

## Batch editing of attribute language

To facilitate the input of attributes language, it is possible to assign it in one go **only to the textual fields which contain translatable text**. In order to comply with good relational database modeling practives, the following types are eligible:

* clob,
* char,
* nvarchar,
* nvarchar2,
* string,
* text,
* texte,
* varchar,
* varchar2.
