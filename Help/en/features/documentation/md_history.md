# "History" tab

The "History" tab describes the data&apos;s creation context and method. It provides chronological information about all data events that have occurred (creation, update, publication, etc.). It also allows for entering the data&apos;s validity period and update frequency.

![Single edition - History](/images/inv_edit_one_history.png "Single edition - History tab")

### Collection context

| Definition                 | Purpose of collection |
| :------------------------- | :---------------------- |
| Indications                | Indicate why and in what context this data was produced |
| Example                    | The CARTO® database is one of the major databases produced by France&apos;s National Geographic Institute. It first saw the light of day in the 1980s with the development of powerful data processing tools that opened up new avenues for the computerized management and analysis of localized data.<br /><br />It lends itself particularly well to thematic mapping as well as to studies for design, infrastructure management and land-use planning, both at France&apos;s departmental and regional levels. |
| INSPIRE requirement   | Mandatory                   |
| Batch edition     | Yes, by overwriting           |
| Scan                | No        |
| Search engine        | No                 |

### Collection method

| Definition                 | Method and means used to create and update the data |
| :------------------------- | :------------------------------------- |
| Indications                | Indicate how the data was created, based on which data (aerial orthophotography, CAD, etc.), using which technologies (GPS, LiDAR, digitization, etc.) and which tools. |
| Example                    | The CARTO® database was established based on:<br />- the digitization of the IGN&apos;s 1:50,000 maps,<br />- SPOT satellite imaging. |
| INSPIRE requirement   | Mandatory                   |
| Batch edition     | Yes, by overwriting           |
| Scan                | No        |
| Search engine        | No                 |

### Validity period

| Definition                 | Time period covered by data content |
| :------------------------- | :---------------------------------------------------- |
| Indications                | This period can be interpreted in one of two ways:<br />- technically: the object dates, from least recent to most recent;<br/>- thematically: for example, using the period of validity for a local master plan. |
| Example                    | From 04/02/2012 to 08/09/2017 |
| INSPIRE requirement   | Mandatory                   |
| Batch edition     | Yes, by overwriting           |
| Scan                | No        |
| Search engine        | No                 |

### Comment

| Definition                 | Additional details |
| :------------------------- | :------------------------- |
| Indications                | Note field to provide additional details on the validity period, or any other information. |
| Example                    | The data is updated sporadically in line with update requests under a local master plan  |
| INSPIRE requirement   | Optional        |
| Batch edition     | Yes, by overwriting           |
| Scan                | No        |
| Search engine        | No                 |

### Update frequency

| Definition                 | Time interval between updates on the data |
| :------------------------- | :------------------------------------------------------ |
| Indications                | Data update frequency. The goal is to provide information on the stability of data versions: if it is outdated (supplied regularly), or updated continuously at average or unknown periods. |
| Example                    | Every 1 year(s)    |
| INSPIRE requirement   | Mandatory                   |
| Batch edition     | Yes, by overwriting           |
| Scan                | No        |
| Search engine        | No                 |

### Events

| Definition                 | History of key dates in the life of the data |
| :------------------------- | :------------------------------------------------ |
| Indications                | These dates report on the life of the data. There are 3 types of indications (corresponding to 3 colors): <br /><br />- creation (green, unique, manual): the very first time the data was created. This is not the reference date for the phenomenon described. If a data series is a photograph taken on 15 May 2000 of a historical monument dating back to 1920, the resource creation date is 15 May 2000, not 1920;<br /><br />- modification (blue, multiple, automatic and manual): indicates data revision. The scan automatically creates an event if modifications are detected in the geometry, attributes or projection;<br /><br />- publication (gray, multiple, manual):  date when the resource is available, or the date of its entry into force.|
| Example                    | ![History tab - Events](/images/inv_edit_one_history_events_900px.png "Managing events in the life of a data item") |
| INSPIRE requirement           | Mandatory if the validity period is not specified and strongly recommended |
| Batch edition            | Yes, by incrementation, for modification and publication dates |
| Scan                       | Yes, for modification dates |
| Search engine        | Sort                    |

> Tip: since each event is a sub-resource of the metadata, you must save any changes made to each event before saving changes at the resource level, otherwise your changes will be lost!
