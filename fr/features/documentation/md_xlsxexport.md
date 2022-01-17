# Exporter les données en tableur

Il est possible d’exporter tout ou une partie de son patrimoine de métadonnées en format tableur.

Cela répond à différents besoins :

* génération d’un fichier de support pour faciliter les contributions en interne (metadata party par exemple), le fichier Excel étant par définition filtrable ;
* suivi du projet de catalogage afin d'avoir une visibilité sur le niveau de remplissage des données ;
* transmission en interne pour des consultations hors-ligne au plus proche des habitudes métiers ;
* sauvegarde.

## Utilisation

Cette fonctionnalité est disponible directement sur la plateforme administrateur, dans l'onglet `Inventaire` grâce au bouton `Exporter en tableur`.

![Export spreadsheet](/assets/exportFullPage.png)

Pour exporter :

1. Réaliser une recherche avec le widget de filtre de la plateforme administrateur
2. Cliquer sur le bouton d'export
3. Remplir le paramétrage de nommage des fichiers
4. Choisir le format d'export
5. Exporter la recherche

![Popup Export](/assets/exportModal.png)

Attention, il ne faut pas fermer le module pendant le traitement des données. Le téléchargement se déclanchera automatiquement une fois les fichiers prêts à être téléchargés.

## Paramètrage

### Formats

Lors de l'export, il est possible de choisir entre deux formats :

* le `.csv`, avec le séparateur virgule (`,`) ;
* le `.xlsx`.

### Personnaliser le nom des fichiers

#### Préfixe

Il est possible d'ajouter un prefixe qui sera ajouté au début du nom de tel sorte que le nom respecte la forme suivante : **Prefix_Isogeo[_ConfigDate]**

#### Date

Il est également possible d'y ajouter la date. Trois valeurs sont possibles.

* Pas de date : rien n'est ajouté au nom du fichier ;
* Date : Seule la date est ajoutée, sous la forme \`AAAA-MM-JJ\` ;
* Date et heure : La date et l'heure est ajoutée, sous la forme \`AAAA-MM-JJ-HHmm\`.

Par défaut, la date et l'heure sont ajoutés au titre.

## Contenu

### Contenu de l'Excel

L'excel est composé de quatre onglets, un pour chaque type de donnée :

* Vecteur
* Rasteur
* Tabulaire non géographique
* Service
* Ressource

Chaque onglet contient les informations d'intérêt associées à chaque type de ressource.

![Echantillon d'export Excel](/assets/excelspreadsheet.png)

### Contenu du csv

L'export en csv consiste en un zip contenant quatre fichiers csv, un pour chaque type de donnée :

* Vecteur
* Rasteur
* Tabulaire non géographique
* Service
* Ressource

### Contenu par types

Les champs suivants sont exportés :

| Champs       | Vecteur      | Raster | Tabulaire non géographique | Service | Ressource |
| :------------- | :---------: |:---------:|:---------:|:---------:|:---------:|
| Nom | X | X | X | X | |
| Titre | X | X | X | X | X |
| Résumé | X | X | X | X |X |
| Emplacement | X | X | X | X | X |
| Propriétaire | X | X | X | X | X |
| # de catalogues | X | X | X | X | X |
| Catalogues | X | X | X | X | X |
| Thématique de groupe | X | X | X | X | X |
| Mots-clés | X | X | X | X | X |
| Thématiques INSPIRE | X | X | X |  | |
| Conformité INSPIRE | X | X | X |  | |
| Contexte de collecte | X | X | X |  | |
| Méthode de collecte | X | X | X |  | |
| Début de validité | X | X | X |  | |
| Fin de validité | X | X | X |  |  |
| Fréquence de mise à jour | X | X | X |  |  |
| Commentaire validité | X | X | X |  |  |
| Date de création | X | X | X | X | X |
| Dernière mise à jour | X | X | X | X | X |
| Dernière publication | X | X | X | X | X |
| # d'événements | X | X | X | X | X |
| Format | X | X | X | X | X |
| SRS (EPSG) | X | X |  |  |  |
| Emprise | X | X |  | X |  |
| Géométrie | X |  |  |  |  |
| Résolution | X | X |  |  |  |
| Echelle | X | X |  |  |  |
| Contexte géographique |  |  | X |  |  |
| # d'entités | X |  | X |  |  |
| # d'attributs | X |  | X |  |  |
| Attributs | X |  | X |  |  |
| Spécifications | X | X | X | X |  |
| # de spécifications | X | X | X | X |  |
| Cohérance topologique | X |  |  |  |  |
| # de conditions | X | X | X | X | X |
| CGUS (conditions) | X | X | X | X | X |
| Limitations | X | X | X | X | X |
| # de couches |  |  |  | X |  |
| Couches associées |  |  |  | X |  |
| Couches non associées associées |  |  |  | X |  |
| Services | X | X |  |  |  |
| # de liens | X | X | X | X | X |
| Liens | X | X | X | X | X |
| # de contacts | X | X | X | X | X |
| Contacts | X | X | X | X | X |
| Version du format | X | X | X | X |  |
| Encodage | X | X | X |  |  |
| Editer | X | X | X | X | X |
| MD - UUID | X | X | X | X | X |
| MD - Date de création | X | X | X | X | X |
| MD - Modification | X | X | X | X | X |
| Langue | X | X | X | X | X |
