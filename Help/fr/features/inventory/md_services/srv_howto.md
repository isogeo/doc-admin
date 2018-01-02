# Recenser les services web géographiques

La première étape de la démarche de documentation des services consiste à les recenser.

## Fonctionnement de la pré-documentation automatique des services

Les capacités des services géographiques sont automatiquement analysées pour documenter la fiche de métadonnées. Il s'agit donc seulement de soumettre l'URL *GetCapabilities* à Isogeo, qui se charge alors d'extraire toutes les informations utiles.

### Prérequis

* [l'option "Autoriser la création manuelle de fiches de métadonnées"](../../admin/group.html#settings_manual_creation) doit être activée ;
* disposer des URLs *GetCapabilities* (ou équivalents ESRI) de services compatibles et disponibles.

Dans l'idéal, les services sont accessibles publiquement ou du moins par les domaines \*.isogeo.com. 

### Recenser un service accessible par Isogeo {#srv_auto_public}

Pour l'exemple, les services [WMS](http://clc.developpement-durable.gouv.fr/geoserver/wms?request=GetCapabilities&service=WMS) et [WFS](http://clc.developpement-durable.gouv.fr/geoserver/wfs?request=GetCapabilities&service=WFS) des données Corine Land Cover sont utilisés.

| Aperçus de *GetCapabilities* 			  |
| :-------------------------------------: |
| WMS 		  							  |
| ![WMS GetCapabilities](/images/inv_edit_srv_CLC_WMS_GetCap.png "Capture d'écran du GetCapabilities du service WMS des données Corine Land Covver (MEDDE)") |
| WFS 		  							  |
| ![WFS GetCapabilities](/images/inv_edit_srv_CLC_WFS_GetCap.png "Capture d'écran du GetCapabilities du service WFS des données Corine Land Covver (MEDDE)") |

1. Dans l'inventaire, cliquer le bouton `+ Créer` ;
2. Dans le formulaire, choisir `d'une fiche relative à un service`;
3. Coller l'URL GetCapabilities du service à scanner ([voir les syntaxes des URL](#srv_url_syntax)) : si l'URL est correctement formatée et le service joignable, son format est automatiquement proposé ;

	![WMS creation](/images/inv_edit_srv_CLC_WMS_creation.png "Création de la fiche service WMS")

4. En cliquant sur `Créer`, le service est donc "scanné" :

| Métadonnées récupérées 					|
| :---------------------------------------: |
| Titre, Résumé, Mots-clés, Format 			|
| ![WMS identification](/images/inv_edit_srv_CLC_WMS_identification.png "WMS GetCapabilities - Identification") |
| Contact (si adresse email présente) 		|
| ![WMS contact](/images/inv_edit_srv_CLC_WMS_contacts.png "WMS GetCapabilities - Contact") |
| Format, version et opérations disponibles (onglet `Avancé`) |
| ![WMS operations](/images/inv_edit_srv_CLC_WMS_operations.png "WMS GetCapabilities - Avancé") |
| Couches disponibles (onglet `Ressources`) |
| ![WMS layers](/images/inv_edit_srv_CLC_WMS_layers.png "WMS GetCapabilities - Ressources") |

Le service est désormais documenté. Il est désormais temps d'[associer les couches listées avec les jeux de données inventoriés](srv_association.html).


### Recenser un service privé {#srv_auto_private}

Les capacités des services géographiques ne sont ni plus ni moins des fichiers normalisés (XML pour les service OGC, JSON pour ceux d'Esri). Il est donc possible de les importer depuis l'interface.

1. Télécharger le fichier des capacités depuis son URL ;
2. Créer la fiche de service en donannt l'URL de base et le format : cliquer sur `Créer` sans tenir compte du message rouge indiquant que le service n'est pas joignable ;
3. Une fois la fiche créée, cliquer `Modifier` puis sur `Importer les capacités` ;
4. Sélectionner le fichier des capacités et cliquer sur `Importer`;
5. Fermer la modale de confirmation et recharger la page : les métadonnées du service désormais disponibles dans Isogeo.

Noter que cette démarche doit être reconduite à chaque mise à jour du service

Voici la procédure en images :

![Services manual import](/images/inv_edit_srv_manual_import.gif "Importer les capacités d'un service interne ou authentifié")

> Astuce : [paramètrer OpenCatalog pour visualiser les services internes](../../publish/share_opencatalog.html#oc_proxy)

____

## Recensement manuel des couches d'un service {#srv_manual_doc}

Si vous souhaitez documenter un service ne correspondant pas aux prérequis, il est possible de renseigner la fiche manuellement. Après avoir crée la fiche, il suffit de cliquer sur `+ Ajouter une couche` et d'entrer son identifiant (obligatoire) et un titre (facultatif).

![Service manuel](/images/inv_edit_srv_manual.png "Ajouter chaque couche manuellement")
