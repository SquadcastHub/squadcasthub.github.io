---
title: Nixstats
tags: [New-Relic, OverOps]
keywords: 
last_updated: 
summary: "Send alerts to Squadcast from Nixstats"
sidebar: mydoc_sidebar
permalink: docs/nixstats
folder: mydoc
---

This document will help you integrate Nixstats with Squadcast.

[Nixstats](https://nixstats.com/) helps keep track of your servers infrastructure usage, performance and downtime issues in addition to monitoring website uptime.

Route detailed monitoring alerts from Nixstats to the right users in Squadcast.

## How to integrate Nixstats with Squadcast

### In Squadcast: Using Nixstats as an Alert Source

**(1)** On the **Sidebar**, click on **Services**.

![](images/integration_1-1.png)

**(2)** Select an existing Service or **Add service** 

![](images/integration_1-2.png)

**(3)** Click the corresponding **Alert Sources**

![](images/integration_1.png)

**(4)** Search for **Nixstats** from  the **Alert Source** drop down menu and copy the Webhook URL

![](images/nixstats_1.png)

### In Nixstats: Create a Squadcast Webhook

**(1)** From your home page, click on the *Alerts* tab on the top

![](images/nixstats_2.png)

**(2)** Switch to the *Contacts* tab and click on * +New Contact*

![](images/nixstats_3.png)

**(3)** Enter a name for the Contact in the *Name* field and scroll down a little. Under *Webhook URL*, paste the Nixstats webhook copied from Squadcast

![](images/nixstats_4.png)

**(4)** Scroll to the bottom of the page and click on *Save*

![](images/nixstats_5.png)

#### Configuring Alerts for Server Monitoring

**(1)** Within the *Alerts* page, switch to the *Alerts* tab. Here, you can either create a new Alert or modify your existing Alerts to send notifications to Squadcast via the previously configured Webhook URL.

![](images/nixstats_6.png)

**(2)** Make sure to add the Squadcast Webhook under *Alert Recipients*. Repeat the same for all your other Alerts

![](images/nixstats_7.png)

**(3)** In the same window, click on *Show Advanced Options*. Here, enable both the `Alert Opens` and ` Alert Closes` checkboxes as shown in the screenshot below and click on `Save`

![](images/nixstats_8.png)

Now, every time there is an alert for your server in Nixstats, the alert will be sent to Squadcast and an incident will be triggered, notifying the right people. Similarly, if the alert gets resolved within Nixstats, it will get **auto-resolved** in Squadcast as well.

#### Configuring Monitors for Website Uptime

**(1)** From your home page, click on the *Monitors* tab on the top

![](images/nixstats_9.png)

**(2)** In the *Overview* tab, you can either create a new Monitor by selecting *Add Monitor* or select an existing Monitor

![](images/nixstats_10.png)

**(3)** Click on the *Settings* tab

![](images/nixstats_11.png)

**(4)** In the *Recipients* tab, select Squadcast Webhook and select when the alert needs to be sent to Squadcast. Save/Update the set configuration

![](images/nixstats_12.png)

Now, every time there is an alert for your website in Nixstats, the alert will be sent to Squadcast and an incident will be triggered, notifying the right people. Similarly, if the alert gets resolved within Nixstats, it will get **auto-resolved** in Squadcast as well.

That is it, your integration is complete and you are good to go!