# Distributing catalogs with OpenCatalog

Once established, your data catalog can be published via OpenCatalog, a website hosted by Isogeo that offers simple, user-friendly viewing access to an unlimited number of users.

OpenCatalog includes a search engine and filters to quickly access the description records (metadata) sought.

The records (of data, datasets or services) are presented in such a way as to respond to the needs of specialists and non-specialists alike. They are INSPIRE-compliant and provide access to XML ISO 19139 files.

They also serve to highlight the associated resources, organized into 3 main actions:
* View
* Download
* Plus


Proceed as follows to create an OpenCatalog:

1.	Menu `Administration`  > `Share`, click `New`;
2.	Click on the cogwheel button;
3.	Select the `OpenCatalog` application;
4.	Select the catalog(s) to publish;
5.	Name the share;
6.	`Save`;

![OpenCatalog management](/en/images/adm_shares_OC_edit.png "Publishing catalogs as OpenCatalogs")


## Integrating an OpenCatalog in iFrame

"OpenCatalog" is developed via the Isogeo API. It can very easily be integrated in your existing websites (intranet, extranet, mapping portal, OpenData portal, spatial data infrastructure, etc.) via an [iFrame HTML tag](http://www.w3schools.com/tags/tag_iframe.asp).

### Syntax

For example to integrate the demo OpenCatalog:

```no-highlight
<iframe src="http://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0" height="400"></iframe></a>
```

### Result

<iframe src="http://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0" width="850" height="600"></iframe></a>

Integration examples online:
* the [PPIGE](http://www.ppige-npdc.fr/geocatalog/) portal
* the [Moselle](http://www.moselleinfogeo.fr/infogeo/isogeo) portal .

## Integrating a single record in iframe

If you want to integrate a single record, for example in a pop-up window, simply add `?lock` at the end of the corresponding record's address and place the entire address in an iframe tag.

Differences compared with "normal" integration:
* the upper bar;
* non-clickable filters.

### Syntax

For example, to integrate the record containing metadata on France's dÃ©partements in 2014:

```no-highlight
<iframe src="http://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0/m/754209f115c040a48d43ffc262b16500?lock" height="400"></iframe></a>
```

### Result

<iframe src="http://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0/m/754209f115c040a48d43ffc262b16500?lock" width="850" height="600"></iframe></a>
