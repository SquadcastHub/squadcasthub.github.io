---
title: SolarWinds AppOptics
tags: [Slack-as-an-Alert-Source, Splunk]
keywords: 
last_updated: 
summary: "Send alerts from SolarWinds AppOptics to Squadcast"
sidebar: mydoc_sidebar
permalink: docs/solarwinds-appoptics
folder: mydoc
---

This document will help you integrate SolarWinds AppOptics with Squadcast.

[SolarWinds AppOptics](https://www.solarwinds.com/appoptics) is a SAAS-based APM and Infrastructure tool for hybrid and cloud-native IT environments.
Route detailed monitoring alerts from AppOptics to the right users in Squadcast.

## How to integrate AppOptics with Squadcast

### In Squadcast: Using AppOptics as an Alert Source

**(1)** On the **Sidebar**, click on **Services**.

![](images/integration_1-1.png)

**(2)** Select an existing Service or **Add service** 

![](images/integration_1-2.png)

**(3)** Click the corresponding **Alert Sources**

![](images/integration_1.png)

**(4)** Search for **SolarWinds AppOptics** from  the **Alert Source** drop down menu and copy the webhook

![](images/appoptics_1.png)

### In SolarWinds AppOptics: Setup your Notification Services

**(1)** Log in to your **SolarWinds Cloud console**

**(2)** From the navigation section to the left of the homepage, select  **Settings > Metric Settings > Notification Services**

![](images/appoptics_2.png)

**(3)** Click on **Webhooks** under the **Available** section

![](images/appoptics_3.png)

**(4)** Add an appropriate **Title** and paste the webhook URL copied from Squadcast under **URL**. Click on **Add**

![](images/appoptics_4.png)

**(5)** While creating a **Metric Alert**, select the configured webhook URL and **test fire** to verify whether the notification service is working as expected

That's it! Now whenever an APM-related or Infrastructure-related notification is triggered in SolarWinds AppOptics, an incident will automatically be created in Squadcast. 

Also, whenever an alert is resolved in SolarWinds AppOptics, the corresponding incident will get **auto-resolved** in Squadcast.