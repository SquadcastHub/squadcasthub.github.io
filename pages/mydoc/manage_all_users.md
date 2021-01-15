---
title: Manage All Users
tags: [manage users]
keywords:
last_updated:
summary: "Adding your team & defining their roles"
sidebar: mydoc_sidebar
permalink: docs/managing-all-users.html
folder: mydoc
---

## User Roles and privileges

Squadcast has four different user roles: 

**Account Owner**

Squadcast allows only one Account Owner per organization. She has all the privileges in that organization and will be responsible for the billing of the account.

**Admin**

Admin has all the privileges of the account other than Billing. Typically Admin can be Engineering Managers, Technical Lead or the person responsible for the engineering or DevOps team.

**User**

Users only have the privilege to edit their own profile but can see all the incidents happening in an organization. Typically Users are the engineers or support staff in a team

**Stakeholders**

As the name implies, these are typically other participants from the organization who may have an interest in the incident management process. They could be Product Managers, Customer Support representatives, CxOs and so on.

Stakeholders have view-only access to all Incidents. Additionally, they will be automatically subscribed to receive e-mail and push notifications for any incidents that they are associated with.. 

![](images/stakeholders.png){: style="border: 1px solid #cccccc"}

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

## Add or Remove a user

You can access the users page by clicking on the Users tab from the sidebar and view all the users of your organisation.

![](images/add_remove_user.png){: style="border: 1px solid #cccccc"}

Click on **Add Users** button and type in the First Name, Last Name and Email id of the user whom you wish to add to your organisation. Choose the role from the drop down that is most appropriate for each new user.

You can also remove an user by clicking on the red delete icon.

## Alert Forwarding

This is a setting that allows you to excuse users from getting alerts from Squadcast and instead forward it to someone else. You can set the Alert Forwarding status for any particular user and select a replacement user (forward to) who will be contacted for any incidents in that time. 

This ensures that critical alerts are not missed or delayed due to the engineer being super busy or away on holiday.

![](images/alert_forwarding.png){: style="border: 1px solid #cccccc"}