# Inventaire automatique et exhaustif avec le Scan FME

Pour installer et déployer le scan automatique basé sur FME, reportez-vous à la [section dédiée](installation/index.html).

## Fonctionnement

Le scan se sert de FME pour parcourir les données et nécessite donc qu'une licence soit disponible durant le processus. Par défaut, le scan lance jusqu'à 3 instances de FME en parallèle, avec une seule licence utilisée.

Chaque instance s'occupe d'une action associée à une donnée : par exemple *signer GEOFLA.DEPARTEMENTS* ou *documenter GEOFLA.COMMUNES*. Une file d'attente (indépendante des points d'entrée) démarre une nouvelle instance dès qu'une se termine.

La licence de FME utilisée est de nouveau disponible pour d'autres usages une fois le scan terminé.

![Tour d'horizon de l'interface du Scan](/images/ScanFME_tour_GeoFLA_2016-07-15.gif "Tour d'horizon de l'interface de gestion du Scan")

## Processus

1.	Cliquer sur le bouton « Scanner » en regard du point d’entrée choisi. La liste des requêtes s’affiche.

    ![Les requêtes d'un point d'entrée](/images/scanFME_EntryPoint_Requests.png "Afficher l'historique des requêtes effectuées sur un point d'entrée")

2.	Cliquer sur la ligne d’une requête en cours pour visualiser le scan.

    ![Déroulement d'un scan](/images/ScanFME_ProcessLive_GeoFLA_2014-12-26.gif "Le processus de scan à l'oeuvre")

3.	L’opération de scan se déroule en 3 phases :
    4.	Recenser : le scan dresse la liste des données ;
    5.	Signer : le scan signe toutes les données qu’il a recensées de façon à marquer les données au moment du scan et pouvoir en déduire si la donnée a déjà été scannée ou pas auparavant ou modifiée depuis le dernier scan ;
    6.	Documenter : le scan crée les fiches pour les données nouvellement détectées ou met à jour les fiches des données modifiées.

    ![Les formats scannés automatiquement](/images/scanFME_PostGIS_requete_annot.png "Chercher les données dans Isogeo")

4.	Une fois terminé, le scan vous indique :
	* La liste complète des données recensées. Dans cette liste, chaque donnée est caractérisée par un identifiant unique, son nom, son emplacement, son format et son statut (nouveau, modifiée, inchangée, supprimée, erreur). Vous pouvez trier cette liste ;
	* La liste des données sans entités géographiques ;
	* La liste des données en doublons ;

La liste des données sans entités géographiques et la liste des doublons sont informatives. Elles vous permettent d’agir au sein de votre base de données.

La liste complète des données recensées pendant le scan vous permet d’identifier :
* Les nouvelles données ajoutées à votre inventaire ;
* Les données inchangées depuis le dernier scan ;
* Les données modifiées depuis le dernier scan ;
* Les données déplacées depuis le dernier scan.

Allez dans l’inventaire pour découvrir ces données et parcourir leurs métadonnées.

## Cas particuliers

* Le renommage un point d'entrée n'est pas possible aujourd'hui. Il faut nécessairement le supprimer et en re-créer un ;

* Pour les bases de données, FME s'appuie sur l'utilisateur que vous configurez. Une table visible à partir de plusieurs points d'entrée par plusieurs utilisateurs (chaînes de connexion différentes) ne sera pas dupliquée.

* Si vous copiez une donnée sans changer le nom de fichier, le scan indiquera qu'il a détecté un doublon mais créera quand même une nouvelle fiche ;
