---
title: Observium
#tags: [Logstash, ManageEngine-Opmanager]
keywords: 
last_updated: 
summary: "Send alerts to Squadcast from Observium"
sidebar: mydoc_sidebar
permalink: docs/observium
folder: mydoc
---

This document will help you integrate Observium with Squadcast.
 
[Observium](https://www.observium.org/) is a low-maintenance auto-discovering network monitoring platform supporting a wide range of device types, platforms and operating systems, and focuses on providing a beautiful and powerful yet simple and intuitive interface to the health and status of your network.
Route detailed monitoring alerts from Observium to the right users in Squadcast.

## How to integrate Observium with Squadcast

### In Squadcast: Using Observium as an Alert Source

**(1)** On the **Sidebar**, click on **Services**

![](images/integration_1-1.png)

**(2)** Select an existing Service or **Add service** 

![](images/integration_1-2.png)

**(3)** Click the corresponding **Alert Sources**

![](images/integration_1.png)

**(4)** Search for **Observium** from  the **Alert Source** drop down menu and copy the webhook 

![](images/observium_1.png)

### In Observium: Create a Squadcast Webhook

**(1)** From the first option in the top bar, select **Contacts**

![](images/observium_2.png)

**(2)** Select **Add Contact** to add a Webhook

![](images/observium_3.png)

**(3)** Fill out the details as below:
- (a) **Transport**: Select **Webhook** from the drop-down
- (b) **Description**: Give it a name, such as, *Squadcast Webhook*
- (c) **URL**: Paste the previously copied URL from Squadcast
- (d) Click on **Add Contact**

![](images/observium_4.png)

**(4)** Navigate to the newly created **Contact** and associate the required *Alert Checkers* and *Syslog Rules* that should use this **Contact** to notify you for alerts

![](images/observium_5.png)

**(5)** Navigate to your **Alert Checkers** and enable **Send Recovery** option to send *recovery alerts* signals to Squadcast

![](images/observium_6.png)

That is it, you are now good to go! Whenever an alert is triggered in Observium, an incident will be created automatically in Squadcast. When an alert is resolved in Observium, the corresponding **incident gets auto-resolved in Squadcast** as well.

## FAQ

**Q:** Do Syslog alerts from Observium get auto-resolved in Squadcast?

**A:** No, Observium does not send auto-resolve signals to Squadcast for Syslog alerts. Hence, Squadcast incidents for Syslog alerts should be resolved manually.