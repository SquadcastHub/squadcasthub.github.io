---
title: Stackdriver
tags: [integration, stackdriver]
keywords: 
last_updated: 
summary: "Send events to Squadcast from Google Stackdriver"
sidebar: mydoc_sidebar
permalink: docs/stackdriver.html
folder: mydoc
---

Follow the steps below to configure a service so as to extract its related alert data from Google Stackdriver. Squadcast will then process this information to create incidents for this service as per your preferences.

## Using Stackdriver as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service.html)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **Stackdriver** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/stackdriver_1.png)

## Create Squadcast Webhook in Stackdriver

1.Login to your Google Cloud console and go to **Stackdriver - Monitoring** in the sidebar.

![](images/stackdriver_2.png){: style="max-width: 30%" }

2.Go to **Alerting** section in the sidebar.

![](images/stackdriver_3.png)

3.Go to **Edit Notification Channels**. 

![](images/stackdriver_4.png)

4.Click on **ADD NEW** button corresponding to Webhooks. 

![](images/stackdriver_5.png)

5.Paste the Squadcast webhook URL copied in previous step. This will create Squadcast webhook in Stackdriver

## Setting up Alerts in Stackdriver and send it to Squadcast

1.In the alerting section, click on **CREATE POLICY**. 

![](images/stackdriver_6.png)

2.Configure policy name, conditions and triggers as per requirement. In the **Notifications** section, click on **ADD NOTIFICATION CHANNEL**.

![](images/stackdriver_7.png)

3.Select **Webhook with Token Authentication** for **Notification Channel Type & for **Notification Channel**, select the webhook you had setup in the previous step. 

![](images/stackdriver_8.png)

4.Click on **ADD**.

Now whenever an alert is triggered by Stackdriver, an incident will be created automatically in Squadcast. The Stackdriver integration comes with an **Auto-Resolve** feature, meaning that whenever the alerts gets resolved in Stackdriver, the incident will automatically get resolved in Squadcast as well.