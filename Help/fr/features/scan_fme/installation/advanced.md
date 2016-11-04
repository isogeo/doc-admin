# Configuration et usages avancés

## Accélérer le Scan

Le service de scan permet d'utiliser jusqu'à 5 instances de FME à partir de la même licence.

**Si** le serveur est suffisamment dimensionné pour supporter cette charge, il suffit d'éditer le fichier *worker.bat* dans le dossier *daemon* de l'installation du scan et de modifier le paramètre `MAX_FME_CONCURRENCY_LIMIT` puis de redémarrer le service.

## Installer plusieurs services et les lier à un même FME

Pour les besoins des projets partenariaux où le Scan est mutualisé ou pour des besoins de cloisonnement des groupes de travail créant les fiches automatiquement, il est possible de lier plusieurs services du Scan à une seule installation de FME, sur un ou plusieurs serveurs.

Voici la marche à suivre pour 2 groupes de travail, l'un nommé CA (le principal) et l'autre CC ((le subsidiaire) :

1- Télécharger le service de Scan à partir de chaque groupe de travail :

| Dans le groupe principal | Dans le groupe subsidiaire |
| :----------------------: | :----------------------: |
| ![Télécharger le service](/images/scanFME_install_muli_gt01.png "Télécharger le service depuis le groupe de travail n°1") | ![Télécharger le service](/images/scanFME_install_muli_gt02.png "Télécharger le service depuis le groupe de travail n°2") |

2- Organiser correctement les installations pour éviter les confusions. Arborescence type attendue :

![Arborescence type](/images/scanFME_install_muli_arborescence.png "Bien ranger les différents services")

3- Renommer les services dans les fichiers `install.bat` et `uninstall.bat` (sous-dossier *daemon*), en remplaçant les 3 occurrences de `Isogeo Worker` par un nom spécifique à chacun :

| Pour le groupe principal | Pour le groupe subsidiaire |
| :----------------------: | :------------------------: |
| ![Editer les fichiers](/images/scanFME_install_muli_edited_files_gt01.png "Edition des fichiers dans un éditeur de texte") | ![Editer les fichiers](/images/scanFME_install_muli_edited_files_gt02.png "Edition des fichiers dans un éditeur de texte") |

4- Lancer les fichiers `install.bat` et vérifier que les services sont bien enregistrés et fonctionnels :

![2 services installés sur le même serveur](/images/scanFME_install_muli_services.png "vérifier l'installation des 2 services")


