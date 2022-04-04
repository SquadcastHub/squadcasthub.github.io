---
title: Google Hangouts
tags: [integration, google hangouts]
keywords: 
last_updated: 
summary: "View triggered incidents on Google Hangouts"
sidebar: mydoc_sidebar
permalink: docs/hangouts
folder: mydoc
---

You can use this guide to integrate with [Hangouts Chat](http://chat.google.com/).

{{site.data.alerts.yellow-note-i}}
<b>Important</b><br/><br/>
<p>Google Hangouts is not supported in the EU Datacenter yet.</p>
{{site.data.alerts.end}}

### Prerequisites

- Only the Account Owner and Users with the `Manage Extensions` permission will be able to enable, disable and manage Extensions in Squadcast

### Enabling Google Hangouts Extension

**(1)** Navigate to **Settings** and select the **Extensions** tab from the left navigation sidebar
 
**(2)** Move over to the Google Hangouts extension and click on **Integrate**

![](images/hangouts_1.png)

**(3)** Copy the **Integration Key** shown

![](images/hangouts_2.png)

### Configuration in Google Hangouts

**(1)** Move over to your Hangouts Chat account and select the room in which you want to install the bot

**(2)** Type **Squadcast**, add the **Squadcast BOT** from the options

![](images/hangouts_3.png)

**(3)** In order to integrate this chat room with your Squadcast Organization, send the **Squadcast BOT** a message in the following format

```@Squadcast connect <your integration key>```

Add the copied integration key in the `<your integration key>` space. 

![](images/hangouts_4.png)

That's it! Your Google Hangouts extension integration is now good to go.

![](images/hangouts_5.png)

Here's how the Incident Details are shown in Google Hangouts. 

You can click on `View On Squadcast` to take you straight to the [Incident Details](incident-details) page of that incident. 

![](images/hangouts_6.png)