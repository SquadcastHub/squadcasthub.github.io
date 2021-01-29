---
title: Conviva
tags: [set-up-your-profile, managing-all-users]
keywords: 
last_updated: 
datatable: 
summary: "Send in your AI & Manual Alerts from Conviva into Squadcast"
sidebar: mydoc_sidebar
permalink: docs/conviva
folder: mydoc
---

This document will help you integrate [Conviva](https://www.conviva.com/) with Squadcast.

Conviva is a streaming-video intelligence platform that provides metrics and analytics for better video optimization. 

Route detailed alerts from Conviva to the right users in Squadcast.

## How to integrate Conviva with Squadcast

### In Squadcast: Adding Conviva as an Alert Source

**(1)** On the **Sidebar**, click on **Services**.

![](images/integration_1-1.png)

**(2)** Select an existing Service or **Add service** 

![](images/integration_1-2.png)

**(3)** Click the corresponding **Alert Sources**

![](images/integration_1.png)

**(4)** Search for **Conviva** from the Alert Source drop down menu and copy the Webhook URL

![](images/conviva_1.png)

### In Conviva: Create a Squadcast Webhook as a Notification Channel

**(1)** Log in to your Conviva web console, go to the **Settings** menu of your project and click on **Notification Channels**

![](images/conviva_2.png)

**(2)** Click on the **Alerts** tab to display the existing list of Webhooks

**(3)** Click on the **Add Webhook** button. If no webhooks are configured, a message prompt will appear

**(4)** Click on the **Add** button to go to the **Add Webhooks** page so you can configure webhooks

![](images/conviva_3.png)

**(5)** Enter a **Webhook Name**, an **Email** to notify users when an issue occurs with the Webhook notification, and the **Webhook URL** that was copied from the Squadcast Services page

![](images/conviva_4.png)

**(6)** Next set the **alert type(s)** to include in the webhook payload and the relevant information to be included in the payload for each alert type that is configured. 

In this screenshot, we have checked to include both **AI Alerts** and **Manual Alerts**.

![](images/conviva_5.png)

**(7)** Test the Webhook and then click on the **Add Webhook** button to save the Webhook configuration

Now when an event is triggered in Conviva, an incident will be created automatically in Squadcast.

{{site.data.alerts.red-note}}
<b>Auto-resolve</b>
<br/><br/><p>Today, Conviva does not support the auto-resolve functionality due to which, it is unavailable in Squadcast.</p>
{{site.data.alerts.end}}