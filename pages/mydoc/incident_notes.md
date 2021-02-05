---
title: Incident Notes
tags: [incident]
keywords:
last_updated:
summary: "Push important Notes for easier information sharing"
sidebar: mydoc_sidebar
permalink: docs/incident-notes
folder: mydoc
---

Incident Notes enable you to add important Notes and pointers that can help mitigate the incident faster

You can use this to: 
- Collaborate with your team and resolve the incident 
- Use it to store important pointers that will help with the mitigation 
- Use it to store Notes that can be populated in the Postmortem report
- Share Organization-wide information like Resolution reason, Follow-up Tasks and so on

![](images/incident_notes_1.png)

## Features

### Tagging Users

- One can callout users using "@" symbol for user specific Notes

![](images/incident_notes_2.png)

- Users who are currently on-call are indicated with a green dot against their name. In the above screenshot, you can see that **Diane Nyugen** is currently on-call

<br/>
{{site.data.alerts.blue-note}}
<b>Who is on-call?</b>
<br/><br/><p>Users who are on-call across all Schedules in the Organization are indicated with a green dot against their name</p>
{{site.data.alerts.end}}
<br/>

- The user who is called out will get notified instantly via Email and Push notification([on the Squadcast mobile app](https://support.squadcast.com/docs/using-the-mobile-app))

<br/>
{{site.data.alerts.blue-note}}
<b>NOTE</b>
<br/><br/>
<p>Only verified users would be receiving any kind of notifications from Squadcast. For recieving Push notifications, users also need to have latest version of the Squadcast mobile app installed</p>
{{site.data.alerts.end}}

![](images/incident_notes_3.png)

![](images/incident_notes_4.png)

### Adding Images

- Incident Notes support Markdown text. So, one can add images as URLs, links among other important data

![](images/incident_notes_5.png)

![](images/incident_notes_6.png)

### Editing or Deleting a Note

- One can edit or delete existing Notes as well by clicking on the _More_ option corresponding to a particular Note which would appear on hovering over it

![](images/incident_notes_7.png)

### Starring and Un-starring Notes 

- In addition to editing / deleting, one can Star important Notes by clicking on the Star icon as shown in the screenshot above beside the _More_ option

- When you have a bulk of Notes and want to simply take a look at all the important, Starred Notes, you can do so by clicking on **View Starred Notes**

![](images/incident_notes_8.png)

![](images/incident_notes_9.png)

- At a later point in time, if you feel a Starred Note is not that important and want to Un-star it, that's also doable. You can simply click on the **Star** icon for the Note again, that will Un-star the Note

![](images/incident_notes_10.png)

{{site.data.alerts.blue-note}}
<b>Permissions</b>
<br/><br/>
<p>
Different actions that can be carried out by different User Roles:<br/>
<ul><li><b>Note Creation</b> Any user can add a Note</li>
<li><b>Note Updation</b> Only the author of the Note can update it</li>
<li><b>Note Deletion</b> Only the author of the Note can delete it</li>
<li><b>Note Starring</b> Any user can Star any Note</li>
<li><b>Note Un-starring</b> Any user can Un-star any Note</li></ul>
</p>
{{site.data.alerts.end}}

- Only the Note Starring activity would be captured in the Activity Timeline. You can click on a particular Note Starring Activity in the Timeline to see that particular Note highlighted in the Notes window

![](images/incident_notes_11.png)