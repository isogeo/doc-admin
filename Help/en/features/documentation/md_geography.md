## "Geography" tab

The "Geography" tab displays the data's bounding box on a map. It shows the data format, the number of entities, the geometry type, the coordinate system, the bounding box coordinates, the data scale and resolution.

![Single edition - Geography](/en/images/inv_edit_one_geography.png "Single edition - Geography tab")

### Map

| Definition                 | Area of the resource in the geographic space, expressed as a boundary polygon |
| :------------------------- | :--------------------------------------------------------- |
| Indications                | The bounding box must encompass all objects contained in the dataset. When editing manually, the boundary polygon must be adjusted precisely to represent the boundary for the corresponding resource as accurately as possible (do not define a rectangle that covers an entire country for data limited to a town or city). Ideally, the boundary polygon will only cover contiguous spaces, and must be multiplied for non-contiguous territories.<br />If there are multiple boundary boxes, they must not overlap. |
| Example                    | ![Geography tab - map](/en/images/inv_edit_one_geography_map_500px.png "Displays the convex envelope for a given data item on a map") |
| INSPIRE requirement   | Mandatory                   |
| Batch edition     | Yes, by overwriting           |
| Scan                       | Yes, convex envelope |
| Search engine        | No                    |

> Tip: if the scan does not automatically recognize the convex envelope, refer to [the corresponding appendix](/en/appendices/scan_srsnotfound_fme_fix.html).

To manually draw the data's bounding box on the map:

1.	Click on "Edit."
2.	On the map, choose the "Draw a polygon" or "Draw a rectangle" tool.
3.	Draw the bounding box on the map.
4.	To finish, double-click on the map, or click on the first peak of the polygon again.
5.	Save.

### Number of entities

| Definition                 | Number of geographic objects |
| :------------------------- | :---------------------------- |
| Indications                | Must be an integer.          |
| Example                    | 20                            |
| INSPIRE requirement   | Optional        |
| Batch edition     | Yes, by overwriting           |
| Scan                | Yes       |
| Search engine        | No                           |

### Geometry

| Definition                 | Geometry type for geographic objects |
| :------------------------- | :--------------------------------------------------------- |
| Indications                | One of the following values:<br />- Point,<br />- LineString,<br />- Polygon,<br />- MultiPoint,<br />- MultiLineString,<br />- MultiPolygon,<br />- GeometryCollection,<br />- CircularString,<br />- CompoundCurve,<br />- CurvePolygon,<br />- MultiCurve,<br />- MultiSurface,<br />- Curve,<br />- Surface,<br />- PolyhedralSurface,<br />- TIN |
| Example                    | Polygon                    |
| INSPIRE requirement   | Mandatory                   |
| Batch edition     | Yes, by overwriting           |
| Scan                | Yes       |
| Search engine        | No                    |

### Coordinate system

| Definition                 | Name and EPSG code for the geographic or projected coordinate system |
| :------------------------- | :--------------------------------------------------------- |
| Indications                | If the system was not automatically recognized, select a value from the list; the administrator can customize this list ([see the dedicated chapter](/en/features/admin/srs.html)) |
| Example                    | EPSG code: 2154<br />Name: RGF93 / Lambert-93  |
| INSPIRE requirement   | Mandatory                   |
| Batch edition     | Yes, by overwriting           |
| Scan                | Yes       |
| Search engine | Filter                       |

> Tip: if the scan does not automatically recognize the coordinate system, refer to [the corresponding appendix](/en/appendices/scan_srsnotfound_fme_fix.html).

### Scale

| Definition                 | Geographic precision of the resource (mainly used for vector data) |
| :------------------------- | :--------------------------------------------------------- |
| Indications                | Numeral |
| Example                    | 10000           |
| INSPIRE requirement           | Mandatory if the resolution is not specified |
| Batch edition     | Yes, by overwriting           |
| Scan                | No        |
| Search engine        | No                    |

### Resolution

| Definition                 | Geographic precision of the resource (mainly used for raster data) |
| :------------------------- | :--------------------------------------------------------- |
| Indications                | Numeral, in meters|
| Example                    |                      |
| INSPIRE requirement           | Mandatory if the scale is not specified |
| Batch edition     | Yes, by overwriting           |
| Scan                | No        |
| Search engine        | No                    |

