# Managing users

Isogeo makes a distinction between three user profiles:
* `The Administrator`, who has full access to all the application's functions. The Administrator manages users and their rights, elements shared at the workgroup level, data inventorying, inventory updates, catalogs, shares, publishing, and can enter metadata.

* The `Writer`, who can enter and modify metadata, and search for and use this data using the associated services and resources.

* The `Reader`, who can search for and use data using the associated services and resources. In practice, this profile is rarely used; it is better to create OpenCatalogs for easier viewing.

> Tip: go directly to [users](https://app.isogeo.com/admin/users/memberships).

## Inviting a new user

Proceed as follows to invite a new user:

1. Go to [the dedicated menu](https://app.isogeo.com/admin/users);
2. Click on [the `+ Invite` tab](https://app.isogeo.com/admin/users/invitations/new);
3. Enter the user's Email address;
4. Choose the access level (Role);
5. Click on `Invite`.

The user will receive an invitation email ([see the dedicated chapter](/en/start/signup.html)).

> The invitation is valid for 7 days; it can be revoked at any time by an administrator.

![New user](en/images/adm_users_add.gif "Inviting a new user")

## Rights for each profile

| Functions                                       | Administrator    | Writer   | Reader   |
| :-------------------------------------------- | :---------------: | :-------: | :-------: |
| Manage users                                | X                 |           |           |
| Manage the address book                 | X                 |           |           |
| Manage the entry points                    | X                 |           |           |
| Manage the scan                            | X                 |           |           |
| Create, assign or unassign a catalog   | X                 |           |           |
| Manage shares                                | X                 |           |           |
| Manage CSW harvesting                 | X                 |           |           |
| Manage the list of coordinate systems    | X                 |           |           |
| Manage licenses                                | X                 |           |           |
| Manage specifications                          | X                 |           |           |
| Manage group parameters                | X                 |           |           |
| Create metadata                     | X                 |           |           |
| Access the full inventory                | X                 |           |           |
| Access the dashboard                    | X                 | X         |           |
| Modify metadata                      | X                 | X         |           |
| Create, assign or unassign a keyword   | X                 | X         |           |
| Assign/unassign an INSPIRE theme       | X                 | X         |           |
| Access the cataloged data               | X                 | X         | X         |
