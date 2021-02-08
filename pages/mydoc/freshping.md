---
title: Freshping
tags: [integration, freshping]
keywords: 
last_updated: 
summary: "Get alerts from Freshping into Squadcast"
sidebar: mydoc_sidebar
permalink: docs/freshping
folder: mydoc
---

This document will help you integrate Freshping with Squadcast.

[Freshping](https://www.freshworks.com/website-monitoring/) is a simple Uptime and Performance monitoring tool which keeps track of performance and downtime of websites, APIs, web services and web applications with real-time alerts.
Route detailed monitoring alerts from Freshping to the right users in Squadcast.

## How to integrate Freshping with Squadcast

### In Squadcast: Using Freshping as an Alert Source

**(1)** On the **Sidebar**, click on **Services**.

![](images/integration_1-1.png)

**(2)** Select an existing Service or **Add service** 

![](images/integration_1-2.png)

**(3)** Click the corresponding **Alert Sources**

![](images/integration_1.png)

**(4)** Search for **Freshping** from the **Alert Source** drop down menu and copy the Webhook

![](images/freshping_1.png)

## Create a Squadcast Webhook in Freshping

### In Freshping: Create a Squadcast Webhook

**(1)** Login to your Freshping web console and go to **Settings** 

![](images/freshping_2.png)

**(2)** From the Settings menu, select **Integrations**

![](images/freshping_3.png)

**(3)** Scroll down to the **Webhook** section and select **+ Create Integration**

![](images/freshping_4.png)

**(4)** Paste the copied webhook URL from Squadcast under **Domain URL** and click on **Create** to save the integration

![](images/freshping_5.png)

**(5)** You can verify the same on the **Integrations** page

![](images/freshping_6.png)

**NOTE**: When you click on the **Test** button, Freshping sends out **Resolve** alerts which do *not* create any new incidents in Squadcast. Please simulate real-time alerts to verify that the integration is working as expected.

![](images/freshping_7.png)

That is it, you are good to go! 

Now, whenever Freshping generates an alert, an incident will be triggered for it in Squadcast. Additionally, once the alert that triggered the incident(s) is resolved in Freshping, the corresponding Squadcast incident would get **resolved automatically.**