# "Quality" tab

The "Quality" tab contains the specifications used for collecting and controlling data, and the results of tests on the data's topological consistency.

![Single edition - Quality](/en/images/inv_edit_one_quality.png "Single edition - Quality tab")

### Specifications conformity

| Definition          | Indicates whether the data set conforms to technical requirements governing its production |
| :------------------ | :---------------------------- |
| Indications         | Specifications may be one of the official standards (Covadis, CNIG, INSPIRE, etc.) or a collection of technical requirements (special technical specifications, special administrative terms and conditions, etc.). You must indicate a specification with which the data is associated, and whether or not the data complies with this specification.<br />A compliance statement is the sole responsibility of the producer; in France, there are no provisions for verifying this statement.<br />Data may comply with one or more specifications (for example, INSPIRE and CNIG). |
| Example             | INSPIRE guide on geographical grid systems - Compliant |
| INSPIRE requirement   | Mandatory                   |
| Batch edition     | Yes, by incrementation           |
| Scan                | No                           |
| Search engine | No                         |

### Topological consistency

| Definition          | Description of the data's quality in strictly technical terms |
| :------------------ | :---------------------------- |
| Indications         | Describes the measurement made and the qualitative and quantitative results obtained. Even if this information may only apply to a portion of the data, it is an indication of the cataloging quality. |
| Example             | Simple topology.<br />The geometry taken from the unified database is simplified by deleting and allocating intermediate points.<br /><br />The properties of this "generalization" operation are as follows:<br /> - Topology and relationship between "communes," "cantons," "arrondissements" and "départements" are retained;<br /> - Peaks on the graph representing limits of "communes," "cantons," "arrondissements" and "départements" are not moved;<br /> - Maximum variance between a generalized limit within the "LIMITS" category (limits of "communes," "cantons," "arrondissements" and "départements") and its equivalent non-generalized limit in the unified database is 1,000 meters. |
| INSPIRE requirement   | Mandatory only for INSPIRE data for Hydrography and Transport Network themes. |
| Batch edition     | Yes, by overwriting           |
| Scan                | No                           |
| Search engine | No                         |
