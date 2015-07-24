# Déploiement du service

## Téléchargement du service

Chaque service Isogeo est généré à partir de notre plate-forme et possède ses propres identifiants.

Pour le récupérer, connectez-vous sur https://app.isogeo.com avec votre compte et rendez-vous dans la section Administration > Applications > Scan FME.

> Astuce : pour accéder directement à l'interface d'administration du scan : https://app.isogeo.com/admin/isogeo-worker

Si aucun service n'est actif, vous êtes invité à générer votre service en lui donnant un nom simple. Par exemple, celui de la machine ou de son utilisateur. Une fois nommé, vous pouvez télécharger le service.

![Nouveau service](/fr/images/scanFME_install_new_service_download.png "Nommer le nouveau service et cliquer sur télécharger")

Il est possible d'installer plusieurs services pas groupe de travail mais un même service ne peut être lié à plusieurs groupes de travail.

## Installation du service

1.	Décompressez l’archive (zip) que vous venez de télécharger dans le dossier `C:\Program files\Isogeo`. S'il n'existe pas, il vous faut le créer (si vous n'en avez pas les droits, contactez votre administrateur).

![Contenu de l'archive du service](/fr/images/scanFME_install_content.png "Décompresser l'archive zip du service dans le dossier Isogeo")

2.	Ouvrez le dossier`daemon`;

3.	Faites un clic droit sur `install.bat`, puis `Exécuter en tant qu’administrateur`

![Installer avec des droits d'administrateur](/fr/images/scanFME_install_RunAsAdminpng "Installer le service avec les droits d'administration")

Une console Windows va alors s’ouvrir et indiquer que l’installation et le démarrage du service sont en cours puis se fermer automatiquement. Si la fenêtre ne se ferme pas et qu’un message d’erreur est apparu, [contacter le support](/fr/support/README.html).

## Configuration du service

Afin d'accéder à toutes les ressources nécessaires au bon fonctionnement (données, solution FME, …), il est nécessaire de lancer le service à l'aide d'un compte utilisateur ayant les droits adéquats (cf. Compte utilisateur).

Ouvrez la console des services Windows (cliquez sur « Démarrer », rechercher « services »). Une fenêtre s’ouvre avec l’ensemble des services Windows. Si l’installation du Service Isogeo s’est correctement déroulée, un service nommé “Isogeo Service” avec l’état “Démarré” se trouve dans la liste.


Si ce service n'apparaît pas, tentez de rafraîchir la liste (clic droit>rafraîchir), si il n'apparaît toujours pas, essayez de nouveau l’installation en faisant un clic droit sur le fichier “install.bat” puis “exécuter en tant qu’administrateur” (cf. Installation du service - étape 3).

Allez dans les propriétés du service (clic droit>propriétés), puis dans l’onglet “connexion”. Choisissez l’option “Ce compte:” et indiquez les identifiants du compte utilisateur adéquat (voir les pré-requis). Si votre compte personnel rempli les conditions vous pouvez l’utiliser. Si vous ne savez pas quel compte utiliser, demandez de l’aide à un technicien ou un responsable des services informatiques.



Dans cet exemple, le compte antoine.audusseau a accès au logiciel FME ainsi qu’aux ressources réseaux permettant d’accéder aux données SIG.
Une fois le compte renseigné, cliquez sur “OK”. Une fenêtre vous demande de redémarrer le service pour prendre en compte le changement, pour suivre cette instruction, faite un clic droit sur le service puis choisissez “Redémarrer”. La dernière colonne du service devrait maintenant correspondre au compte que vous venez de renseigner.

L’installation est à présent terminée.

Retour à l’application Isogeo
Une fois l’installation effectuée, revenez sur votre navigateur et cliquez sur « Aller à l’application ». Normalement vous devez voir un point vert dans l’en-tête de l’application, cela veut dire que la communication entre le service que vous venez d’installer et la Plateforme Isogeo est établie !

Si le point est rouge, utilisez la fonction « Rafraîchir » disponible via le menu sur la droite du point.

Si rien ne change au bout de 5 minutes, contactez notre support.


## Erreurs les plus fréquentes

* l'user a pas les droits : symptômes
* FME n'accè pas au dossier ou à la base
* le service démarre pas : vérifier si le port `TCP 5671` est bien ouvert en direction de `daemons-mq.isogeo.com`.

