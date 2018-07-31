## <i class="fa fa-phone"></i> Onglet "Contacts"

L’onglet « Contact » permet d’affecter, depuis votre carnet d’adresse, un ou plusieurs contacts pour chacune des données ;

![Edition unitaire - Contacts](/images/inv_edit_one_contacts.png "L&apos;édition unitaire - onglet Contacts")

| Définition          | Coordoonnées de/s l&apos;organisation(s) ou personne(s) liées à la vie de la donnée (production, gestion, traitement, publication...) |
| :------------------ | :------------------------------------------------ |
| Indications         | Il s&apos;agit d&apos;indiquer les **contacts liés à la donnée et non à la métadonnée ou au catalogue** ([contact qui se paramètre au niveau du tableau de bord](../../settings/dashboard.html#le-point-de-contact-du-groupe-de-travail)). Choisir dans la liste des contacts et affecter l&apos;un des rôles.<br />La liste des contacts disponibles est modifiable par l&apos;administrateur (voir [le chapitre dédié](../../features/admin/contacts.html)).|
| Exemple             | Equipe PPIGE > Point de contact<br />IGN > Fournisseur |
| Exigence INSPIRE    | Obligatoire                   |
| Edition par lot     | Oui, par incrémentation       |
| Scan                | Non                           |
| Moteur de recherche | Oui                           |
| Fiche ressource     | Oui                           |
| Fiche service       | Oui                           |


> Astuce : il est possible d&apos;ajouter plusieurs fois le même contact avec des rôles différents mais supprimer une fois ce contact, supprime tous ses rôles.

### Matrice des rôles des contacts

**(X)** : valeur par défaut fortement recommandée

| Rôle                      | Description | [Recommandé](http://georezo.net/wiki/main/donnees/inspire/aide_a_la_saisie_des_metadonnees_inspire#organisations_responsables_de_l_etablissement_de_la_gestion_de_la_maintenance_et_de_la_diffusion_des_series_et_services_de_donnees_geographiques)|
|:------------------------- |:----------- | :----------: |
| Administrateur            | Organisme ou personne responsable de la gestion et de la mise à jour de la donnée. |  X           |
| Auteur                    | Organisme ou personne qui a complété la donnée. Il en détient les droits moraux. |  X           |
| Analyste principal        |             |              |
| Créateur                  |             |  X           |
| Distributeur              |             |              |
| Editeur (publication)     | Partie qui a publié la ressource.            |              |
| Fournisseur               | Organisme ou personne qui délivre physiquement la donnée, soit de manière directe au destinataire, soit par l’intermédiaire d’un diffuseur | X |
| Point de contact          | Organisme ou personne que l’on peut contacter pour avoir des renseignements détaillés sur la donnée. |  **(X)**       |
| Responsable du traitement |             |              |
| Utilisateur               |             | -            |


