---
title: Sematext
tags: [Scout-APM, Sensu]
keywords: 
last_updated: 
summary: "Send alerts to Squadcast from Sematext"
sidebar: mydoc_sidebar
permalink: docs/sematext.html
folder: mydoc
---

This document will help you integrate Sematext with Squadcast.

[Sematext](https://sematext.com/) allows you to detect and troubleshoot production & performance issues with logs, metrics, synthetic and real user monitoring. 
Route detailed monitoring alerts from Sematext to the right users in Squadcast.

## How to integrate Sematext with Squadcast

### In Squadcast: Using Sematext as an Alert Source

**(1)** On the **Sidebar**, click on **Services**.

![](images/integration_1-1.png)

**(2)** Select an existing Service or **Add service** 

![](images/integration_1-2.png)

**(3)** Click the corresponding **Alert Sources**

![](images/integration_1.png)

**(4)** Search for **Sematext** from  the **Alert Source** drop down menu and copy the webhook 

![](images/sematext_1.png)

### In Sematext: Create a Squadcast Webhook

**(1)** Go to **Alerts** from the left navigation panel. Click on **Notification Hooks** and select **Squadcast** to create a new Squadcast notification hook

![](images/sematext_2.png)

**(2)** **Name** your Notification Hook to reflect the type of alerts that will be sent into Squadcast

**(3)** Paste the webhook URL that was copied from Squadcast under **Webhook URL**

![](images/sematext_3.png)

**(4)** Click on **Send Test Notification** to test this integration

**(5)** Click on **Save Notification Hook** to save this configuration

That's it! Your Sematext integration is now good to go.

{{site.data.alerts.blue-note}}
<b>FAQ:</b>
<br/><br/><p>Q: If an alert gets resolved in Sematext, does it send auto-resolve signals to Squadcast?<br/><br/>
A: No, Sematext does not send auto-resolve signals to Squadcast. Hence, Squadcast incidents from Sematext should be resolved manually.</p>
{{site.data.alerts.end}}