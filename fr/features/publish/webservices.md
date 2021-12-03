# Lier des services géographiques

Depuis la version 2.17 (septembre 2016) et la documentation dynamique des services, l&apos;association dynamique permet de générer automatiquement les bons liens pour les applications supportées par Isogeo :

* les liens de visualisationet d'extraction pour l&apos;OpenCatalog
* les liens de services conformes aux scénarios A et B du CNIG

> Consulter [le chapitre dédiée à la documentation automatisée](../inventory/md_services/srv_howto.html) et [celui à l&apos;association dynamique des services](../inventory/md_services/srv_association.html).

## Résultats dans OpenCatalog

### Visualisation et extraction dans OpenCatalog {#oc_view}

La visualisation et l'extraction de services géographiques sont possibles dans l'OpenCatalo pour les services [respectant ces prérequis](https://help.isogeo.com/opencatalog/fr/prerequisites.html#services-g%C3%A9ographiques-pris-en-charge). 

Le fonctionnement est décrit [dans la documentation de l'OpenCatalog](https://help.isogeo.com/opencatalog/fr/usage/visitPage.html#exploitation-des-services).
____

## Résultats dans le XML ISO 19139 (et donc le CSW)

Pour les organismes tenus à conformité Lvec la directive INSPIRE, les liens des scénarios A et B sont générés dynamiquement. Par exemple, pour un service WFS :

```xml
<MD_DigitalTransferOptions>
	<onLine>
	    <CI_OnlineResource>
		    <linkage>
			    <URL>http://ows.isogeo.fr:6090/geoserver/ows</URL>
			</linkage>
			<protocol>
			    <gco:CharacterString>OGC:WFS</gco:CharacterString>
			</protocol>
			<name>
			    <gco:CharacterString>Isogeo:DEPARTEMENT_2014</gco:CharacterString>
			</name>
		</CI_OnlineResource>
    </onLine>
	<onLine>
	    <CI_OnlineResource>
		    <linkage>
			    <URL>http://ows.isogeo.fr:6090/geoserver/wfs?service=wfs&amp;version=2.0.0&amp;request=GetCapabilities</URL>
			</linkage>
			<protocol>
			    <gco:CharacterString>OGC:WFS-2.0.0-http-get-capabilities</gco:CharacterString>
			</protocol>
			<name>
			    <gco:CharacterString>Isogeo - Web Feature Service de démonstration</gco:CharacterString>
			</name>
			<function>
			    <CI_OnLineFunctionCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_OnLineFunctionCode" codeListValue="information">information</CI_OnLineFunctionCode>
			</function>
		</CI_OnlineResource>
	</onLine>
	<onLine>
	    <CI_OnlineResource>
		    <linkage>
			    <URL>http://ows.isogeo.fr:6090/geoserver/wfs?service=wfs&amp;version=2.0.0&amp;request=GetFeature&amp;typeNames=Isogeo%3aDEPARTEMENT_2014</URL>
			</linkage>
			<protocol>
			    <gco:CharacterString>OGC:WFS-2.0.0-http-get-feature</gco:CharacterString>
			</protocol>
			<name>
			    <gco:CharacterString>Départements - France métropolitaine - 2014</gco:CharacterString>
			</name>
			<function>
			    <CI_OnLineFunctionCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#CI_OnLineFunctionCode" codeListValue="download">download</CI_OnLineFunctionCode>
			</function>
		</CI_OnlineResource>
	</onLine>
</MD_DigitalTransferOptions>
```
