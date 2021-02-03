---
title: Incident Notes
tags: [incident]
keywords:
last_updated:
summary: "Push important notes here for easier information sharing"
sidebar: mydoc_sidebar
permalink: docs/incident-notes
folder: mydoc
published: false
search: exclude
---

Incident Notes enables you to add important notes and pointers that can help mitigate the incident faster. 

You can use this to: 
- Collaborate and resolve the incident 
- Use it to store important pointers that will help with the mitigation 
- Use it to store notes that can be populated in the postmortem report
- Share organization wide information like Resolution Reason, Follow-up Tasks and so on

![](images/incident_notes_1.png)

## Features

### Tagging User

- One can address users using "@" symbol. This can be used while adding in user specific notes. 

![](images/incident_notes_2.png)

- Users who are on-call at that instant are indicated by a green dot against their name. In the above screenshot, you can see that **Diane Nyugen** is on-call.

<br/>
{{site.data.alerts.blue-note}}
<b>Who is On-call?</b>
<br/><br/><p>Users who are on-call across all schedules in the organization are indicated with the green dot.</p>
{{site.data.alerts.end}}
<br/>

- The user addressed would get notified instantly via email as well as push notification.

<br/>
{{site.data.alerts.blue-note}}
<b>NOTE</b>
<br/><br/>
<p>Only users who have verified their email would be receiving any kind of notification. For getting push notification, you also need to the latest version of the Squadcast mobile app installed.</p>
{{site.data.alerts.end}}

![](images/incident_notes_3.png)

![](images/incident_notes_4.png)

### Adding Images in Notes

- Incident Notes supports markdown text. So, one can add in Images as URLs, Links among other important data as well.

![](images/incident_notes_5.png)

![](images/incident_notes_6.png)

### Editing or Deleting a Note

- One can edit or delete existing notes as well as by clicking on the 3 dots corresponding to a particular note that appear on hover

![](images/incident_notes_7.png)

### Starring and Un-starring Notes 

- In addition to editing / deleting, one can star important notes by clicking on the star button as shown in the above screenshot beside the 3 dots.

- There is a view to see only the starred notes as well, which can be viewed by clicking the **View Starred Notes** button.

![](images/incident_notes_8.png)

![](images/incident_notes_9.png)

- At any later point of time, if you feel a Starred note is not that important and hence want to un-star it, that's also doable by clicking back again on the Star icon.

![](images/incident_notes_10.png)

{{site.data.alerts.blue-note}}
<b>Permissions</b>
<br/><br/>
<p>
The permissions for performing actions on notes is as follows:<br/>
<ul><li><b>Note Creation</b>: Any user can create a note.</li>
<li><b>Note Updation</b>: Only the author of the note can update it.</li>
<li><b>Note Deletion</b>: Only the author of the note can delete it.</li>
<li><b>Note Starring</b>: Any user can star any note.</li>
<li><b>Note Un-starring</b>: Any user can un-star any note.</li></ul>
</p>
{{site.data.alerts.end}}

- Only the note starring activity would be captured in the activity timeline. You can click on a particular note starring activity in the timeline to see that particular note highlighted in the notes window as well.

![](images/incident_notes_11.png)