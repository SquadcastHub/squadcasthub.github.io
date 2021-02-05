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

## Creating an Escalation Policy

**(1)** Click on **Escalation Policies** from the navigation sidebar

![](images/create_escalation_1.png)

**(2)** Click on **Add Escalation Policy** to create one from scratch

![](images/create_escalation_2.png)

**(3)** Give the Escalation Policy a Name and a Description

![](images/create_escalation_3.png)

**(4)** Add `Users`, `Squads` or `Schedules` as recipients at any level of the Escalation Rule 

![](images/create_escalation_4.png)

**(5)** Enter the appropriate time for **Escalate After**, giving enough notice for your recipients to acknowledge the alert after which it will escalate to the next level (if defined)

![](images/create_escalation_5.png)

{{site.data.alerts.blue-note}}
<b>Escalation After and the Order of Rules</b>
<br/><br/><p>The time in (mins) input in the `Escalation After` text box takes the absolute time. <br/>That is, the time input in all the levels of escalation is calculated from the time of the incident trigger.<br/>The order of the rules will be carried out based on the time input. That is, from the shortest to the longest time, irrespective of the order in which the rules are placed while defining.</p>
{{site.data.alerts.end}}

**(6)** There are two ways to add the medium of notification:

  (a) Select one or more options from **Via** drop-down for every Escalation Rule

![](images/create_escalation_6.png)

  (b) [Personal Notification Rules](notification-rules) - Allow users to set-up their preferred medium of notification

![](images/create_escalation_7.png)

**(7)** Use **Add Rule** to add a new escalation layer in a policy 

![](images/create_escalation_8.png)

**(8)** Repeat the entire policy if no one acknowledges the incident even after the Escalation Policy has been executed fully once 

![](images/create_escalation_9.png)

{{site.data.alerts.blue-note}}
<b>Maximum Repeats Possible</b>
<br/><br/><p>You can repeat any Escalation Policy for a maximum of 3 times only</p>
{{site.data.alerts.end}}

**(9)** Click on **Save** to view the Escalation policy

![](images/create_escalation_10.png)

![](images/create_escalation_11.png)

{{site.data.alerts.blue-note}}
<b>Note</b>
<br/><br/><p>If the incident has transitioned away from the **Triggered** state when it was assigned to a specific Escalation Policy, then the rest of the rules in the Escalation Policy will not be carried out.</p>
{{site.data.alerts.end}}

## Edit or Delete an Escalation Policy

**(1)** To edit an existing Escalation Policy, click on **More Options** for that particular Escalation Policy

**(2)** Choose **Edit** to modify the existing Escalation Policy or **Delete** to delete the Escalation Policy entirely

![](images/edit_escalation_1.png)

**(3)** After modifying the Escalation Policy, click on **Save**

{{site.data.alerts.blue-note}}
<b>Note</b>
<br/><br/><p>Before deleting an Escalation Policy, ensure that it is not associated with any of the Services or that there are no open incidents associated with the Escalation Policy, otherwise you will be prohibited from deleting it.</p>
{{site.data.alerts.end}}