---
title: Manage All Users
tags: [Add-Users, Import-Users, Squads]
keywords:
last_updated:
summary: "Adding your team & defining their roles"
sidebar: mydoc_sidebar
permalink: docs/managing-all-users
folder: mydoc
published: false
search: exclude
---

## User Roles and privileges

Squadcast has four different User Roles: 

**Account Owner**

Squadcast allows only one Account Owner per organization. An Account Owner has all the privileges in that organization and will be responsible for the billing of the account.

**Admin**

Admin has all the privileges of the account other than Billing. Typically Admins can be Engineering Managers, Technical Leads or the people responsible for the Engineering or DevOps teams.

**User**

Users only have the privilege to edit their own profile but can see all the incidents happening in an organization. Typically Users are the engineers or support staff in a team.

**Stakeholder**

As the name implies, these are typically other participants from the organization who may have an interest in the incident management process. They could be Product Managers, Customer Support representatives, CxOs and so on.

Stakeholders have view-only access to all Incidents.

![](images/stakeholders.png)

{{site.data.alerts.yellow-note-i}}
<b>Note: </b>
<p><br/>Only an Account Owner or Admin can add or delete users, admins and stakeholders. 
If you are a User or Stakeholder in Squadcast, this privilege is not available for you.</p>
{{site.data.alerts.end}}

The below table helps understand role permissions easily.

<style>
table{
   max-width: 100%;
}
th{
   width: 27%;
}
</style>

| Role/Feature               | Account Owner                        | Admin                                | User               |
|----------------------------|--------------------------------------|--------------------------------------|--------------------|
| **Incidents Page**         | View, Add, Respond                   | View, Add, Respond                   | View, Add, Respond |
| **User**                   | View, Add, Edit, Delete all Users    | View, Add, Edit, Delete all Users    | View               |
| **Squad**                  | View, Add, Edit, Delete              | View, Add, Edit, Delete              | View               |
| **Escalation Policies**    | View, Add, Edit, Delete              | View, Add, Edit, Delete              | View               |
| **Services**               | View, Add, Edit, Delete              | View, Add, Edit, Delete              | View               |
| **Schedules**              | View, Add, Edit, Delete              | View, Add, Edit, Delete              | View               |
| **Integrations**           | View, Integrate, Revoke              | View, Integrate, Revoke              | View               |
| **Analytics**              | View                                 | View, Integrate, Revoke              | View               |
| **Billing**                | View, Edit                           | No Access                            | No Access          |
