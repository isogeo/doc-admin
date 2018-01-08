# Question et erreurs fréquentes

De  notre expérience d'années de support, dans la plupart des cas les soucis sont résolus en vérifiant de nouveau [les prérequis](prerequisites.html) puis en redémarrant le service. Sinon cette page peut peut-être répondre à votre problème, avant d'écrire au [support du Scan](support.html).

## Du côté de l'installation

Si le message suivant s'affiche, veuillez vérifier [les prérequis](prerequisites.html), en particulier [les droits de l'utilisateur configuré](prerequisites.html#compte-utilisateur) pour lancer le service.

![Service non démarré](/images/scanFME_install_errors_ServiceDoNotStart.png "Le service n'a pas démarré")

____

## Du côté de l'interface

### Problème d'authentification \(Oups! Forbidden\) {#scan_err_ui_auth}

Après s'être authentifié sur l'interface du Scan FME, il arrive que le message ci-dessous s'affiche. Il s'agit d'un problème qui peut intervenir lors de multiples authentifications à Isogeo dans différents onglets.

Pour résoudre le problème, cliquer sur https://daemons.isogeo.com/logout puis réessayez.

![Scan FME - Oups forbidden](/images/scanFME_error_forbidden.png "Scan FME - Problème d'authentification \(Oups! Forbidden\)")

### Impossible d'accéder au chemin spécifié {#scan_err_ui_unreachable}

Si l'un des messages ci-dessous s'affiche, c'est qu'il y a un problème avec les paramètres d'accès aux données entrés dans le point d'entrée : chemin, schém, base de données, droits utilisateur...

![Echec du scan](/images/scanFME_scan_errors_UnableToAccessEntryPoint.png "Impossible d'accéder au chemin spécifié")

____

## Cas particuliers connus

### Shapefile supérieur à 2 Go

FME ne lit pas les shapefiles dont la taille de chaque composant (.shp / .dbf / .shx ...) dépasse les 2 Go, comme indiqué dans [la base de connaissance officielle](https://knowledge.safe.com/articles/772/fme-and-esri-arcgis-troubleshooting-guide.html) :

>  Note: Shape datasets larger than 2GB are considered invalid and will cause errors when opened in other applications.

Il s'agit d'ailleurs d'une limite inhérente au format, qu'Esri précise dans http://support.esri.com/technical-article/000010813[](http://support.esri.com/technical-article/000010813).

### Donnée géographique corrompue ou incohérente

Si un jeu de données contient un objet sans géomtrie, la donnée ne peut être lue jusqu'au bout par le Scan FME. Elle est donc indiquée dans la colonne erreur du détail de la requête du Scan avec la mantion "Impossible de lire la donnée".

Dans le fichier LOG, l'erreur intervient sur l'étape "LookUp". Exemple tiré d'une table PostGIS où le nombre d'enregistrement (lignes) était incohérent par rapport au nombre d'objets géométriques liés :

```json
{"worker":"wk-d864517e","level":"info","message":"(etl) Start new fme script from queue with options :  [ 'C:\\\\PROGRA~1\\\\Isogeo\\\\ISOGEO~1\\\\scripts\\\\lookup-postgis.fmw',\n  '--OUTPUT_JSON',\n  'C:\\\\PROGRA~1\\\\Isogeo\\\\ISOGEO~1\\\\tmp\\\\lookup-gC9aIjzL6',\n  '--LOG_FILE',\n  'C:\\\\PROGRA~1\\\\Isogeo\\\\ISOGEO~1\\\\tmp\\\\log-UUOBAvNXz',\n  '--USERNAME',\n  'isogeo',\n  '--PASSWORD',\n  'modepassepasse',\n  '--SOURCE',\n  'bdgeo_prod',\n  '--HOST',\n  '192.168.1.1',\n  '--PORT',\n  5432,\n  '--FEATURE_TYPES',\n  'schema.dataset' ]","timestamp":"2017-12-14T16:14:30.604Z"}
```
