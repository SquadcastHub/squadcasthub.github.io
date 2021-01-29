---
title: HetrixTools
tags: [integration, grafana]
last_updated: 
keywords:
summary: "Send alerts to Squadcast from HetrixTools"
sidebar: mydoc_sidebar
permalink: docs/hetrixtools
folder: mydoc
---

This document will help you integrate HetrixTools with Squadcast.

[HetrixTools](https://hetrixtools.com/) allows you to monitor all of your IP addresses and Domain Names, to help you quickly find the malware source and immediately begin the delisting process before it affects your clients and your reputation.
Route detailed monitoring alerts from HetrixTools to the right users in Squadcast.

## How to integrate HetrixTools with Squadcast

### In Squadcast: Using HetrixTools as an Alert Source

**(1)** On the **Sidebar**, click on **Services** 

![](images/integration_1-1.png)

**(2)** Select an existing Service or **Add service** 

![](images/integration_1-2.png)

**(3)** Click the corresponding **Alert Sources**

![](images/integration_1.png)

**(4)** Search for **HetrixTools** from the **Alert Source** drop down menu and copy the Webhook

![](images/hetrixtools_1.png)

### In HetrixTools: Create a Squadcast Webhook

**(1)** From the dashboard, click on your **<username>** which is at the top-right corner. From the drop-down, select **Contact Lists**

![](images/hetrixtools_2.png)

**(2)** Select **Add New Contact List** 

![](images/hetrixtools_3.png)

**(3)** Click on **Webhook** and enter the copied **HetrixTools Webhook URL** from Squadcast here

![](images/hetrixtools_4.png)

**(4)** Click on **Send test notification** and verify if the test alert from HetrixTools created a test incident in Squadcast. Once that is confirmed, click on **Add** to save the integration

![](images/hetrixtools_5.png)

That is it, you are good to go! Now, whenever HetrixTools fires an alert, an incident will be created in Squadcast for it. 

{{site.data.alerts.blue-note}}
<b>FAQ:</b>
<br/><br/><p>Q: If an alert gets resolved in HetrixTools, does HetrixTools send auto-resolve signals to Squadcast?<br/><br/>
A: Auto-resolution of incidents in Squadcast is only supported for Uptime Monitor, and <i>not</i> for the Blacklist Monitor and the Server Monitor Resource Usage at this time.
</p>
{{site.data.alerts.end}}