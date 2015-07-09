# Using the CSW client

If you manage a data catalog that can be harvested using CSW and you want to retrieve this metadata in Isogeo: simply proceed as explained below.

## About CSW nodes

For the purpose of researching and viewing metadata, France's national GeoCatalog is the preferred node of the national Spatial Data Infrastructure (SDI). Its metadatabase is used for reports by France on the implementation of the INSPIRE directive.

Public authorities that possess geographical data and services within the scope of the INSPIRE initiative are encouraged to populate the GeoCatalog. Three methods are available for this purpose:

* referencing their own data catalog, which will be automatically harvested to populate the GeoCatalog.
* posting metadata files to the GeoCatalog.
* directly entering the metadata in the GeoCatalog (this method is explained below).

## Creating a "CSW service" entry point

Proceed as follows to create a "CSW service" entry point:

1.  In the "Entry points" menu, create a new entry point;
2.  Select the "CSW service" type;
3.  Name the entry point (for example: CG Calvados catalog);
4.  Enter the URL of the CSW without the parameters (excluding whatever comes after the `?`);
5.  Save;
6.  Scan.

![New CSW entry point](/en/images/adm_client_csw_new.png "Harvesting a CSW server")

Once the scan has finished, all the metadata records gathered can be viewed in the inventory.

These records cannot be modified since we assume that they are still managed in the harvested catalog. If you want to modify them using Isogeo, you must delete the entry point and separate from your old cataloging tool.

Comments:

* CSW harvesting follows the same operating rules as XML ISO 19139 import described in the chapter "Importing existing metadata";
* The XML ISO 19139 available in the record's "Resources" tab is identical to the original (even if it is invalid).
