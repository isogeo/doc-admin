# Déploiement du service

## Téléchargement du service

Le service Isogeo est généré à partir de notre plate-forme pour chaque groupe de travail et possède ses propres identifiants.

Pour le récupérer, connectez-vous sur https://app.isogeo.com avec votre compte et rendez-vous dans la section Administration > Applications > Scan FME.

> Astuce : pour accéder directement à l'interface d'administration du scan : https://app.isogeo.com/admin/isogeo-worker

Si aucun service n'est actif, vous êtes invité à générer votre service en lui donnant un nom simple. Par exemple, celui de la machine ou de son utilisateur.

Vous pouvez également installer plusieurs services en sélectionnant `Ajouter` dans le menu <i class="fa fa-bars"></i>.

Une fois nommé, vous pouvez télécharger le service.

![Nouveau service](/images/scanFME_install_new_service_download.png "Nommer le nouveau service et cliquer sur télécharger")

## Installation du service

1.	Décompresser l’archive (zip) téléchargée dans le dossier `C:\Program files\Isogeo`. S'il n'existe pas, il faut le créer.

    ![Contenu de l'archive du service](/images/scanFME_install_content.png "Décompresser l'archive zip du service dans le dossier Isogeo")

2.	Ouvrir le dossier`daemon`;
3.	Faire un clic droit sur `install.bat`, puis `Exécuter en tant qu’administrateur`

    ![Installer avec des droits d'administrateur](/images/scanFME_install_RunAsAdmin.png "Installer le service avec les droits d'administration")

Une console Windows s’ouvre alors, indiquant que l’installation et le démarrage du service sont en cours puis se ferme automatiquement. Si la fenêtre ne se ferme pas et qu’un message d’erreur apparaît, revérifier les prérequis. Si le problème persiste, [contacter le support](/fr/support/README.html).

## Vérifier l'installation du service

1. Ouvrir la console des services Windows (cliquez sur « Démarrer », rechercher « services »).

    ![Ouvrir les services](/images/scanFME_install_servicesWindows.png "Accéder au gestionnaire de services de Windows")

2. Si l’installation du Service Isogeo s’est correctement déroulée, un service nommé `Isogeo Worker` avec l’état `En cours d'exécution` (ou "Démarré" sous W7) se trouve dans la liste.

    ![Service Isogeo Worker démarré](/images/scanFME_install_ServiceRunning.png "Le service Isogeo Worker est bien démarré")

Si ce service n'apparaît pas, tenter de rafraîchir la liste (F5).<br />S'il n'apparaît toujours pas, essayer de nouveau l’installation.

## Configuration du service

Le service **doit être lancé par l'utilisateur Windows dédié isogeo** ([voir les pré-requis](prerequisites.html#compte-utilisateur)). Or après l'installation, c'est le compte administrateur local qui en est "maître".

1. Ouvrir les propriétés du service (clic droit>propriétés),
2. Dans l’onglet `Connexion`, choisir l’option `Ce compte` et indiquer les identifiants du compte utilisateur `isogeo`.

    ![Ouvrir les services](/images/scanFME_install_service_RunAs.png "Accéder au gestionnaire de services de Windows")

3. Cliquer sur `OK`, une fenêtre indique qu'il est nécessaire de redémarrer le service pour prendre en compte le changement,
4. Clic droit sur le service > `Redémarrer`

L’installation est à présent terminée :) !

## Retour à l’application Isogeo

Une fois l’installation effectuée, revenez sur votre navigateur et cliquez sur « Aller à l’application ». Normalement vous devez voir un point vert dans l’en-tête de l’application, cela veut dire que la communication entre le service que vous venez d’installer et la Plateforme Isogeo est établie !

Si le point est rouge, utilisez la fonction « Rafraîchir » disponible via le menu sur la droite du point.

Si rien ne change au bout de 5 minutes, [contacter le support](/fr/support/README.html).

## Erreurs fréquentes

### Du côté de l'installation

Si le message suivant s'affiche, veuillez vérifier [les prérequis](/fr/features/scan_fme/installation/prerequisites.html), en particulier [les droits de l'utilisateur configuré](/fr/features/scan_fme/installation/prerequisites.html#compte-utilisateur) pour lancer le service.

![Service non démarré](/images/scanFME_install_errors_ServiceDoNotStart.png "Le service n'a pas démarré")

### Du côté de l'interface

Si en lançant un scan sur un point d'entrée, un message d'erreur s'affiche, merci de :
* vérifier les paramètres du point d'entrée (le chemin/schéma existe t'il ?),
* vérifier les droits de [l'utilisateur configuré](/fr/features/scan_fme/installation/prerequisites.html#compte-utilisateur) pour lancer le service,
* vérifier la disponibilité de la licence FME et des licences tierces éventuelles (1Spatial, ArcGIS).

![Echec du scan](/images/scanFME_scan_errors_UnableToAccessEntryPoint.png "Impossible d'accéder au chemin spécifié")

## Usages avancés

### Accélérer le Scan

Le service de scan permet d'utiliser jusqu'à 5 instances de FME à partir de la même licence.

**Si** le serveur est suffisamment dimensionné pour supporter cette charge, il suffit d'éditer le fichier *worker.bat* dans le dossier *daemon* de l'installation du scan et de modifier le paramètre `MAX_FME_CONCURRENCY_LIMIT` puis de redémarrer le service.

### Installer plusieurs services et les lier à un même FME

Pour les besoins de sprojets partenariaux où le Scan est mutualisé ou pour des besoins de cloisonnement des groupes de travail créant les fiches automatiquement, il ets possible de lier plusieurs services du Scan à une seule installation de FME, sur un ou plusieurs serveurs.

Voici la marche à suivre pour 2 groupes de travail, l'un nommé CA (le principal) et l'autre CC ((le subsidiaire) :

1. Télécharger le service de Scan à partir de chaque groupe de travail :

    | Dans le groupe principal | Dans le groupe subsidiaire |
    | :----------------------: | :----------------------: |
    | ![Télécharger le service](/images/scanFME_install_muli_gt01.png "Télécharger le service depuis le groupe de travail n°1") | ![Télécharger le service](/images/scanFME_install_muli_gt02.png "Télécharger le service depuis le groupe de travail n°2") |

2. Organiser correctement les installations pour éviter les confusions. Arbosrescence type attendue :
    ![Arborescence type](/images/scanFME_install_muli_arborescence.png "Bien ranger les différents services")

3. Renommer les services dans les fichiers `install.bat` et `uninstall.bat` (sous-dossier *daemon*), en remplaçant les 3 occurrences de `Isogeo Worker` par un nom spécifique à chacun :

    | Pour le groupe principal | Pour le groupe subsidiaire |
    | :----------------------: | :------------------------: |
    | ![Editer les fichiers](/images/scanFME_install_muli_edited_files_gt01.png "Edition des fichiers dans un éditeur de texte") | ![Editer les fichiers](/images/scanFME_install_muli_edited_files_gt02.png "Edition des fichiers dans un éditeur de texte") |










