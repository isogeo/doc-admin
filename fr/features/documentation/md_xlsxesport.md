# Exporter les données en tableur

Il est possible d’exporter tout ou partie de son patrimoine de métadonnées en format tableur. 

Cela répond à différents besoins : 

* génération d’un fichier de support pour faciliter les contributions en interne (metadata party par exemple), le fichier Excel étant par définition filtrable ;
* suivi du projet de catalogage ;
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


Attention, il ne faut pas fermer le module pendant le traitement des données. Le téléchargement se déclanchera automatiquement une fois les fichiers prêts. 


## Paramètrage

### Formats

Lors de l'export, il est possible de choisir entre deux formats : 

* le `.csv`, avec le séparateur virgule (`,`) ;
* le `.xlsx`.

### Personnaliser le nom des fichiers

#### Préfixe

Il est possible d'ajouter un prefixe qui sera ajouté au début du nom de tel sorte que le nom respecte la forme suivante : **Prefix_Isogeo[_ConfigDate]**

#### Date

Valeurs possibles :

- rien n'est ajouté au nom du fichier ;
- seule la date est ajoutée, sous la forme \`AAAA-MM-JJ\` ;
- la date et l'heure est ajoutée, sous la forme \`AAAA-MM-JJ-HHmm\`.

Valeur par défaut : La date et l'heure.


## Contenu

### Contenu de l'Excel

L'excel est composé de quatre onglets, un pour chaque type de donnée : 

* Vecteur
* Rasteur
* Service
* Ressource

Chaque onglet contient les informations d'intérêt associés à chaque type de ressource. 

### Contenu du csv

L'export en cvs consiste en un zip contenant quatre fichiers csv, un pour chaque type de donnée : 

* Vecteur
* Rasteur
* Service
* Ressource


