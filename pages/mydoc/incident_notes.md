---
title: Incident Notes
tags: [incident]
keywords:
last_updated:
summary: "Share notes and collaborate with your team during incident resolution"
sidebar: mydoc_sidebar
permalink: docs/incident-notes
folder: mydoc
---

Incident Notes enable you to add important notes that can help mitigate an incident faster.

You can use this to: 
- Collaborate with your team and resolve the incident 
- Use it to store important pointers that will help with the mitigation 
- Use it to store Notes that can be populated in the Postmortem report
- Share Organization-wide information like resolution reason, Follow-up Tasks, etc.

{{site.data.alerts.blue-note}}
<b>Prerequisite</b>
<br/><br/>
<p>
Click on Profile > Previews > Enable to switch to the new Incident Details view.
</p>
{{site.data.alerts.end}}

## To get started

**(1)** Click on **Incident List** or the **Dashboard** from the sidebar

![](images/incident_notes_1.png)

**(2)** Open an incident to view the **Incident Details**

![](images/incident_notes_1_1.png)

### Tagging Users

- One can callout users using "@" symbol for user specific notes

![](images/incident_notes_2.png)

- Users who are currently on-call are indicated with a green dot against their name. In the above screenshot, you can see that **Diane Nyugen** is currently on-call

- The user who is called out will get notified instantly via Email and Push notification on the Squadcast mobile app

![](images/incident_notes_3.png)

![](images/incident_notes_4.png)

<br/>
{{site.data.alerts.blue-note}}
<b>NOTE</b>
<br/><br/>
<p>Only verified users would be receiving any kind of notifications from Squadcast. </p>
<p>For receiving Push notifications, users should have the <a href="using-the-mobile-app">Squadcast mobile app</a> (Version 2.10.71 and above) installed</p>
{{site.data.alerts.end}}

### Adding Images

- Incident Notes support Markdown text format. Hence, images can be added as URLs or links 

![](images/incident_notes4_1.png)

**Command to add an image**:
```
![image_name](image_url)
```

![](images/incident_notes_6.png)

### Editing or Deleting a Note

- One can edit or delete existing notes as well by clicking on the _More_ option corresponding to a particular note which would appear on hovering over it

![](images/incident_notes_7.png)

### Starring and Un-starring Notes 

- Star important notes by clicking on the `star` icon as shown in the screenshot above beside the `More` option

![](images/incident_notes_8.png)

- When you have a bulk of Notes and want to simply take a look at all the important, Starred Notes, you can do so by clicking on **View Starred Notes*

![](images/incident_notes_9.png)

- To un-star, click on the **Star** icon for that note

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

- Starred notes would be captured in the Activity Timeline. Clicking on the starred note activity in the Activity Timeline will take you to that specific note in the Incident Notes section

![](images/incident_notes10_1.png)

## FAQs

**(1)** What actions can be taken by the different User Roles?

- **Note Creation**: Any user can add a note
- **Note Updation**: Only the author of the note can update it
- **Note Deletion**: Only the author of the note can delete it
- **Note Starring and Un-starring**: Any user can star/un-star any note

**(2)** Can I add and star notes from the Squadcast mobile app?

Yes, users can add, edit, delete, star and unstar notes for an incident from the Squadcast mobile app. 

To do so:

- Login to your Organization on the Squadcast mobile app and open an incident

![](images/incident_notes_11.png)

- “@” mention a user and/or add notes

![](images/incident_notes_12.png)

- A long press on a note authored by you will give you an option to *star, un-star, edit and delete* it. A long press on a note authored by others will give you an option to only *star, un-star* it

![](images/incident_notes_13.png)

- View only starred notes by switching to **Starred Notes** tab

![](images/incident_notes_14.png)

**(3)** Can I call Stakeholders in the Notes section and notify them?

Yes, you can “@” mention Stakeholders and they would be notified for your comment via Email and Push.