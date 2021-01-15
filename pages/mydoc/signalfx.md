---
title: SignalFx
tags: [integration, signalfx]
keywords: 
last_updated: 
summary: "Get SignalFx alerts into Squadcast"
sidebar: mydoc_sidebar
permalink: docs/signalfx.html
folder: mydoc
---

Follow the steps below to configure a service so as to extract its related alert data from SignalFx. Squadcast will then process this information to create incidents for this service as per your preferences.

## Using SignalFx as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service.html)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **SignalFx** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/signalfx_1.png)

## Setup alerts to send notification to Squadcast webhook

Go to your SignalFx dashboard and setup a detector for the metric for which you want to get alerts for.

Then create a **New Alert rule** for the detector and define Alert Signal, Alert condition, Alert settings and Alert message.

![](images/signalfx_2.png)

For **Alert recipients**, click on the **Add Recipient** button and then select **Webhook** and proceed to add a custom webhook.

![](images/signalfx_3.png)

In the custom **Webhook Notification**, under **URL**, add the SignalFx API URL that you have got from the previous step and click **Update** button and then click on **PROCEED TO ALERT ACTIVATION** button.

![](images/signalfx_4.png)

That's it! Now your SignalFx integration is good to go and whenever an alert is triggered in SignalFx, an incident will automatically get created in Squadcast.

The SignalFx Integration comes with an **Auto-Resolve** feature, meaning, when an alert goes under the threshold and gets resolved in SignalFx will automatically get resolved in Squadcast as well.