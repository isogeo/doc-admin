## "Attributes" tab

The "Attributes" tab lists all the data's attribute fields and, specifies a name, alias, description and language for each one.

![Single edition - Attributes](/en/images/inv_edit_one_attributes.png "Single edition - Attributes tab")

> Tip: since each attribute is a sub-resource of the metadata, you must save changes to each attribute before saving changes at the resource level; otherwise any changes made will be lost.

| Definition          | List of fields in the attribute table |
| :------------------ | :---------------------------------------- |
| Indications         | The scan provides the name and type of each attribute. You must enter:<br />- the alias,<br />- a description,<br />- a language. |
| Example             | Name: type_epci<br />Alias: Type of inter-municipality<br />Type: char(80)<br />Description: EPCI type (OSM source):<br />- CC = CommunautÃ© de Communes (1900)<br />- CA = CommunautÃ© d'AgglomÃ©ration (222)<br />- CU = CommunautÃ© Urbaine (15)<br />- metropole = MÃ©tropole (1)<br />- SAN = Syndicat d'AgglomÃ©ration Nouvelle (4)<br />- NULL = not entered (3)<br />Language: French |
| INSPIRE requirement   | Optional                   |
| Batch edition     | Yes, by incrementation           |
| Scan                | Yes                           |
| Search engine | No                           |


