---
title: Stackify Retrace
tags: [set-up-your-profile, managing-all-users]
keywords: 
last_updated: 
datatable: 
summary: "Get alerts from Stackify's Retrace into Squadcast"
sidebar: mydoc_sidebar
permalink: docs/stackify-retrace
folder: mydoc
---

Follow the steps below to configure a service so as to push related alert data from Stackify's Retrace onto Squadcast.

Squadcast will then process this information to create incidents for this service as per your preferences.

## Using Retrace as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use an existing service or [create a new service](adding-a-service-1)

Now, click on the corresponding **Alert Sources** button.

![](images/stackify_0.png)

Select **Retrace** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/stackify_1.png)

## Create a Squadcast Webhook in Retrace

**(1)** Log in to your account and click on the Settings tab as shown below. Under the Integrations section, click on the Webhook link.

![](images/stackify_2.png)

**(2)** Click `Add Webhook` button. Enter a webhook name and url.

![](images/stackify_3.png)

**(3)** To test the webhook you can click on the `Send Sample Alert` or `Send sample Error` button. An incident will be triggered in Squadcast with the sample payload.

![](images/stackify_4.png)

**(4)** Under the settings tab click `Notification Groups`. You can edit an existing `Notification Group` or create a new one.

![](images/stackify_5.png)

**(5)** Under the contacts tab select the Squadcast webhook which you created in step 2. Click `Save`.

![](images/stackify_6.png)

Now whenever an alert is triggered in Retrace, an incident will be created automatically in Squadcast. Also when the alert is closed in Retrace, the corresponding incident **in Squadcast gets auto-resolved.**