# Resources tailored to uses

Data administrators sometimes provide resources that are associated with data that are not accessible or visible by everyone. The classic scenario is to have different permissions for the general public and for internal departments.

As always with Isogeo:

* Use take priority: the different access levels for the resources depend on the type of users, in other words on the recipients of the shares;
* Metadata can be created for anything and everything: a package of geographic services can also be minimally documented;
* Document one time, validate X times.

## Implementation

### Standard scenario

For example, in the Isogeo demonstration account, we have inventorized the data on the [GéoLittoral portal](http://www.geolittoral.developpement-durable.gouv.fr/). Imagine a scenario where the marine submersion metadata record offers 3 levels of resources associated with uses:

* The possibility for **everyone** (general public) to **download** the raw data;
* The possibility for **informed users** to **view** the WMS flow (rendered from the information layer);
* The possibility for **internal agents** to **access data via a WFS flow** (displaying attributes).

### Procedure

In order, we did the following:

1.	Created a "resource"-type metadata record on the mapping server for informed users (WMS server) and assigned it to the "**informed users (level 1)**" catalog.

2.	Created a "resource"-type metadata record on the mapping server for internal agents (WFS server) and assigned it to the "**internal agents (level 2)**" catalog.

3.	Uploaded the raw data directly to the marine submersion metadata record created by the automatic scan and assigned to the "GéoLittoral" catalog.

4.	Associated the WMS flow (entered in the record on the WMS server) with the marine submersion record.

5.	Associated the WFS flow (entered in the record on the WFS server) with the marine submersion record.

6.	Created an OpenCatalog share for the general public in which we placed the "GéoLittoral" catalog without the "public" or "internal" catalog: [the record can be viewed here](http://open.isogeo.com/s/14cbb8fce4fd471ab3af9fb849d0dcd1/GbhLhG7hoNFHdkrgh8n9o9I3Sym20/m/cb71d8f42ba44788b348b5bc9f79e58c).

    ![Marine submersion 0](/en/images/adm_shares_OC_demo_Geolittoral0.png "Only the data download link is available")

7.	Created an OpenCatalog share for informed users in which we placed the "GéoLittoral" catalog with the "informed users" catalog: [the record can be viewed here](http://open.isogeo.com/s/4e3617fa59674e8b98b4d9a62a6ad6e7/oOGYrOxAMjf11jYmo6hbbeGNG2TC0/m/cb71d8f42ba44788b348b5bc9f79e58c).

    ![Marine submersion 1](/en/images/adm_shares_OC_demo_Geolittoral1.png "WMS access is provided in addition to the download link")

8.	Created an OpenCatalog share for the general public in which we placed the "GéoLittoral" catalog with the "informed users (level 1)" catalog and the "internal agents (level 2)" catalog: [the record can be viewed here](http://open.isogeo.com/s/d61fe9892eb345e7b6840bbfc4cf5733/zuD9LtBEXRi7ynIXyRyWIy4hC0xz0/m/cb71d8f42ba44788b348b5bc9f79e58c).

    ![Marine submersion 2](/en/images/adm_shares_OC_demo_Geolittoral2.png "Access to the 3 resources: download, WMS and WFS")


### Result

3 different access levels to the same metadata record:

* A viewing interface where users can download only the raw data;

    ![Marine submersion 0](/en/images/OC_Demo_Submersion_Niv0.png "Only the data download link is available")

* A viewing interface where users can:
    - download raw data;
    - display the layer via a WMS flow;

    ![Marine submersion 1](/en/images/OC_Demo_Submersion_Niv1.png "WMS access is provided in addition to the download link")

* A viewing interface where users can:
    - download raw data;
    - display the layer via a WMS flow;
    - display the layer via a WFS flow;

    ![Marine submersion 2](/en/images/OC_Demo_Submersion_Niv2.png "Access to the 3 resources: download, WMS and WFS")

### Outline

3 steps:

1.	Create a metadata record on a resource (server, package of services, toolbox, set of processes, etc.) and specify the associated links.

2.	Associate the resources with the metadata records.

3.	Create OpenCatalog. If the record on the resource and the record on the dataset are in the same share, the links associated with the former will be visible.

Best practice: create one catalog of resources per level of use.

![Differentiated display schema](/en/images/resources_DifferentDisplays_schema.png "Access to the 3 resources: download, WMS and WFS")
