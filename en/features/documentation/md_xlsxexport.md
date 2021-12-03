# Export data to spreadsheet

It is possible to export your metadatas in whole or in part as a spreadsheet.

It can help to :

* generate a support to facilitate contributions from intern staff members (metadata parties for instance), a filter can be used in the spreadsheet ;
* help track the cataloging projet ;
* relay internally to allow off-line consultations ;
* generate a backup.

## How to use

This functionnaly can be used directly on the admin plateform, in tab `Inventory` using button `Export to a spreadsheet`.

![Export spreadsheet](/assets/exportFullPage.png)

To export :

1. Search results
2. Click on the export button
3. Choose the naming parameters
4. Choose the export format
5. Export your search results

![Popup Export](/assets/exportModal.png)

The download will start automatically when the files are ready if the modal was not closed.

## Parameters

### Available formats

When exporting, two formats are available :

* `.csv` using the comma as the separator (`,`);
* `.xlss`.

### Personalize output files name

#### Prefix

A prefix can be added to the export files using the following model **Prefix_Isogeo[_ConfigDate]**

#### Date

Possible values :

* No date is added ;
* Only the dae is added, following the \`AAAA-MM-JJ\` model
* Date and time are added, using the \`AAAA-MM-JJ-HHmm\` model

Default value : Date and time

## Content

### Excel content

The excel file is made of four tabs, one for each data type :

* Vector
* Raster
* Service
* Resource

Each tab contains informations specific to each resource type.

![Excel Sample](/assets/excelspreadsheet.png)

### CSV content

The csv export is a zip with four csv files, one for each data type :

* Vector
* Raster
* Service
* Resource

### Content by datatype

The following fields are exported :

| Fields      | Vector      | Raster | Service | Resource |
| :------------- | :---------: |:---------:|:---------:|:---------:|
| Name | X | X | X | |
| Title | X | X | X | X |
| Abstract | X | X | X |X |
| Location | X | X | X | X |
| Owner | X | X | X | X |
| # of catalogs | X | X | X | X |
| Catalogs | X | X | X | X |
| Group theme | X | X | X | X |
| Keywords | X | X | X | X |
| INSPIRE theme | X | X |  | |
| INSPIRE conformity | X | X |  | |
| Collect context | X | X |  | |
| Collect method | X | X |  | |
| Validity start | X | X |  | |
| Validity end | X | X |  |  |
| Update frequency | X | X |  |  |
| Validity comment | X | X |  |  |
| Creation date | X | X | X | X |
| Last update | X | X | X | X |
| Last publication | X | X | X | X |
| # of events | X | X | X | X |
| Format | X | X | X | X |
| SRS (EPSG) | X | X |  |  |
| Extent | X | X | X |  |
| Geometry | X |  |  |  |
| Resolution | X | X |  |  |
| Scale | X | X |  |  |
| # of entites | X |  |  |  |
| # of attributes | X |  |  |  |
| Attributes | X |  |  |  |
| Specifications | X | X | X |  |
| # of specifications | X | X | X |  |
| Resolution | X | X | X |  |
| Topological consistency | X |  |  |  |
| # of conditions | X | X | X | X |
| CGUS (conditions) | X | X | X | X |
| Limitations | X | X | X | X |
| # of layers |  |  | X |  |
| Associated Layers |  |  | X |  |
| Non Associated Layers |  |  | X |  |
| Services | X | X |  |  |
| # of links | X | X | X | X |
| Links | X | X | X | X |
| # of contacts | X | X | X | X |
| Contacts | X | X | X | X |
| Format version | X | X | X |  |
| Encoding | X | X |  |  |
| Edit | X | X | X | X |
| MD - UUID | X | X | X | X |
| MD - Creation date | X | X | X | X |
| MD - Modification | X | X | X | X |
| Langage | X | X | X | X |
