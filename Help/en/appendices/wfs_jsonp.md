# Configuring your geospatial server for JSON-P

## Issues

To display a WFS feed in a web mapping library, you must retrieve the data before viewing it. However, most of the time the request is blocked by the *Cross Domain* principle, intended to prevent two servers with different domains from exchanging data.

The *JSONP* communication technique allows you to overcome this problem by encapsulating the result in a ```<script>``` tag (see [an Algolia article on JSONP](https://blog.algolia.com/jsonp-still-mandatory/). To avoid any JavaScript errors, the result is embedded in a function. You must know the name of this function to be able to use the response.

Not all commonly used mapping servers allow for generating *JSONP* using the `OUTPUTFORMAT=` parameter. Here, we present the workaround with GeoServer (open source server for sharing geospatial data), since Esri has implemented its own versions of the standards (see [Esri Feature/entities service](http://resources.arcgis.com/en/help/main/10.2/index.html#//0154000002w8000000) corresponding to the WFS).

## GeoServer

GeoServer can be used to return *JSONP* if the feature has been enabled (it is disabled by default). To enable this parameter, you must create an environment variable dependent on the user who runs the GeoServer service named 'ENABLE_JSONP' with the value 'true' then restart the GeoServer service.

To do this, we recommend using [the SETX command](https://technet.microsoft.com/en-us/library/cc755104.aspx):

```bash
SETX /u myuser [/p [<Password>]] ENABLE_JSONP true
```

![GeoServer JSONP](/images/annex_GeoServer_WFS_JSONP_UserEnv.png "Creating a user variable ENABLE_JSONP = true")

Once you have done this, when a `GetCapabilities` request is received on one of your WFS services from GeoServer, the JSONP format is available.

## References for GeoServer

* [Output formats available for WFS](http://docs.geoserver.org/latest/en/user/services/wfs/outputformats.html)
* [Global parameters of the WMS service](http://docs.geoserver.org/latest/en/user/services/wms/global.html#enable-jsonp)
