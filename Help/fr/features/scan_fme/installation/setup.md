# Déploiement du service

## Téléchargement du service

Chaque service Isogeo est généré à partir de notre plate-forme et possède ses propres identifiants.

Pour le récupérer, connectez-vous sur http://app.isogeo.com avec votre compte et rendez-vous dans la section Administration > Applications > Scan FME ou plus directement cliquez ici.

Lors de votre première visite, vous êtes invité à créer votre premier service en lui donnant un nom simple par exemple le nom de la machine ou de son utilisateur.

Après validation, un lien de téléchargement est mis à votre disposition. Cliquez sur ce lien afin de télécharger le service à installer.

## Installation du service

1.	Décompressez l’archive (zip) que vous venez de télécharger dans un emplacement pertinent de votre machine. Ce dernier importe peu mais vous devez vous en souvenir et ne plus y toucher, au risque de devoir recommencer la procédure. Par exemple dans un dossier C:\Program files\Isogeo (si vous avez les droits)

2.	Ouvrez le dossier « daemon »

3.	Faites un clic droit sur « install.bat », puis « Exécuter en tant qu’administrateur »

Une fenêtre va alors s’ouvrir et vous indiquer que l’installation et le démarrage du service sont en cours puis se fermer automatiquement.

Si la fenêtre ne se ferme pas et qu’un message d’erreur est apparu, contactez notre support par mail à support@isogeo.fr.

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
