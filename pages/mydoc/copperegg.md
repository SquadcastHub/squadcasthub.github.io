---
title: CopperEgg
tags: [integration, copperegg]
keywords:
last_updated:
summary: "Send events to Squadcast from CopperEgg"
sidebar: mydoc_sidebar
permalink: docs/copperegg.html
folder: mydoc
---

Follow the steps below to configure a service so as to extract its related alert data from CopperEgg.
 
Squadcast will then process this information to create incidents for this service as per your preferences.

## Using CopperEgg as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service.html)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **CopperEgg** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/copperegg_1.png)

## Create a Squadcast Webhook in CopperEgg
Log in to your CopperEgg account and go to the “Alerts” tab

Under the alerts tab click on “Notification Profiles” on the left

Under “Custom Profile” click on “Add a profile” to create a new notification profile

Name the profile as required and set state as “enabled”

Under destinations select “Webhook” and enter the webhook url obtained earlier and click on “Add”. You can click on “Test Notification” to get a test alert on squadcast.  

![](images/copperegg_2.png)

Click on Save and now you can add this notification profile to any of yours alert configuration. Just while creating/editing the alert select squadcast (webhook) from the notification target drop down.

![](images/copperegg_3.png)

Alerts that are cleared within CopperEgg are reflected in the status of the related Squadcast Incident.