---
title: Communication Channels
tags: [communication channels]
keywords:
last_updated:
summary: "Communication Channels helps you add video call, chatops and external links to an incident. Additionally, you can create a dedicated Slack Channel for an incident using the Communications Card."
sidebar: mydoc_sidebar
permalink: docs/communication-channels
folder: mydoc
---

To add a Communication Channel, 

**(1)** Click on **+ icon** or **+Add Link** button 

![](images/commscard_ss.png)

**(2)** Select the type of channel you want to add 

![](images/incident_commscard.png)

**(3)** Add the link and Text to Display for your Communication Channel -> Click on **Save**

![](images/incident_addcard.png)

Once added, you can **Edit/Update** the Communication Channel.

{{site.data.alerts.yellow-note-i-md}}
**Note:**

Any activity in the Communications Card, gets reflected on the **Incident Activity Timeline**.
{{site.data.alerts.end}}

## Creating Slack Channel for Incidents

To create a Slack Channel for an Incident,

**(1)** Navigate to the Incident Details page, and click on the **+ icon** or **+ Add Link** button
 
![](images/slackchannel_1.png)

**(2)** Click on the **Create Slack Channel** option from the menu


![](images/slackchannel_2.png)
 
**(3)** Type in the **Channel Name** for your Incident and click **Save**

![](images/slackchannel_3.png)
 
This will generate a dedicated Slack Channel for your Incident.

{{site.data.alerts.yellow-note-i-md}}
**Note**
<br>
All notifications of this specific incident like, Acknowledged, Re-assigned, Resolved will be sent to this channel in addition to the regular channel (if configured).
 
 
{{site.data.alerts.end}}


{{site.data.alerts.yellow-note-i-md}}
**Note**
<br>
Once the Incident is resolved, you can archive the Slack Channel using the **Archive** button on the right.
 
 
![](images/slackchannel_4.png)
 
{{site.data.alerts.end}}
