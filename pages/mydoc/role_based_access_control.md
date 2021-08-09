---
title: Role Based Access Control
tags:
keywords:
last_updated:
summary: "RBAC: Understanding the Roles and Access Controls for Teams and Custom Roles"
sidebar: mydoc_sidebar
permalink: docs/role-based-access-control
folder: mydoc
---

Roles are a _set of permissions_ granted that are specific to the Team that the user is a member of. There are pre-defined Roles that can be directly assigned to the members of the Team. If one wants to define [Custom Roles](roles-and-access-controls/custom-roles), that is also doable.

It is critical to thoroughly note that **Roles are Team-specific**, that is, **Roles will allow you specific abilities for just that Team that you are a part of**.

## Default Types of Roles and Abilities

There are 4 different default Roles that can be assigned to a Team member in Squadcast. See below to understand what they are, along with their abilities.

### 1. Manage Teams

This Role will allow you to manage just this Team. The abilities are:

| Entity | Abilities                |
|-----------------------------------|
| Teams  | `read` `update` `delete` |

### 2. Admin

| Entity              | Abilities                         |
|---------------------------------------------------------|
| Escalation Policies | `create` `read` `update` `delete` |
| Schedules           | `create` `read` `update` `delete` |
| Services            | `create` `read` `update` `delete` |
| Squads              | `create` `read` `update` `delete` |
| Status Pages        | `create` `read` `update` `delete` |
| Postmortems         | `create` `read` `update` `delete` |

### 3. User

| Entity              | Abilities       |
|---------------------------------------|
| Escalation Policies | `read` `update` |
| Schedules           | `read` `update` |
| Services            | `read` `update` |
| Squads              | `read` `update` |
| Status Pages        | `read` `update` |
| Postmortems         | `read` `update` |

### 4. Observer

| Entity              | Abilities |
|---------------------------------|
| Escalation Policies | `read`    |
| Schedules           | `read`    |
| Services            | `read`    |
| Squads              | `read`    |
| Status Pages        | `read`    |
| Postmortems         | `read`    |

![](images/rbac_1.png)

{{site.data.alerts.yellow-note-i-md}}
**Important:**

`Stakeholders` can be added with only `Observer` Role within a Team.
{{site.data.alerts.end}}

## Manage Roles and Abilities

Follow the steps below manage Roles for a Team:

**(1)** Click on **Settings** in the sidebar

![](images/add_and_delete_users_1.png)

**(2)** Click on **Teams** from the secondary navigation menu and select the Team you want to manage _Roles and Access Controls_ for

![](images/add_and_delete_teams_1.png)

**(3)** Click on **Roles** from the horizontal menu and you will have the option to `edit` or `delete` the Roles and Access Controls via the `More Option`

![](images/rbac_2.png)

{{site.data.alerts.yellow-note-i-md}}
**Note:**

Roles are Team specific, i.e., Roles will allow you specific abilities for just that team that you’re a part of.
{{site.data.alerts.end}}

## Custom Roles

There might be situations where the predefined _Roles and Abilities_ available for members of a Team in Squadcast, by default, are not sufficient or that they do not align with how you want your Team members to be organized (in terms of Access Controls). 

In such situations, you can either choose to modify one of the default Roles itself or you can create **Custom Roles** to provide special, customised permissions to specific types of users in your Organization for that Team.

It is critical to thoroughly note that only members of the Team with **Manage Team** Role permissions can create and manage **Custom Roles**.

### Creating a Custom Role

Follow the steps below to create a Custom Role for a Team:

**(1)** Click on **Settings** in the sidebar

![](images/add_and_delete_users_1.png)

**(2)** Click on **Teams** from the secondary navigation menu and select the Team for which you want to add the **Custom Role**

![](images/add_and_delete_teams_1.png)

**(3)** Click on **Roles** from the horizontal menu and scroll down to the bottom of the page

![](images/rbac_3.png)

**(4)** Click on **Add new team role**. Here:
- Give the Custom Role a **Name** indicating the Role type
- Next, for the available Entities (Escalation Policies, Postmortems, Schedules, Services, Squads, Status Pages), select the Access Controls (`read`, `create`, `update`, `delete`)

**(5)** Click on **Save** to create the new Custom Role for the Team

![](images/rbac_4.png)

