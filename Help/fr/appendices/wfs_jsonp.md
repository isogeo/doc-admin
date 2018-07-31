# Paramétrer son serveur cartographique pour le JSON-P

## Enjeux

Pour afficher un flux WFS dans une librairie cartographique web, il est nécessaire de récupérer les données pour ensuite les visualiser. Or, la requête est la plupart du temps bloquée par le principe du *Cross Domain* qui vise à empêcher deux serveurs possédant un domaine différent de s’échanger des données (voir [une explication détaillée sur Open Class Rooms](http://openclassrooms.com/courses/ajax-et-l-echange-de-donnees-en-javascript/l-xmlhttprequest-cross-domain)).

Le *JSONP* permet de contourner ce problème, en encapsulant le résultat dans une balise ```<script>``` (voir [l’article dédié au JSONP sur Journal du Net](http://www.journaldunet.com/developpeur/client-web/json-ajax-et-jquery/une-requete-inter-domaine-a-l-aide-de-jsonp.shtml)). Pour ne pas avoir d’erreur Javascript, le résultat est contenu dans une fonction, il faut donc connaître le nom de cette fonction pour pouvoir utiliser la réponse.

Parmi les serveurs cartographiques les plus répandus, tous ne permettent pas de générer du *JSONP* via le paramètre `OUTPUTFORMAT=`. Nous présentons ici la solution avec GeoServer (serveur cartographique libre et gratuit), Esri ayant implanté ses propres versions des standards (voir [Esri Feature/service d’entités](http://resources.arcgis.com/fr/help/main/10.2/index.html#//0154000002w8000000) correspondant au WFS).

## GeoServer

GeoServer permet de renvoyer du *JSONP* si la fonctionnalité a été activée (elle est désactivée par défaut). Pour activer ce paramètre, il faut créer une variable d’environnement dépendant de l&apos;utilisateur exécutant le service GeoServer nommée `ENABLE_JSONP` avec pour valeur `true` puis redémarrer le service GeoServer.

Pour cela il est recommandé d&apos;utiliser [la commande SETX](https://technet.microsoft.com/en-us/library/cc755104.aspx) :

```bash
SETX /u myuser [/p [<Password>]] ENABLE_JSONP true
```

![GeoServer JSONP](/images/annex_GeoServer_WFS_JSONP_UserEnv.png "Créer une variable utilisateur ENABLE_JSONP = true")

Une fois cette manipulation effectuée, lors d’une requête `GetCapabilities` sur l’un de vos services WFS provenant de GeoServer, le format JSONP est présent.

## Références pour GeoServer

* [Formats de sortie disponibles pour le WFS](http://docs.geoserver.org/latest/en/user/services/wfs/outputformats.html)
* [Paramètres globaux du service WMS](http://docs.geoserver.org/latest/en/user/services/wms/global.html#enable-jsonp)
