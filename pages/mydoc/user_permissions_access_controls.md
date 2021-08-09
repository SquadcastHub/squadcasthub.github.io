---
title: User Permissions - Access Controls
tags:
keywords:
last_updated:
summary: "Organization-level Access Controls within your Account"
sidebar: mydoc_sidebar
permalink: docs/user-permissions-access-controls
folder: mydoc
---

Once you have onboarded users into your Organization, you can customize their accesses to the account by adding additional permissions. These are an additional level of permissions, on top of the _User Type_ that they have been added as.

### Organization-level Permissions

The below Organization-level entities can be managed by enabling the checkboxes against the users:
- Users
- Teams
- API Tokens
- Extensions
- Postmortem Templates
- Billing

![](images/user_permissions_access_controls_1.png)

### Understanding Organization-level Permissions

These Organization-level specific entity permissions can be assigned only to `Account Owners` and `Users`.

<style>
table{
   max-width: 100%;
}
th{
   width: 27%;
}
</style>

| Permission Type             | What it means                                             | User Types who can be assigned these|
|-------------------------------------------------------------------------------------------------------------------------------|
| Manage Users                | Add, Delete users                                         | Account Owner, User                 |
| Manage Teams                | Create Teams                                              | Account Owner, User                 |
| Manage API Tokens           | Create, Revoke API Tokens for all users                   | Account Owner, User                 |
| Manage Extensions           | Enable, Disable Extensions                                | Account Owner, User                 |
| Manage Postmortem Templates | Create & Modify Templates, set Default Template           | Account Owner, User                 |
| Access and manage Billing   | Access, Manage Billing and Card Details in Billing Portal | Account Owner, User                 |

{{site.data.alerts.yellow-note-i-md}}
**Important:**

- `Account Owners` have all of these permissions by default.
- You cannot assign any permissions to a `Stakeholder` type of user by default.
{{site.data.alerts.end}}