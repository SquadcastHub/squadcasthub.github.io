---
title: Logz.io
tags: [Logstash, ManageEngine-Opmanager]
keywords: 
last_updated: 
summary: "Send log alerts to Squadcast from Logz.io (ELK stack)"
sidebar: mydoc_sidebar
permalink: docs/logz.io.html
folder: mydoc
---

This document will help you integrate Logz.io with Squadcast.
 
[Logz.io](https://logz.io/) allows engineers to look into their stack with powerful log, metric, and tracing analytics based on the cloud-native tools they use. 
Route detailed monitoring alerts from Logz.io to the right users in Squadcast.

## How to integrate Logz.io with Squadcast

### In Squadcast: Using Logz.io as an Alert Source

**(1)** On the **Sidebar**, click on **Services**.

![](images/integration_1-1.png)

**(2)** Select an existing Service or **Add service** 

![](images/integration_1-2.png)

**(3)** Click the corresponding **Alert Sources**

![](images/integration_1.png)

**(4)** Search for **Logz.io** from  the **Alert Source** drop down menu and copy the webhook 

![](images/logzio_1.png)

### In Logz.io: Create a Squadcast webhook alert

**(1)** In the app, go to **Alerts & Events > Notification endpoints** to create the webhook

![](images/logzio_2.png)

**(2)** Click on **Add endpoint**

![](images/logzio_3.png)

**(3)** Fill in the form as shown below:

- **Type**: Custom
- **Name**: Squadcast Webhook
- **Description** (optional)
- **URL**: Paste the URL endpoint that was copied from Squadcast Service for Logz.io
- **Method**: POST
- Run the test to see if you received a test alert in Squadcast
- Click on **Save**

Find more details on how each of these parameters can be configured [here](https://docs.logz.io/user-guide/integrations/custom-endpoints.html)

![](images/logzio_4.png)

**(4)** Next, to create the alert itself, you can either: 

- Go to **Alerts & Events > New Alert** or,
- Click on **Create Alert** from the **Kibana dashboard**

![](images/logzio_5.png)

Find more details on how each of these parameters can be configured [here](https://docs.logz.io/user-guide/alerts/configure-an-alert.html)

**(5)** Give the alert a **title**

Now, you will have to fill out the 3 sections:
    
(a) **Search for...** section:
    
- Either enter your **Search** query or verify that the query present is correct
- Choose to **Group By** certain fields
- Select **Accounts to Search**
- Choose to repeat this (by adding another query), join the queries, etc.

![](images/logzio_6.png)

**(5)** (b) **Trigger if...** section:

- Add **Trigger conditions** for the alert and add one or more thresholds for the trigger

![](images/logzio_7.png)

**(5)** (c) **Notify** section:

- Add a **Description** for the alert (which will be visible for these incidents in Squadcast)
- Associate **Tags** (if any)
- **Who to send it to** -> choose **Squadcast Webhook**
- Choose a **wait time** between notifications as needed
- **Output format** -> choose **JSON**
- You can choose to either send **all log fields** or **custom fields** 

![](images/logzio_8.png)

**(6)** Click on **Save**

![](images/logzio_9.png)

That is it, you are now good to go! Whenever a log alert is triggered in Logz.io, an incident will be created automatically in Squadcast.

{{site.data.alerts.blue-note}}
<b>FAQ:</b>
<br/><br/><p>Q: If an alert gets resolved in Logz.io, does Logz.io send auto-resolve signals to Squadcast?<br/><br/>A: No, Logz.io does not send auto-resolve signals to Squadcast. Hence, Squadcast incidents from Logz.io should be resolved manually.</p>
{{site.data.alerts.end}}