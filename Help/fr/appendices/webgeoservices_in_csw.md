# Les ressources associées dans d'autres plateformes

Pour afficher correctement une couche dans un visualiseur type geOrchestra ou Prodige, il faut respecter le scénario B recommandé par le CNIG dans [le guide des services de recherche au chapitre 6.1](http://cnig.gouv.fr/wp-content/uploads/2015/Guide-recherche-INSPIRE1.htm).

Avec la nouvelle gestion des ressources associées de types services, les liens correspondant au scénario A et B sont automatiquement générés dans le XML ISO19139 transmis par CSW.

## Dans le cadre d'une documentation manuelle des services

Donc dans Isogeo, il faut [ajouter une ressource associée de type WMS](/fr/features/documentation/md_ressources.html) en indiquant :
* le nom de la couche dans le service comme intitulé du lien (exemple : `capl_adresses_points`)
* URL du lien du service avec le paramètre `GetCapabilities` (exemple : http://geoservices.lorient-agglo.fr/wms?service=WMS&request=GetCapabilities

Le lien WMS est alors transmis ainsi dans le CSW :

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
