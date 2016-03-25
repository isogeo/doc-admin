# Les différents points d'entrée du scan

Un administrateur peut créer autant de `Points d’entrée` qu’il le souhaite. Le scan génère systématiquement un inventaire exhaustif des données identifiées dans ces points d’entrée. Il n'est pas possible de renommer un point d'entrée.

Il existe deux types de `Points d’entrée`.

## Fichiers <i class="fa fa-folder-open"></i>

![Point d'entrée Fichiers](/images/scanFME_new_files_btn.png "Sélecteur de type de point d'entrée - Arborescence de fichiers")

Indiquer le chemin d'accès à une  arborescence de répertoires contenant les données géographiques.

Caractéristiques et précisions :
* les fichiers doivent être accessibles via un partage de type Windows (protocole [SMB](https://fr.wikipedia.org/wiki/Server_Message_Block)) ;
* il est préférable qu'ils soient hébergés sur un serveur ;
* tous les sous-répertoires sont explorés et il est donc recommandé d'indiquer une granularité assez fine (1300 fichiers maximum par point d'entrée) ;
* il n'est pas possible de filtrer sur un format en particulier.

## Système de Gestion de Base de Données (SGBD) <i class="fa fa-database"></i>

![Point d'entrée SGBD](/images/scanFME_new_DB_btn.png "Sélecteur de type de point d'entrée - Base de données")

Indiquer les paramètres de connexion à la base de données et les instances / schémas à scanner.

Caractéristiques et précisions :
* les SGBD sont indépendants du système d'exploitation ;
* les bases de données dites "plates" ou "fichiers" sont considérées comme telles (Esri FileGDB par exemple) ;
* les tables sans géométrie ne sont pas prises en compte ;
* une table visible depuis plusieurs chaînes de connexion n'est pas dupliquée.
