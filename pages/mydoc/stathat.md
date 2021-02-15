---
title: StatHat
#tags: [Logstash, ManageEngine-Opmanager]
keywords: 
last_updated: 
summary: "Send alerts to Squadcast from Stathat"
sidebar: mydoc_sidebar
permalink: docs/stathat
folder: mydoc
---

This document will help you integrate StatHat with Squadcast.
 
[StatHat](https://www.stathat.com/) makes detailed time series charts of all your stats. Compare multiple stats from the past hour to the past 10 years to know where your stats are headed. It will analyze all your data and create forecasts for you with estimates for the next 30 days.
Route detailed monitoring alerts from StatHat to the right users in Squadcast.

## How to integrate StatHat with Squadcast

### In Squadcast: Using StatHat as an Alert Source

**(1)** On the **Sidebar**, click on **Services**

![](images/integration_1-1.png)

**(2)** Select an existing Service or **Add service** 

![](images/integration_1-2.png)

**(3)** Click the corresponding **Alert Sources**

![](images/integration_1.png)

**(4)** Search for **StatHat** from  the **Alert Source** drop down menu and copy the webhook 

![](images/stathat_1.png)

### In StatHat: Create a Squadcast Webhook

**(1)** In the app, navigate to **Settings**

![](images/stathat_2.png)

**(2)** Click on **Manage Alert Destinations** to add the Webhook

![](images/stathat_4.png)

**(3)** Under **Webhooks**, give it a meaningful *Name* and paste the copied Webhook *URL* from Squadcast and click on **Add**

![](images/stathat_3.png)

**(4)** Now, navigate back to **Settings**. You can enable *Squadcast Webhook* to be triggered for *Automatic Alerts* and *Manual Alerts* on a global level.

![](images/stathat_5.png)

Or, you can specify within each of your **Alerts** to trigger *Squadcast Webhook* in case of an anomaly.

![](images/stathat_6.png)

That is it, you are now good to go! Whenever an alert is triggered in StatHat, an incident will be created automatically in Squadcast.

## FAQ

**Q:** If an alert gets resolved in StatHat, does StatHat send auto-resolve signals to Squadcast?

**A:** No, StatHat does not send auto-resolve signals to Squadcast. Hence, Squadcast incidents from StatHat should be resolved manually.