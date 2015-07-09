# Associated resources on other platforms

To properly display a layer in a viewer such as geOrchestra or Prodige, you must follow scenario B recommended by the French National Geographic Information Commission (CNIG).

In Isogeo, you must [add a WMS associated resource](/en/features/documentation/md_ressources.html) specifying:
* the name of the layer in the service as the title of the link (for example: `capl_points_addresses`)
* the URL of the service's link with the `GetCapabilities` parameter (for example: http://geoservices.lorient-agglo.fr/wms?service=WMS&request=GetCapabilities

The WMS link is then sent to the CSW:

```xml
<transferOptions>
    <MD_DigitalTransferOptions>
        <onLine>
            <CI_OnlineResource>
                <linkage>
                    <URL>http://geoservices.lorient-agglo.fr/wms?service=WMS&request=GetCapabilities</URL>
                </linkage>
                <protocol>
                    <gco:CharacterString>OGC:WMS</gco:CharacterString>
                </protocol>
                <name>
                    <gco:CharacterString>ortho2010</gco:CharacterString>
                </name>
                <function>
                    <CI_OnLineFunctionCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_OnLineFunctionCode" codeListValue="view">view</CI_OnLineFunctionCode>
                    </function>
            </CI_OnlineResource>
        </onLine>
    </MD_DigitalTransferOptions>
</transferOptions>
```
