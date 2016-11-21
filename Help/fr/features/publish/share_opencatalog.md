# Diffuser les catalogues avec OpenCatalog

Une fois constitué votre catalogue de données peut être diffusé en OpenCatalog, un site web hébergé par Isogeo, qui permet à un nombre illimité d’utilisateurs de consulter le catalogue de manière simple et ergonomique.

« OpenCatalog » dispose d’un moteur de recherche ainsi que des filtres permettant d’accéder rapidement aux fiches descriptives  souhaitées (métadonnées).

Les fiches (de données, d’ensemble de données ou de services) sont présentées de manière à répondre aux besoins des spécialistes comme des non-spécialistes. Elles sont conformes INSPIRE et donnent accès aux fichiers XML ISO 19139.

Elles permettent également de mettre en valeur les ressources associées regroupées en 3 grandes actions :
* Visualiser
* Télécharger
* Plus

Pour créer un OpenCatalog, il suffit de :

1.	Dans le menu `Administration`  > `Partage`, cliquer sur `Nouveau` ;
2.	Cliquer sur le bouton en forme d'engrenages ;
3.	Sélectionner l’application `OpenCatalog` ;
4.	Sélectionner le ou les catalogues à publier ;
5.	Nommer le partage ;
6.	`Enregistrer` ;

![Gérer les OpenCatalogs](/images/adm_shares_OC_edit.png "Diffuser les catalogues via les OpenCatalogs")


## Intégrer un OpenCatalog en iFrame

« OpenCatalog » est développé via l’API Isogeo. Il est très facilement intégrable dans vos sites web existants (intranet, extranet, portail carto, portail OpenData, IDG, etc.) via une [balise HTML iFrame](http://www.w3schools.com/tags/tag_iframe.asp).

Ajouter `?lock` à la fin de l'adresse permet d'enlever le bandeau de haut de page.

### Syntaxe

Par exemple, pour intégrer l'OpenCatalog de démonstration :

```
<iframe src="http://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0?lock" width="980" height="600"></iframe>
```

Même si le site est responsive, il faut considérer le paramètre  `width` avec attention de façon à ne pas nuire  l'expérience utilisateur :
* 800 est la largeur minimum très fortement recommandée ;
* 980 pour une consultation agréable ;
* 1280 pour une consultation optimale.

### Rendu

<iframe src="http://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0?lock" width=850 height="600"></iframe>

Des exemples d’intégration en ligne :
* le portail de la [PPIGE](http://www.ppige-npdc.fr/geocatalogue/)
* celui de la [Moselle](http://www.moselleinfogeo.fr/infogeo/isogeo).

## Intégrer une seule fiche en iFrame

Si vous ne souhaitez intégrer qu'une seule fiche par exemple dans une fenêtre de type pop-up, c'est également possible en mettant l'URL complète vers la fiche souhaitée.

Différences par rapport à l'intégration normale :
* la barre du haut ;
* les filtres ne sont pas cliquables.

### Syntaxe

Par exemple, pour intégrer [la fiche de métadonnées de démonstration sur les départements 2014](http://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0/m/754209f115c040a48d43ffc262b16500) :

```
<iframe src="http://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0/m/754209f115c040a48d43ffc262b16500?lock" width="980" height="400"></iframe>
```

### Rendu

<iframe src="http://open.isogeo.com/s/344d51c3edfb435daf9d98d948fa207e/Sbd1w7PgqE8n7LDq3azRqNhiMHZf0/m/754209f115c040a48d43ffc262b16500?lock" width="850" height="600"></iframe>
