# Ajouter un nouveau point d&apos;entrée à scanner

Un point d&apos;entrée correspond à l&apos;emplacement des données sources. Un administrateur peut créer autant de `Points d’entrée` qu’il le souhaite.

Le scan génère systématiquement un inventaire exhaustif des données identifiées dans ces points d’entrée. Il n&apos;est pas possible de renommer un point d&apos;entrée.

Il existe deux types de points d’entrée :

* arborescence de fichiers ;
* base de données.

## Arborescence de fichiers <i class="fa fa-folder-open"></i>

![Point d&apos;entrée Fichiers](/assets/scanFME/scanFME_new_files_btn.png "Sélecteur de type de point d&apos;entrée - Arborescence de fichiers")

Indiquer le chemin absolu d&apos;accès à une  arborescence de répertoires contenant les données géographiques.

### Caractéristiques et précisions

* les fichiers doivent être accessibles via un partage de type Windows (protocole [SMB](https://fr.wikipedia.org/wiki/Server_Message_Block)) ;

* il est préférable qu&apos;ils soient hébergés sur un serveur ;

* tous les sous-répertoires sont explorés et il est donc recommandé d&apos;indiquer une granularité assez fine (1 300 fichiers maximum par point d&apos;entrée) ;

* il n&apos;est pas possible de filtrer sur un format en particulier.

### Ajouter un répertoire de fichiers à scanner

Pour créer un point d’entrée « Fichiers » :

1. Dans le menu « Scan FME », créer un nouveau point d’entrée en cliquant sur « + Nouveau »
2. Sélectionnez le type « Fichier »
3. Nommez le point d’entrée. Exemple : « Cadastre »
4. Renseigner le chemin d’accès au répertoire contenant les données à scanner. Exemple : //serveur/partage/Dossier/

    ![Nouveau point d&apos;entrée fichiers](/assets/scanFME/scanFME_new_files.png "Créer un nouveau point d&apos;entrée pour scanner des fichiers")

5. Sauvegarder. Le nouveau point d’entrée créé s’ajoute à la liste des points d’entrée. Il est prêt à être scanné.

    ![Nouveau point d&apos;entrée fichiers](/assets/scanFME/scanFME_new_files_ready.png "Le nouveau point d&apos;entrée est prêt à être scanné")

____

## Système de Gestion de Base de Données (SGBD) <i class="fa fa-database"></i>

![Point d&apos;entrée SGBD](/assets/scanFME/scanFME_new_DB_btn.png "Sélecteur de type de point d&apos;entrée - Base de données")

Indiquer les paramètres de connexion à la base de données et les instances / schémas à scanner.

### Caractéristiques et précisions

* les SGBD sont indépendants du système d&apos;exploitation ;
* les bases de données dites "plates" ou "fichiers" sont considérées comme telles (Esri FileGDB par exemple) ;
* les tables sans géométrie ne sont pas prises en compte ;
* une table visible depuis plusieurs chaînes de connexion n&apos;est pas dupliquée.

### Démarche globale

Pour créer un point d’entrée « Base de données » :

1. Dans le menu « Scan FME », créer un nouveau point d’entrée en cliquant sur « + Nouveau » ;
2. Sélectionner le type « Base de données » ;
3. Nommer le point d’entrée. Exemple : Base de références ;
4. Sélectionner le type de base de données dans la liste déroulante. ;
5. Saisir les paramètres de connexion ;
6. Sauvegarder.

    ![Nouveau point d&apos;entrée base](/assets/scanFME/scanFME_new_DB_ready.png "Le nouveau point d&apos;entrée est prêt à être scanné")

### Paramètres requis selon le type de base de données

Légende :

* X = requis
* \ = facultatif
* \- = désactivé

| Champ                       | PostGIS | Oracle | SQL Server | + Esri (SDE) |
| --------------------------- | :-----: | :----: | :--------: | :----------------------: |
| Nom                         | X       | X      | X          | X                        |
| Type                        | X       | X      | X          | X                        |
| Serveur                     | X       | X      | X          |                          |
| Port                        | X       |        |            |                          |
| Identifiant                 | X       | X      | X          |                          |
| Mot de passe                | X       | X      | X          |                          |
| Nom de la base de données   | X       |        | X          |                          |
| Fichier de connexion (.sde) | -       |        |            | \                        |
| Nom de l&apos;instance           | -       |        |            | X                        |
| Version transactionnelle    | -       |        |            | X                        |
