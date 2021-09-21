---
title: Create & Manage Escalation Policies
tags: [escalation policies]
keywords: 
last_updated:
summary: "Define rules indicating when and how alerts will escalate to various Users, Squads and (or) Schedules within your Organization"
sidebar: mydoc_sidebar
permalink: docs/escalation-policies
folder: mydoc
---

Escalation Policies ensure that the right people are notified at the right time. Incident notifications can be configured to escalate to Users, Squads or Schedules in a given order and time. You can create different Escalation Policies for different Services.

## Prerequisites

- The User Role for the user in the Team must have the necessary permissions in order to manage Escalation Policies.

## Creating an Escalation Policy

Ensure that the right Team is selected used the team picker at the top of the screen.

**(1)** Click on **Escalation Policies** from the navigation sidebar

![](images/create_escalation_1.png)

**(2)** Click on **Add Escalation Policy** to create one from scratch

![](images/create_escalation_2.png)

**(3)** Give the Escalation Policy a **Name** and an optional **Description**

![](images/create_escalation_3.png)

**(4)** Add `Users`, `Squads` or `Schedules` as recipients of notifications at any level of the Escalation Policy 

![](images/create_escalation_4.png)

**(5)** Enter the appropriate time for **Escalate After**, giving enough notice for your recipients to acknowledge the alert after which it will escalate to the next level (if defined)

![](images/create_escalation_5.png)

{{site.data.alerts.blue-note-md}}
**Notify your team members as soon as an incident is triggered in Squadcast**

If you want to notify your team members as soon as an incident is triggered in Squadcast, set the **Escalate After** time for the first layer of escalation (first Escalation Rule) to **0 mins**. As and when an alert reaches Squadcast for the Service, an incident is created for it and the mapped users as in the Escalation Policy will get notified for it immediately based on the notification channels selected.

![](images/create_escalation_13.png)
{{site.data.alerts.end}}

{{site.data.alerts.blue-note-md}}
**Escalate After and the Order of Rules**

The time in (mins) input in the `Escalation After` text box takes the absolute time from the time of the incident creation. 

That is, the time input in all the levels of escalation is calculated from the time of the incident trigger.

The order of the rules will be carried out based on the time input. That is, from the shortest to the longest time, irrespective of the order in which the rules are placed while defining.
{{site.data.alerts.end}}

**(6)** There are two ways to add the medium of notification under **Notification Rules**:

From the dropdown, you can select either **Personal** or **Custom**

![](images/create_escalation_6.png)

  (a) **Custom** - As an Admin, you can select one or more of the available notification channels **(Email, Push, SMS and Phone)** to explicitly specify the channel via which the mapped users need to receive the incident notifications

  ![](images/create_escalation_7.png)

  (b) **[Personal Notification Rules](notification-rules)** - Allow users to set-up their preferred medium of notification for incidents

{{site.data.alerts.blue-note-md}}
**Note:**

By default, **Personal Notification Rules** (as indicated by **Personal** option in the dropdown) is enabled for all the mapped users in the Escalation Rule.
{{site.data.alerts.end}}

**(7)** Use **Add Rule** to add a new Escalation Rule (layer of escalation) in the policy 

![](images/create_escalation_8.png)

**(8)** **Repeat the _entire policy_** if no one acknowledges the incident even after the Escalation Policy has been executed fully once 

![](images/create_escalation_9.png)

{{site.data.alerts.blue-note-md}}
**Maximum Repeats Possible**

You can repeat any Escalation Policy for a **maximum of 3 times** only.

![](images/create_escalation_12.png)
{{site.data.alerts.end}}

**(9)** Click on **Save** to save and view the Escalation Policy

![](images/create_escalation_10.png)

![](images/create_escalation_11.png)

{{site.data.alerts.blue-note-md}}
**Important**

If the incident has transitioned away from the **Triggered** state when it was assigned to a specific Escalation Policy, then the rest of the rules in the Escalation Policy will not be executed.
{{site.data.alerts.end}}

## Editing/Deleting an Escalation Policy

**(1)** To edit an existing Escalation Policy, click on **More Options** for that particular Escalation Policy

**(2)** Choose **Edit** to modify the existing Escalation Policy or **Delete** to delete the Escalation Policy entirely

![](images/edit_escalation_1.png)

**(3)** After modifying the Escalation Policy, click on **Save**

{{site.data.alerts.blue-note-md}}
**Note**

Before deleting an Escalation Policy, **ensure that it is not associated with any of the Services or that there are no open incidents associated with the Escalation Policy**, otherwise you will be prohibited from deleting it.
{{site.data.alerts.end}}

## FAQs

**(1)** Can I add members from different Teams into an Escalation Policy for my Team?

No, adding members from across Teams into an Escalation Policy is not allowed. Any member that needs to be added in the Escalation Policy for a Team must be a part of the same Team.