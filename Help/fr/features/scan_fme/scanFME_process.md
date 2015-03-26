# Fonctionnement du scan FME

## Processus

1.	Cliquer sur le bouton « Scanner » en regard du point d’entrée choisi. La liste des requêtes s’affiche.

    ![Les requêtes d'un point d'entrée](/fr/images/scanFME_EntryPoint_Requests.png "Afficher l'historique des requêtes effectuées sur un point d'entrée")

2.	Cliquer sur la ligne d’une requête en cours pour visualiser le scan.

    ![Déroulement d'un scan](/fr/images/ScanFME_ProcessLive_GeoFLA_2014-12-26.gif "Le processus de scan à l'oeuvre")

3.	L’opération de scan se déroule en 3 phases :
    4.	Recenser : le scan dresse la liste des données ;
    5.	Signer : le scan signe toutes les données qu’il a recensées de façon à marquer les données au moment du scan et pouvoir en déduire si la donnée a déjà été scannée ou pas auparavant ou modifiée depuis le dernier scan ;
    6.	Documenter : le scan crée les fiches pour les données nouvellement détectées ou met à jour les fiches des données modifiées.

    ![Les formats scannés automatiquement](/fr/images/scanFME_PostGIS_requete_annot.png "Chercher les données dans Isogeo")

4.	Une fois terminé, le scan vous indique :
	* La liste complète des données recensées. Dans cette liste, chaque donnée est caractérisée par un identifiant unique, son nom, son emplacement, son format et son statut (nouveau, modifiée, inchangée, supprimée, erreur). Vous pouvez trier cette liste ;
	* La liste des données sans entités géographiques ;
	* La liste des données en doublons ;

La liste des données sans entités géographiques et la liste des doublons sont informatives. Elles vous permettent d’agir au sein de votre base de données.

La liste complète des données recensées pendant le scan vous permet d’identifier :
* Les nouvelles données ajoutées à votre inventaire
* Les données inchangées depuis le dernier scan
* Les données modifiées depuis le dernier scan
* Les données supprimées depuis le dernier scan

Allez dans l’inventaire pour découvrir ces données et parcourir leurs métadonnées.

## Précisions

cas de la copie d'une donnée

renommer un point d'entrée

table visible à partir de plusieurs points d'entrée
