# "Identification" Tab

This tab contains the basic information for a resource. It is essential since this is the most useful information for a user.

![Single edition - Identification](/images/inv_edit_one_identification.png "Single edition - Identification tab")

### Title

| Definition       | Title of the resource. The title must distinguish the data from any other similar data. |
| :--------------- | :--------------------------------------  |
| Indications      |  The title must be unique, and must systematically indicate: the geographic phenomenon represented, the territory covered, and a year for the data if it has a version or date. </br><br>Typical structure: *Title [(Collection)] - Territory concerned + geographic bounding box [- date]*. |
| Example          |  Towns - Metropolitan France - 2014 |
| INSPIRE requirement   | Mandatory                   |
| Batch edition     | Yes, by overwriting           |
| Scan                | No        |
| Search engine        | Yes (+ sort)                |

### Abstract

| Definition       | Narrative description of whatever the data represents. |
| :--------------- | :--------------------------------------  |
| Indications      |  The description is split into two parts: <br />- A generic part, common to the batch to which the data belongs; <br />- a specific part, relating to the data set in question. |
| Example          |  GEOFLA® is a digital product that describes the administrative boundaries for metropolitan France, overseas departments, and the departmental authority of Mayotte. It is derived from the cartographic database (BD CARTO®) for its geometric part, and the administrative database for its descriptive part.<br /><br />  This data set contains the "communes" with, in addition to their description, the description of the higher-level administrative unit: "canton," "arrondissement," "département" and "région." In France, a "commune" represents the smallest administrative entity. It is described by the sides of the communal planar graph. These represent communes as polygons.
| INSPIRE requirement   | Mandatory                   |
| Batch edition     | Yes, by overwriting           |
| Scan                | No        |
| Search engine        | Yes                  |

### Resource location / name of the data

| Definition          | The storage location of the data, whether a file or a database. |
| :------------------ | :--  |
| Indications         | Nothing in particular. |
| Example             | \\\datastore\SIG\DATA\Vecteur\GeoFLA\2014\Communes\Métropole\COMMUNE.SHP |
| INSPIRE requirement   | Mandatory                |
| Batch edition     | Yes, by overwriting      |
| Scan                | Yes: <br />- Absolute path for the files,<br />- Server name + database/instance name,<br />- Name of the SDE file for Esri architecture|
| Search engine | X                   |


### INSPIRE validation report

For all data covered by the Inspire directive, the validation report tells whether the metadata is compliant with the standard.
