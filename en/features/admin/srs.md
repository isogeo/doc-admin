# Managing coordinate systems

Geodata is generally associated with a coordinate system that must be specified in its metadata record. The Isogeo scan automatically identifies this system. However, in the case of manual records or some poorly recognized formats, the publisher must enter or correct the coordinate system.

Isogeo integrates thousands of coordinate systems listed in the international registry [`EPSG Registry`](http://www.epsg-registry.org/) (see [here to view the registry using a more recent interface](http://epsg.io/)).

To make it easier to manage these systems, and to avoid confusing writers (who are not necessarily specialists or conversant with projection requirements), the administrator can limit the coordinate systems visible in the `Geography&apos;` tab in a metadata record.

> Tip: go directly to [coordinate systems](https://app.isogeo.com/admin/coordinate-systems).

## Selecting and renaming a coordinate system

Proceed as follows to configure the list of coordinate systems:

1. Select `Administration` > `Coordinate systems`;
2. In the list on the left, search for the coordinate systems you wish to add to the list on the right (for example, RGF 93);
3. Click on the `+` button. The system is added to the list of selected coordinate systems;
4. Click on the pencil icon to specify an alias for a coordinate system. This can be useful for non-specialists.

To remove a coordinate system from the list of selected systems, simply click on the trash can icon next to the corresponding projection (the alias is also deleted).

![New user](/assets/adm_srs_add.gif "Inviting a new user")
