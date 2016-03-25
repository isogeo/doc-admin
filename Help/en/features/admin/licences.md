# Managing licenses

Data use and access conditions are information that is both essential and critical to enter. To understand better, refer to the [chapter that deals with national recommendations](http://georezo.net/wiki/main/donnees/inspire/aide_a_la_saisie_des_metadonnees_inspire#contraintes_en_matiere_d_acces_et_d_utilisation).

To bring this critical information to your user's attention, and to make documenting it considerably easier, Isogeo allows you to manage a license repository in which you can, for example, add your data exchange conventions.

This means you can dispense with having to revise each record. And that means time gained and high-quality metadata!

> Tip: go directly to the [licenses](https://app.isogeo.com/admin/licenses).

## Licenses types

Isogeo suggests some reference licenses by default. They are easily recognized by the padlock icon next to their name in the list.

Using the tabs, you can filter by:
* [`My licenses`](https://app.isogeo.com/admin/licenses/owned): only licenses for your workgroup;
* [`Others`](https://app.isogeo.com/admin/licenses/shared): licenses suggested by Isogeo by default;
* `All`: all specifications.

## Adding a license

To add a license to your workgroup, simply proceed as follows:

1.	Select `Administration` > `Licenses`;
2.	Click on the [`+ New`](https://app.isogeo.com/admin/licenses/new) button;
3.	Enter:
    * Name: a descriptive name generally including the version number or reference date;
    * Link: the URL for the full document of the licence;
    * and a summary of conditions (free or not, paid or not, restricted or not, etc.).
4.	Click on `Create`, `Save` or `Delete`.

All licenses added are available in the `TOS` > `Conditions` tab when editing a metadata record.

![New license demo](/images/adm_licenses_add.gif "Adding a new license")

## Advanced use

Because license texts are seldom read, it is good practice to use icons to summarize their main provisions.

For example, to indicate a free license that requires quoting the source but prevents any commercial reuse or modification, you can use the [markdown syntax](/en/features/documentation/syntax_markdown.html):

### Syntax

```no-highlight
![Attribution icon](http://creativecommons.fr/wordpress/wp-content/uploads/2011/05/by6.gif "Attribution")
![No Commercial Use icon](http://creativecommons.fr/wordpress/wp-content/uploads/2011/05/nc2.gif "No Commercial Use")
![No Modification icon](http://creativecommons.fr/wordpress/wp-content/uploads/2011/05/nd1.gif "No Modification")
```

### Result

![Attribution icon](http://creativecommons.fr/wordpress/wp-content/uploads/2011/05/by6.gif "Attribution")
![No Commercial Use icon](http://creativecommons.fr/wordpress/wp-content/uploads/2011/05/nc2.gif "No Commercial Use")
![No Modification icon](http://creativecommons.fr/wordpress/wp-content/uploads/2011/05/nd1.gif "No Modification")
