---
title: Incident Details
tags: [incident]
keywords:
last_updated:
summary: "Get more details for an incident"
sidebar: mydoc_sidebar
permalink: docs/incident-details
folder: mydoc
---

## Get more details for an incident

First, select the **Team** from the team picker on the top.

**(1)** Move to the **[Dashboard](incident-dashboard)** or the **[Incidents](incident-list-table-view) page** to view and open incidents

![](images/incident_1.png)

**(2)** By clicking on any incident, you will be taken to its dedicated **Incident Details** page which shows all the details of the incident

### What does the Incident Details page for an incident contain

![](images/incident_2.png)

**(a)** **Incident ID** and **Incident Message**

{{site.data.alerts.blue-note-md}}
**Copy Incident URL**

The copy button beside Incident ID copies the Incident URL to the clipboard.

![](images/incident_5.png)

{{site.data.alerts.end}}

**(b)** Associated **Tags** below the **Message**. Tags can also be added/updated here

**(c)** **Incident Description** i.e. the alert information along with images and links sent by the **Alert Source**

**(d)** Incident **Status**

- **Triggered**: When an incident is open, it will be in the **Triggered** state. Concerned users will get notified when an incident is in **Triggered** state. It will remain in this state until someone acknowledges it

- **Acknowledged**: Incident shifts from **Triggered** to **Acknowledged** state when any user acknowledges it. The user can now look into the incident and try to solve it. If the incident is **Reassigned** or escalated to another user, it will go back to a triggered state, until the new user takes responsibility for it and acknowledges the incident

- **Resolved**: Incidents can be marked as **Resolved** to close them

- **Suppressed**: Sometimes, the incidents can be in a **Suppressed** state - this happens when the alert notification was not meant to go out for some reason like the **Service** was under maintenance

**(e)** **[Notes](incident-notes)** to collaborate with your team

![](images/incident_3.png)

**(f)** Ability to:

- **Acknowledge** the incident
- **Reassign** the incident to a `User`, `Squad` or an `Escalation Policy`
- Take **Actions** on the incident to create JIRA tickets or take actions via [Circle CI](https://support.squadcast.com/docs/circleci-actions)
- **Resolve** the incident

**(g)** **Incident Details** displays:

- When the incident was **created** in Squadcast

{{site.data.alerts.blue-note-md}}
**Timestamp Details**

Hover over the **created** field to view the exact Date and Time of the creation of the incident.

![](images/incident_6.png)

{{site.data.alerts.end}}

- **Alert Source** via which the incident was created
- Affected **Service** for which the incident was created
- **Elapsed time** since the incident got created in Squadcast

**(h)** **Responders** will display the list of all `Users`, `Squads` or `Escalation Policies` that were involved during the lifecycle of the incident

**(i)** **[Activity Timeline](incident-timeline)** will indicate the list of all activities performed on this incident in reverse chronological order

**(j)** **[Update Status Page](statuspage#updating-your-statuspage)** is used to update your Status Page for this incident

**(k)** **[Create Postmortem](postmortems#creating-a-postmortem)** will let you start/update the Postmortem for the incident

![](images/incident_4.png)

**(l)** If the incident has deduplicated events, they will be listed under **Deduped events**. By clicking on **Deduped events**, you will be able to see the following:

- Number of deduplicated events
- Event Timestamp
- Message and Payload of the event

![](images/de-duplication_7.png)

Clicking on any of the deduplicated events will display will all the information that is sent for that alert from the monitoring tool, including the **Deduplication Reason** (which Deduplication Rule got executed).

![](images/dedup_reason.png)

## Incident Details Field Limitations

There are certain character limitations for the Incident Message and Incident Description fields. The same is indicated below.

|    Incident Field    | Character Limit |
|:--------------------:|:---------------:|
|   Incident Message   |       250       |
| Incident Description |      15000      |
