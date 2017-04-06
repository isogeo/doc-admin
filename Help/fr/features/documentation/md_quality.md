## Onglet "Qualité"

L’onglet « Qualité » précise les spécifications utilisées pour collecter et contrôler la donnée, ainsi que les résultats des tests relatifs à la cohérence topologique ;

![Edition unitaire - Qualité](/images/inv_edit_one_quality.png "L'édition unitaire - onglet Qualité")

_________

## Conformité aux spécifications

| Définition          | Indique si le jeu de données respecte les prescriptions techniques qui ont encadré sa production |
| :------------------ | :---------------------------- |
| Indications         | Les spécifications peuvent être l'un des standards officiels (Covadis, CNIG, INSPIRE...) ou un ensemble d'exigences techniques spécifiques (CCTP, CCAP...). Il faut donc indiquer à quelle spécification est liée la donnée et si elle y est conforme ou pas.<br />La conformité est une déclaration de la seule responsabilité du producteur et il n’est pas prévu de contrôler, en France, cette déclaration.<br />Une donne peut répondre à une ou plusieurs spécifications (INSPIRE et CNIG par exemple). |
| Exemple             | Guide INSPIRE sur les systèmes de maillage géographique - Conforme |
| Exigence INSPIRE    | Obligatoire                   |
| Edition par lot     | Oui, par incrémentation       |
| Scan                | Non                           |
| Moteur de recherche | Non                           |
| Fiche ressource     | Non                           |
| Fiche service       | Oui                           |

_________

## Cohérence topologique

| Définition          | Descriptif de la qualité strictement technique de la donnée |
| :------------------ | :---------------------------- |
| Indications         | Décrire la mesure effectuée et les résultats qualitatifs et quantitatifs obtenus. Même si cette information ne concerne a priori que certaines données, elle est un gage de la qualité du catalogage. |
| Exemple             | Topologie simple.<br />La géométrie, issue de la base de données unifiée, est simplifiée par suppression et répartition des points intermédiaires.<br /><br />Les propriétés de cette opération de « généralisation » sont les suivantes :<br /> - La topologie et les relations de voisinage entre les communes, les cantons, les arrondissements et les départements sont conservées ;<br /> - Les sommets du graphe des limites communales, cantonales, d’arrondissements et départementales ne sont pas déplacés ;<br /> - Entre une limite généralisée des classes « LIMITES » (communales, cantonales, d’arrondissements et départementales) et son homologue non généralisé dans la base de données unifiée , l’écart maximum est de 1000 mètres. |
| Exigence INSPIRE    | Obligatoire seulement pour les données INSPIRE des thèmes Hydrographie et Réseaux de transport. |
| Edition par lot     | Oui, par écrasement           |
| Scan                | Non                           |
| Moteur de recherche | Non                           |
| Fiche ressource     | Non                           |
| Fiche service       | Non                           |

