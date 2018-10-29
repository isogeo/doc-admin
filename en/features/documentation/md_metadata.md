# "Metadata" tab

The "Metadata" tab is used to display the metadata&apos;s creation date and language.

![Single edition - Metadata](/assets/inv_edit_one_metadata.png "Single edition - Metadata tab")

### Creation date

| Definition          | Metadata creation date |
| :------------------ | :------------------------------------------------ |
| Indications         | It is automatically saved, whether from a scan, a CSW harvest, an XML import or manual creation. This is the date transmitted in the CSW profile&apos;s *dateStamp* tag in ISO 19115.<br />This field cannot be edited. |
| Example             | 06/23/2015                    |
| INSPIRE requirement   | Mandatory                   |
| Batch edition     | No                           |
| Scan                | Yes                           |
| Search engine | Filters                       |

> Tip: if you import an XML file from an existing record (automatically or manually) and choose to overwrite the values, the creation date will be replaced by the one in the XML file. For further details, refer to:
* [XML import](/en/features/documentation/md_import.html) and [CSW harvesting](/en/features/csw_client/csw_harvest.html),
* [dates in Isogeo](/en/appendices/different_dates.html).

### Language

| Definition          | Language in which the metadata is written       |
| :------------------ | :------------------------------------------------    |
| Indications         | The language for the metadata, not the data |
| Example             | French                                             |
| INSPIRE requirement   | Mandatory                   |
| Batch edition     | Yes, by overwriting           |
| Scan                | No                           |
| Search engine | No                         |

> Tip: you can define the default metadata language in the workgroup parameters (see the [dedicated chapter](/en/features/admin/group.html#Defining-the-default-metadata-language)). Although it will not display here, this will be the reference language in your CSW shares.
