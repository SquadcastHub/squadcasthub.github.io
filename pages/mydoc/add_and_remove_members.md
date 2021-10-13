---
title: Add and Remove Team Members
tags:
keywords:
last_updated:
summary: "Adding or removing an existing Team member"
sidebar: mydoc_sidebar
permalink: docs/add-and-remove-members
folder: mydoc
---

This document will walk you through how you can add or remove members from a Team.

## Add a Member to a Team

**(1)** Click on **Settings** in the sidebar

![](images/add_and_delete_users_1.png)

**(2)** Click on **Teams** from the secondary navigation menu and select the Team to which a new member needs to be added

![](images/add_and_delete_teams_1.png)

**(3)** Click on **Members** from the horizontal menu and scroll down to the bottom of the page

**(4)** Click on **Add New Members**, select the member from the drop-down list and select the `Team Roles`

**(5)** Click on **Add Members** and confirm their addition into the Team

![](images/add_and_delete_teams_5.png)

## Remove a Member from a Team

**(1)** Click on **Settings** in the sidebar

![](images/add_and_delete_users_1.png)

**(2)** Click on **Teams** from the secondary navigation menu and select the Team from which the Team member has to be removed

![](images/add_and_delete_teams_1.png)

**(3)** Click on **Members** from the horizontal menu and hover over the name of the Team member that needs to be removed

**(4)** Click on **Remove** via `More Options` corresponding to the concerned Team member & confirm **Remove** in the pop-up window to remove the member from the Team

![](images/add_and_delete_teams_6.png)

**(5)** If the Team member to be removed is a part of any of the entities (Incidents, Escalation Policies, Schedules) that belong to the Team, a modal displaying those details will appear

![](images/add_and_remove_members_replace_modal.png)

**(6)** Now, select the Team member who will replace the one who is being removed using the available drop-down

**Important:** For incidents, there are 2 options:

- If the checkbox is left **unchecked**, all the incidents assigned to the member being removed will be reassigned to the replacing Team member. The replacing Team member will receive **one** Email notification notifying them of the incidents that are now assigned to them
- If the checkbox is **checked**, all the **open** incidents (incidents in the `Triggered` and `Acknowledged` states) assigned to the member being removed will be suppressed

**(7)** Once the appropriate replacement Team member is selected and an action for incidents is determined, click on **Swap & Remove**

**(8)** A success modal confirming the swap will appear, like in the screenshot below

![](images/add_and_remove_members_success_modal.png)

In addition to this, if a user also needs to be deleted from the Organization, please follow the steps [here](https://support.squadcast.com/docs/add-and-delete-users#delete-users) to do so.
