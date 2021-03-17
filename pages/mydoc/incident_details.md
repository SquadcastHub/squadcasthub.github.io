---
title: Incident Details
tags: [incident]
keywords:
last_updated:
summary: "Get more details about the incident"
sidebar: mydoc_sidebar
permalink: docs/incident-details
folder: mydoc
---

### Get more details for an incident

**(1)** Move to the **[Dashboard](incident-dashboard)** or the **[Incident List](incident-list-table-view)** to view and open incidents

![](images/incident_1.png)

![](images/incident_1_1.png)

**(2)** By clicking on any incident, you will be taken to its dedicated **Incident Details** page which shows all the details of the incident. You can see:

**(a)** **Incident ID**, and **Incident Message**

{{site.data.alerts.blue-note}}
<b>Copy Incident URL</b>
<br/><br/><p>The copy button beside Incident ID copies the Incident URL to the clipboard</p>
{{site.data.alerts.end}}

**(b)** Associated **Tags** below the **Message**. Tags can also be added/updated here

**(c)** **Incident Description** i.e. the alert information along with images and links sent by the **Alert Source**

**(d)** Incident Status

#### Triggered
When an incident is open, it will be in the **Triggered** state. Concerned users will get notified when an incident is in **Triggered** state. It will remain in this state until someone acknowledges it.

![](images/incident_2.png)

#### Acknowledged
Incident shifts from **Triggered** to **Acknowledged** state when any user acknowledges it. The user can now look into the incident and try to solve it. If the incident is **Reassigned** or escalated to another user, it will go back to a triggered state, until the new user takes responsibility for it and acknowledges the incident.

#### Resolved
Incidents can be marked as **Resolved** to close them.

#### Suppressed
Sometimes, the incidents can be in a **Suppressed** state - this happens when the alert notification was not meant to go out for some reason like the **Service** was under maintenance. 

**(e)** [Incident Notes](incident-notes) to collaborate with your team 

**(f)** Ability to:

- Acknowledge
- Reassign to a User, Squad or an Escalation Policy
- Action to create JIRA tickets or take actions via [Circle CI](https://support.squadcast.com/docs/circleci-actions)
- Resolve

**(g)** Incident Details displaying:

- Created Date and Time
- Alert Source
- Affected Service
- Elapsed time

**(h)** Responders

**(i)** [Activity Timeline](incident-timeline)

**(j)** [Update Status Page](statuspage#updating-your-statuspage)

![](images/incident_3.png)

**(k)** [Create Postmortem](postmortems#creating-a-postmortem)

![](images/incident_4.png)

### Incident Field Limitations

|    Incident Field    | Character Limit |
|:--------------------:|:---------------:|
|   Incident Message   |       250       |
| Incident Description |      15000      |
