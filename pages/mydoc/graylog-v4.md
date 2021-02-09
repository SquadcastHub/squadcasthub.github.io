---
title: Graylog v4
#tags: [Loggly, Logstash]
keywords: 
last_updated: 
summary: "Send alerts to Squadcast from Graylog v4"
sidebar: mydoc_sidebar
permalink: docs/graylog-v4
folder: mydoc
---

This document will help you integrate Graylog v4 with Squadcast.
 
[Graylog v4](https://www.graylog.org/products/latestversion) is a leading centralized log management solution built to open standards for capturing, storing, and enabling real-time analysis of terabytes of machine data. They deliver a better user experience by making analysis ridiculously fast and efficient using a more cost-effective and flexible architecture.
Route detailed monitoring alerts from Graylog v4 to the right users in Squadcast.

## How to integrate Graylog v4 with Squadcast

### In Squadcast: Using Graylog v4 as an Alert Source

**(1)** On the **Sidebar**, click on **Services**

![](images/integration_1-1.png)

**(2)** Select an existing Service or **Add service** 

![](images/integration_1-2.png)

**(3)** Click the corresponding **Alert Sources**

![](images/integration_1.png)

**(4)** Search for **Graylog v4** from  the **Alert Source** drop-down menu and copy the webhook 

![](images/graylog-v4-1.png)

### In Graylog v4: Add a Webhook for Squadcast

**(1)** After logging in, select **Alerts** from the navigation bar on the top

![](images/graylog-v4-2.png)

**(2)** Select **Notifications**

![](images/graylog-v4-3.png)

**(3)** If you do not have any existing Notifications set up, select **Get Started**. Else, select **Create Notification** 

![](images/graylog-v4-4.png)

**(4)** Fill in the details:

![](images/graylog-v4-5.png)

(a) A meaningful **Title**
(b) An optional **Description**
(c) **Notification Type**: Select **HTTP Notification**
(d) **URL**: Paste the copied Squadcast Webhook URL
(e) Select **Add to URL Whitelist**. Here, click on **Add URL** and add:
    - A meaningful **Title**
    - **URL**: Paste `api.squadcast.com`
    - **Type**: `Regex`
    - **Save** the configuration
![](images/graylog-v4-6.png)

(f) Now, click on **Execute Test Notification** to generate a test alert and trigger a test incident in Squadcast

(g) **Save** the configuration

**(5)** Within **Alerts**, head over to **Event Definitions**. If there are no existing Event Definitions, you can create one or pick an existing Event Definition

![](images/graylog-v4-7.png)

**(6)** Navigate to **Notifications** in the set-up flow and select **Add Notification** and select the *Squadcast notification* added previously and **Save** the entire configuration in the end

![](images/graylog-v4-8.png)

That is it, you are now good to go! Whenever an alert is triggered in Graylog v4, an incident will be created automatically in Squadcast.

{{site.data.alerts.blue-note}}
<b>FAQ:</b>
<br/><br/><p>Q: If an alert gets resolved in Graylog v4, does Graylog v4 send auto-resolve signals to Squadcast?<br/><br/>A: No, Graylog v4 does not send any auto-resolve signals to Squadcast. Incidents for alerts from Graylog v4 need to be manually resolved in Squadcast.</p>
{{site.data.alerts.end}}