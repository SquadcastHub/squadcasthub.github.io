---
title: Create & Manage Escalation Policies
tags: [escalation policies]
keywords: 
last_updated:
summary: "Define rules on when and how alerts escalate to various Users, Squads and (or) Schedules within your organization."
sidebar: mydoc_sidebar
permalink: docs/escalation-policies
folder: mydoc
---

Escalation Policies make sure the right people are notified at the right time. The incident notifications can be configured to escalate to Users, Squads or Schedules in a given order and time. You can create different Escalation Policies for different Services. 

## Creating an Escalation Policy

- You can create a Escalation Policy under **Escalation Policies** from the navigation sidebar.

- Click on **Add Escalation Policy** to create one from scratch or choose to edit an existing one by clicking on the **More Options** button for the specific escalation policy.

![](images/create_escalation_1.png)

![](images/create_escalation_2.png)

- Give the Escalation Policy a Name and a Description.

- You can add `Users`, `Squads` or `Schedules` as recipients at any level. 

- Enter the appropriate time, giving enough notice for your recipients to acknowledge the alert after which it will escalate to the next level. 

- You can also choose to override the user's notifications by turning off the  `Personal Notification Rules` toggle and adding in the notification modes of your choice. 

- In this case, we have chosen to retain the personal notification rules for Escalation Rules 1 and 3 and have added our notification overrides for Escalation Rule 2. 

![](images/create_escalation_3.png)

{{site.data.alerts.blue-note}}
<b>Escalation After and the Order of Rules: </b>
<br/><br/><p>The time in (mins) input in the `Escalation After` text box takes the absolute time.<br/><br/>That is, the time input in all the levels of escalation is calculated from the time of the incident trigger.<br/><br/>The order of the rules will be carried out based on the time input. That is, from the shortest time to the longest, irrespective of the order in which the rules are placed.</p>
{{site.data.alerts.end}}

- By clicking **Add Rule** you can add any number of level of recipients to your escalation policy. 

![](images/create_escalation_4.png)

![](images/create_escalation_5.png)

## Repeating Escalation Policy

There is an option to repeat an policy a given number of times if the incident is still in the **Triggered** state, that is, if no one acknowledges it even after the escalation policy has been executed fully once. 

- You can do this by entering an accepted value (1,2 or 3) in the `Repeat` box at the bottom of the UI pop-up while creating the escalation policy. 

- Click on the **Save** button to update the escalation policy. 

![](images/create_escalation_6.png)

{{site.data.alerts.blue-note}}
<b>Maximum Repeats Possible: </b>
<br/><br/><p>You can repeat any escalation policy a maximum of 3 times only</p>
{{site.data.alerts.end}}

{{site.data.alerts.blue-note}}
<b>Note: </b>
<br/><br/><p>If the incident has transitioned away from the **Triggered** state when it was assigned to a specific escalation policy, then the rest of the rules in the escalation policy will not be carried out.</p>
{{site.data.alerts.end}}