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

**Incident Notes** enable you to add important notes for you and your team that can help mitigate an incident faster.

You can use this to: 
- Collaborate with your team and resolve the incident 
- Use it to store important pointers that will help with the mitigation 
- Use it to store Notes that can be populated in the Postmortem report
- Share Team-wide information like resolution reason, follow-up tasks, etc.

## Prerequisites

- Only verified users would be receiving any kind of notifications from Squadcast
- For receiving Push notifications, users should have the latest version of the [Squadcast mobile app](https://support.squadcast.com/docs/using-the-mobile-app) installed


## To get started

First, select the **Team** from the team picker on the top.

**(1)** Click on either **Dashboard** or **Incidents** from the sidebar

![](images/incident_1.png)

**(2)** Open an incident to view the **Incident Details**

![](images/incident_notes_1_1.png)

### Mentioning Users in Notes

- Users can callout other users in the Team using the "@" symbol for important notes. This can also be used to inform users of a specific need, information or as a means to notify your **Stakeholders** on information pertaining to the status of an ongoing incident

![](images/incident_notes_2.png)

- Users who are currently on-call are indicated with a green dot against their name. In the above screenshot, you can see that **Diane Nyugen** is currently on-call

- The user who is called out will get notified instantly via **Email** and **Push** notification on the Squadcast mobile app

![](images/incident_notes_3.png)

![](images/incident_notes_4.png)

### Adding Images

- Incident Notes support Markdown text format. Hence, images can be added as URLs or links 

![](images/incident_notes4_1.png)

#### Adding Images to a Note

You can use the below syntax to add an image:

```
![image_name](image_url)
```

![](images/incident_notes_6.png)

### Editing or Deleting a Note

- One can **Edit** or **Delete** existing notes as well by clicking on the **More** icon corresponding to a particular note which would appear on hovering over the note

![](images/incident_notes_7.png)

### Starring and Un-starring Notes 

- Star important notes by clicking on the **Star** icon as shown in the screenshot above beside the **More** option

![](images/incident_notes_8.png)

- When you have a bulk of Notes and want to simply take a look at all the important, Starred Notes, you can do so by clicking on **View Starred Notes**

![](images/incident_notes_9.png)

- To un-star, click on the **Star** icon for that note

![](images/incident_notes_10.png)

- Starred notes would be captured in the **Incident Activity Timeline**. Clicking on the starred note activity in the **Incident Activity Timeline** will take you to that specific note in the Incident Notes section

![](images/incident_notes10_1.png)

## FAQs

**(1)** What actions can be taken by the different User Types?

- **Note Creation**: Any user can add a note
- **Note Updation**: Only the author of the note can update it
- **Note Deletion**: Only the author of the note can delete it
- **Note Starring and Un-starring**: Any user can star/un-star any note

**(2)** Can I add and star notes from the Squadcast mobile app?

Yes, users can add, edit, delete, star and unstar notes for an incident from the Squadcast mobile app. 

To do so:

- Login to your Organization on the Squadcast mobile app, choose your Team and open an incident

![](images/incident_notes_11.png)

- “@” mention a user and/or add notes

![](images/incident_notes_12.png)

- **A long press on a note authored by you will give you an option to *star, un-star, edit and delete* it. A long press on a note authored by others will give you an option to only *star, un-star* it**

![](images/incident_notes_13.png)

- View only starred notes by switching to **Starred Notes** tab

![](images/incident_notes_14.png){: style="max-width: 70%" }

**(3)** Can I call Stakeholders in the Notes section and notify them?

Yes, you can “@” mention Stakeholders and they would be notified for the note via **Email** and **Push**.
