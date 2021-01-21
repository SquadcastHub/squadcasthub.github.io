---
title: Rapid7 InsightIDR
tags: [integration, rapid7 insightidr]
keywords: 
last_updated: 
summary: "Get alerts from Rapid7 InsightIDR into Squadcast"
sidebar: mydoc_sidebar
permalink: docs/rapid7-insightidr
folder: mydoc
---

Follow the steps below to configure a service so as to extract its related alert data from Rapid7 insightIDR.

Squadcast will then process this information to create incidents for this service as per your preferences.

## Using Rapid7 insightIDR as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service-1)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **Rapid7 insightIDR** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/rapid7_1.png)

## Create Squadcast Webhook in Rapid7 insightIDR

Refer to [Universal Webhook](https://insightidr.help.rapid7.com/docs/webhook#section-how-to-configure-this-data-exporter) for details of how to setup a webhook in Rapid7 insightIDR.

+ Paste the Rapid7 insightIDR Webhook URL copied from Squadcast dashboard in the URL field.

Now, whenever there is an alert in the Rapid7 insightIDR dashboard, an incident will be triggered in Squadcast. 

The incident needs to be resolved manually in Squadcast, once they are done in insightIDR dashboard since the platform doesn't send any webhook trigger for resolve.