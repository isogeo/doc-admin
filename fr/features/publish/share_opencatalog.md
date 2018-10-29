# Diffuser les catalogues avec OpenCatalog

Une fois constitué votre catalogue de données peut être diffusé en OpenCatalog, un site web hébergé par Isogeo, qui permet à un nombre illimité d’utilisateurs de consulter le catalogue de manière simple et ergonomique.

« OpenCatalog » dispose d’un moteur de recherche ainsi que des filtres permettant d’accéder rapidement aux fiches descriptives  souhaitées (métadonnées).

Les fiches (de données, d’ensemble de données ou de services) sont présentées de manière à répondre aux besoins des spécialistes comme des non-spécialistes. Elles sont conformes INSPIRE et donnent accès aux fichiers XML ISO 19139.

Elles permettent également de mettre en valeur les ressources associées regroupées en 3 grandes actions :

* Visualiser
* Télécharger
* Plus

## Générer un catalogue de consultation avec OpenCatalog

Pour créer un OpenCatalog, il suffit de :

1. Dans le menu `Administration`  > `Partage`, cliquer sur `Nouveau` ;
2. Cliquer sur le bouton en forme d&apos;engrenages ;
3. Sélectionner l’application `OpenCatalog` ;
4. Sélectionner le ou les catalogues à publier ;
5. Nommer le partage ;
6. `Enregistrer` ;

L&apos;URL de consultation de l&apos;openCatalog apparaît alors.

![Gérer les OpenCatalog](/assets/adm_shares_OC_edit.png "Diffuser les catalogues via  OpenCatalog")

## Intégrer Opencatalog

OpenCatalog est développé via l’API Isogeo. Il est designé pour être facilement intégrable dans vos sites web existants (intranet, extranet, portail carto, portail OpenData, IDG, etc.) via une [balise HTML iFrame](https://www.w3schools.com/tags/tag_iframe.asp).

### Retirer la barre de titre {#oc_header}

Ajouter `no-header` en paramètre à l&apos;URL permet ainsi d&apos;enlever le bandeau de haut de page.

#### Syntaxe

Par exemple, pour intégrer l&apos;[OpenCatalog de démonstration](https://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0) :

```xhtml
<iframe src="https://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0?no-header" width=100% height="800"></iframe>
```

Même si le site est responsive, il faut considérer le paramètre  `width` avec attention de façon à ne pas nuire  l&apos;expérience utilisateur :

* 800 est la largeur minimum très fortement recommandée ;
* 980 pour une consultation agréable ;
* 1280 pour une consultation optimale.

Des exemples d’intégration en ligne :

* le portail de la [PPIGE](http://www.ppige-npdc.fr/geocatalogue/)
* celui de la [Moselle](http://www.moselleinfogeo.fr/infogeo/index.php/isogeo).

________

### Intégrer une seule fiche en iFrame {#oc_lock}

Si vous ne souhaitez intégrer qu&apos;une seule fiche par exemple dans une fenêtre de type pop-up, c&apos;est également possible en mettant l&apos;URL complète vers la fiche souhaitée et en y ajoutant le paramètre `lock`.

Différences par rapport à l&apos;intégration normale :

* la barre de titre de la page est masqué ;
* la navigation est désactivée (les filtres ne sont pas cliquables par exemple et il est impossible de revenir vers l&apos;opencatalog en entier)

#### Syntaxe

Par exemple, pour intégrer [la fiche de métadonnées de démonstration sur les départements 2014](https://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0/r/754209f115c040a48d43ffc262b16500) :

```xhtml
<iframe src="https://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0/r/754209f115c040a48d43ffc262b16500?lock" width=100% height="400"></iframe>
```

________

### Ne pas utiliser les proxies OpenCatalog pour les services géographiques {#oc_proxy}

Pour permettre facilement la consommation de services "internes" dans un OpenCatalog accessible via le réseau intranet de votre organisme, il suffit d&apos;ajouter le paramètre `no-proxy`.

Conséquences :

* au client de bien s&apos;assurer qu&apos;il déclare et utilise bien des services accessibles en HTTPS si OpenCatalog est en HTTPS.

* au client de bien configurer ses serveurs pour accepter les appels [Cross Origin](https://enable-cors.org/) ([GeoServer pour WFS](https://gis.stackexchange.com/questions/210316/access-control-allow-origin-openlayers-wfs) par exemple).

#### Syntaxe

Par exemple, pour intégrer l&apos;[OpenCatalog de démonstration](https://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0) :

```xhtml
<iframe src="https://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0?no-proxy" width=100% height="400"></iframe>
```
