---
title: New Relic
tags: [integration, new relic]
keywords: 
last_updated: 
summary: "Send events to Squadcast from New Relic"
sidebar: mydoc_sidebar
permalink: docs/new-relic.html
folder: mydoc
---

Follow the steps below to configure a service so as to extract its related alert data from New Relic. Squadcast will then process this information to create incidents for this service as per your preferences.

## Using New Relic as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service.html)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **New Relic** from **Alert Source** drop down and copy the Webhook URL shown.

![](images/new_relic_1.png)

## Create a Squadcast Webhook in New Relic

Now log in to your New Relic account and go to **Alerts** tabs and then go to **Notification Channels** tab.

Click on **New Notification Channel**.

Select channel type as **webhook** and enter the channel name as “**squadcast**” and the base url as the url received in step 4.

Click on **create channel**.

![](images/new_relic_2.png)

Now you can add this channel to any alert policy you have created (example shown below).

![](images/new_relic_3.png)

When the New Relic alert violation closes, or is manually closed, it will be reflected in Squadcast.

That's it! Your New Relic integration is now good to go.