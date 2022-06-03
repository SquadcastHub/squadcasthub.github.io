---
title: Incidents Details
tags: [incident]
keywords:
last_updated:
summary: "Get more details for an incident"
sidebar: mydoc_sidebar
permalink: docs/incident-details
folder: mydoc
---

An incident represents an issue that needs to be addressed and resolved. Incidents trigger on services, and a service’s escalation policy prompts notifications to go out to on-call responders to remediate the issue.

## Statuses of an Incident

![](images/Incidents.png)

## Incident Details Page

To view the Incident Details Page, select the **Team** from the team picker on the top -> Navigate to the **Dashboard** or the **Incidents** page from the sidebar and open incidents.

![](images/Incident_select.png)

Click on any Incident from the Incident List to view the Incident Details page.

![](images/Incident_select2.png)

<br>

The Incident Details page has many components:

<style>
table{
   max-width: 100%;
}
th{
   width: %;
}
</style>
 
| Component | Description |
|-----------|--------------|
| Incident ID          |  []() A unique ID for the incident <br> <br> ![](images/IncidentID.png) <br> <br> **Note**: To copy this Incident URL to the clipboard, use the **Copy** button on the right  |
| Incident Message     | The displayed title of the incident |
| Incident Tags        | Tags are key-value pairs, added to an incident. They allow you to quickly see relevant information, such as severity or environment, for a particular incident rather than needing to review all of the related alerts |
| Incident Description | Incident Description i.e. the alert information along with images and links sent by the Alert Source |
| Notes                | Incident Notes enable you to add important notes for you and your team that can help mitigate an incident faster |
| Runbooks             | [Runbooks](https://support.squadcast.com/docs/runbooks) are a “how-to” guide for completing a commonly repeated task or procedure while working on a critical incident.  <br> <br> **Note**: Simple Runbooks will be available for accounts in the [Pro and Enterprise plans](https://www.squadcast.com/pricing). <br> <br> To attach and reference runbooks to your incident, click on the **Attach Runbooks** button -> Check the runbook you wish to attach -> Click **Add Runbook**  <br> <br>![](images/incidents_runbook.png)<br> <br> |
| Tasks                | [Tasks](https://support.squadcast.com/docs/runbooks#incident-tasks) are instructions or to-dos for other team members, or even follow-up tasks for an incident. <br> <br> **Note**: Tasks will be available for accounts in the [Pro and Enterprise plans](https://www.squadcast.com/pricing). <br> <br> To add your tasks, click on the **Add Task** button -> Add your Task -> Click on **Add Task** again, to save <br> <br>![](images/incidents_task.png)<br> <br> Once added, you can Edit/Update and Delete the Task. |
| Acknowledge          | To mark an incident as Acknowledged |
| Reassign             | To reassign an Incident to another User, Squad or an Escalation Policy |
| Resolve              | To mark an incident as Resolved |
| Actions              | Actions are used to create JIRA tickets or take actions via [Circle CI](https://support.squadcast.com/docs/circleci-integration) |
| Incident Details     | []() **Incident Details displays**: <br> 1. **From** displays the user who created the incident  <br> 2. **Alert Source** via which the incident was created <br> 3. **Affected Service** for which the incident was created <br>  <br> Note: Hover over the **created field** to view the exact Date and Time of the creation of the incident. <br> <br>![](images/Incident_details.png) |
| Responsiveness             | []() Responsiveness displays: <br> 1. **Created** - Time elapsed since the creation of the incident <br> 2. **Latest Ack** - Time elapsed since the latest Acknowledgement of the incident. Will change everytime the incident is reassigned <br> 3. **First Ack** - Time elapsed since the first Acknowledgement of the incident <br> 4. **Resolution Time** - Time elapsed since creation to resolution of the incident <br> ![](images/incidents_responsiveness.png) |
| Communication Channels | []() Communication Channels helps you add video call, chatops and external links to an incident. Additionally, you can create a dedicated Slack Channel for an incident using the Communications Card.  <br> ![](images/incident_commscard.png) <br> <br> To add a Communication Channel, Click on **+Add Link** -> Select the type of channel you want to add -> Add the link and Text to Display for your Communication Channel -> Click on **Save** <br><br> Once added, you can **Edit/Update** the Communication Channel. <br> ![](images/incident_addcard.png) <br><br> Any activity in the Communications Card, gets reflected on the Activity Timeline of the incident.  |
| Responders           | Responders will display the list of all Users, Squads or Escalation Policies that were involved during the lifecycle of the incident. Select **Notification Logs** to open up logs of all the notifications generated for the incident |
| Activity Timeline    | Activity Timeline will indicate the list of all activities performed on this incident in reverse chronological order <br> <br> **Note**: Activity Timeline will show incident reassignment, mentioning both the assigned and assignee. <br> <br> **Note**: Downloading Activity Timeline will be available for accounts in the [Pro and Enterprise plans](https://www.squadcast.com/pricing). |
| SLO Details          | []() You can select the affected SLO for an incident. It will give you details on the affected SLO, SLIs and the Error Budget. <br> <br> Additionally, you can mark the **Incident** as **False Positive** from here as well. <br> ![](images/incidents_slo.png)  <br>    |
| Update Status Page   | Update Status Page is used to update your Status Page for this incident |
| Create Postmortem    | []() Create Postmortem will let you start/update the Postmortem for the incident                 <br> <br>![](images/incident_4.png)<br> <br> |
| Deduped Events       | []() If the incident has deduplicated events, they will be listed under **Deduped events**.  <br> <br> By clicking on **Deduped events**, you will be able to see the following: <br> <br> 1. Number of deduplicated events <br> 2. Event Timestamp <br> 3. Message and Payload of the event <br> <br>![](images/de-duplication_7.png)<br> <br>Clicking on any of the deduplicated events will display all the information that is sent for that alert from the monitoring tool, including the **Deduplication Reason** (which Deduplication Rule got executed). <br> <br>![](images/dedup_reason.png)<br> <br>|

## Incident Details Field Limitations

There are certain character limitations for the Incident Message and Incident Description fields. The same is indicated below.

<br>

|    Incident Field    | Character Limit |
| --- | --- |
|   Incident Message   |       250       |
| Incident Description |      15000      |
