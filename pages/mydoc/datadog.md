---
title: Datadog
tags: [Crashlytics, Elastic]
sidebar: mydoc_sidebar
permalink: docs/datadog.html
summary: "Send events to Squadcast from Datadog"
folder: mydoc
---

This document will help you integrate Datadog with Squadcast.

Datadog is a monitoring platform for cloud applications that brings in together data from servers, containers, databases, third-party services, thus providing observability into the entire stack. Route detailed monitoring alerts from Datadog to the right users in Squadcast.

## How to integrate Datadog with Squadcast

### In Squadcast: Using Datadog as an Alert Source

**(1)** On the **Sidebar**, click on **Services**.

![](images/integration_1-1.png)

**(2)** Select an existing Service or **Add service** 

![](images/integration_1-2.png)

**(3)** Click the corresponding **Alert Sources**

![](images/integration_1.png)

**(4)** Search for **Datadog** from  the **Alert Source** drop down menu and copy the webhook 

![](images/datadog_1.png)

### In Datadog: Create a Squadcast Webhook

**(1)** Open **Integrations** page from the sidebar

![](images/datadog_2.png)

**(2)** Search for **Webhooks**. Once the Webhooks tile appears, hover over it and click on "Configure".

![](images/datadog_3.png)

**(3)** Navigate to the **Configuration** tab. 

![](images/datadog_4.png)

**(4)** Scroll to the bottom of the page. Click on `New Webhook` to add a new Webhook URL. 

![](images/datadog_5.png)

**(5)** (a) Give the Webhook a name in the Name field.

      (b) Paste the **Datadog Webhook URL** provided by Squadcast in the URL field.

      (c) Copy-paste the following JSON in the text box under the **Payload** section.

```json
{
    "alertId": "$ALERT_ID",
    "eventMessage": "$TEXT_ONLY_MSG",
    "title": "$EVENT_TITLE",
    "url": "$LINK",
    "alertTransition": "$ALERT_TRANSITION",
    "hostname": "$HOSTNAME",
    "orgName": "$ORG_NAME",
    "priority": "$PRIORITY",
    "snapshot": "$SNAPSHOT",
    "alertQuery": "$ALERT_QUERY",
    "alertScope": "$ALERT_SCOPE",
    "alertStatus": "$ALERT_STATUS",
    "eventType": "$EVENT_TYPE",
    "lastUpdated": "$LAST_UPDATED"
}
```

![](images/datadog_6.png)

Click on “Save” to complete the service integration. 

That's it, you are good to go! Your Datadog integration is complete. 

Now, whenever Datadog fires an alert, an incident will be created in Squadcast for it. When the alert recovers in Datadog, the corresponding incident will **automatically get resolved** in Squadcast as well. 