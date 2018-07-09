# Recenser les services web g&eacute;ographiques {#srv_doc}

La première &eacute;tape de la d&eacute;marche de documentation des services consiste à les recenser.

## Fonctionnement de la pr&eacute;-documentation automatique des services {#srv_auto_doc}

Les capacit&eacute;s des services g&eacute;ographiques sont automatiquement analys&eacute;es pour documenter la fiche de m&eacute;tadonn&eacute;es. Il s&apos;agit donc seulement de soumettre l&apos;URL *GetCapabilities* à Isogeo, qui se charge alors d&apos;extraire toutes les informations utiles.

### Pr&eacute;requis {#srv_auto_prerequisites}

* [l&apos;option "Autoriser la cr&eacute;ation manuelle de fiches de m&eacute;tadonn&eacute;es"](../../admin/group.html#settings_manual_creation) doit être activ&eacute;e ;
* disposer des URLs *GetCapabilities* (ou &eacute;quivalents ESRI) de services compatibles et disponibles.

Dans l&apos;id&eacute;al, les services sont accessibles publiquement ou du moins par les domaines \*.isogeo.com. 

### Recenser un service accessible par Isogeo {#srv_auto_public}

Pour l&apos;exemple, les services [WMS](http://clc.developpement-durable.gouv.fr/geoserver/wms?request=GetCapabilities&service=WMS) et [WFS](http://clc.developpement-durable.gouv.fr/geoserver/wfs?request=GetCapabilities&service=WFS) des donn&eacute;es Corine Land Cover sont utilis&eacute;s.

| Aperçus de *GetCapabilities* 			  |
| :-------------------------------------: |
| WMS 		  							  |
| ![WMS GetCapabilities](/images/inv_edit_srv_CLC_WMS_GetCap.png "Capture d&apos;&eacute;cran du GetCapabilities du service WMS des donn&eacute;es Corine Land Covver (MEDDE)") |
| WFS 		  							  |
| ![WFS GetCapabilities](/images/inv_edit_srv_CLC_WFS_GetCap.png "Capture d&apos;&eacute;cran du GetCapabilities du service WFS des donn&eacute;es Corine Land Covver (MEDDE)") |

1. Dans l&apos;inventaire, cliquer le bouton `+ Cr&eacute;er` ;
2. Dans le formulaire, choisir `d&apos;une fiche relative à un service`;
3. Coller l&apos;URL GetCapabilities du service à scanner ([voir les syntaxes des URL](#srv_url_syntax)) : si l&apos;URL est correctement format&eacute;e et le service joignable, son format est automatiquement propos&eacute; ;

	![WMS creation](/images/inv_edit_srv_CLC_WMS_creation.png "Cr&eacute;ation de la fiche service WMS")

4. En cliquant sur `Cr&eacute;er`, le service est donc "scann&eacute;" :

| M&eacute;tadonn&eacute;es r&eacute;cup&eacute;r&eacute;es 					|
| :---------------------------------------: |
| Titre, R&eacute;sum&eacute;, Mots-cl&eacute;s, Format 			|
| ![WMS identification](/images/inv_edit_srv_CLC_WMS_identification.png "WMS GetCapabilities - Identification") |
| Contact (si adresse email pr&eacute;sente) 		|
| ![WMS contact](/images/inv_edit_srv_CLC_WMS_contacts.png "WMS GetCapabilities - Contact") |
| Format, version et op&eacute;rations disponibles (onglet `Avanc&eacute;`) |
| ![WMS operations](/images/inv_edit_srv_CLC_WMS_operations.png "WMS GetCapabilities - Avanc&eacute;") |
| Couches disponibles (onglet `Ressources`) |
| ![WMS layers](/images/inv_edit_srv_CLC_WMS_layers.png "WMS GetCapabilities - Ressources") |

Le service est d&eacute;sormais document&eacute;. Il est d&eacute;sormais temps d&apos;[associer les couches list&eacute;es avec les jeux de donn&eacute;es inventori&eacute;s](srv_association.html).

----

### Recenser un service priv&eacute; {#srv_auto_private}

Les capacit&eacute;s des services g&eacute;ographiques ne sont ni plus ni moins des fichiers normalis&eacute;s (XML pour les service OGC, JSON pour ceux d&apos;Esri). Il est donc possible de les importer depuis l&apos;interface.

1. T&eacute;l&eacute;charger le fichier des capacit&eacute;s depuis son URL. Par exemple pour les services Esri :

	1. Sur la page du service, faire un clic droit sur le lien `JSON`

		![Esri Services manual import - Get JSON](/images/services/inv_edit_srv_manual_esri_json_download.png "T&eacute;l&eacute;charger le fichier JSON")

	2. Sauvegarder en tant que JSON (selon votre navigateur, bien v&eacute;rifier que l&apos;extension ne soit pas forc&eacute;e en .txt)

		![Esri Services manual import - Save](/images/services/inv_edit_srv_manual_esri_json_save.png "Sauvegarder les capacit&eacute;s en tant que fichier JSON")

2. Cr&eacute;er la fiche de service en donannt l&apos;URL de base et le format : cliquer sur `Cr&eacute;er` sans tenir compte du message rouge indiquant que le service n&apos;est pas joignable ;
3. Une fois la fiche cr&eacute;&eacute;e, cliquer `Modifier` puis sur `Importer les capacit&eacute;s` ;
4. S&eacute;lectionner le fichier des capacit&eacute;s et cliquer sur `Importer`;
5. Fermer la modale de confirmation et recharger la page : les m&eacute;tadonn&eacute;es du service d&eacute;sormais disponibles dans Isogeo.

Noter que cette d&eacute;marche doit être reconduite à chaque mise à jour du service

Voici la proc&eacute;dure r&eacute;sum&eacute;e en images :

![Services manual import](/images/inv_edit_srv_manual_import.gif "Importer les capacit&eacute;s d&apos;un service interne ou authentifi&eacute;")

> Astuce : [param&eacute;trer OpenCatalog pour visualiser les services internes](../../publish/share_opencatalog.html#oc_proxy)

____

## Recensement manuel des couches d&apos;un service {#srv_manual_doc}

Si vous souhaitez documenter un service ne correspondant pas aux pr&eacute;requis, il est possible de renseigner la fiche manuellement. Après avoir cr&eacute;e la fiche, il suffit de cliquer sur `+ Ajouter une couche` et d&apos;entrer son identifiant (obligatoire) et un titre (facultatif).

![Service manuel](/images/inv_edit_srv_manual.png "Ajouter chaque couche manuellement")
