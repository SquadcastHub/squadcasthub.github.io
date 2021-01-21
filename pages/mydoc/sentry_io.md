---
title: Sentry.io
tags: [integration, sentry]
keywords: 
last_updated: 
summary: "Send events to Squadcast from Sentry"
sidebar: mydoc_sidebar
permalink: docs/sentryio
folder: mydoc
---

Follow the steps below to configure a service so as to extract its related alert data from Sentry.
 
Squadcast will then process this information to create incidents for this service as per your preferences.

## Using Sentry as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service-1)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **Sentry** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/sentry_1.png)

Now log in to your sentry account and go to your project settings.

Under alerts section, under settings tab, go to integrations and select webhook and under callback urls paste the url you received in step 4.

Under alerts section under settings adjust the minimum delivery interval and maximum delivery interval.

![](images/sentry_2.png)

Under alerts section under rules tab, create a new rule with the following conditions:

1. When all of these conditions are met: An event is seen
2. Take these actions at most once every 5 minutes for an issue: Send a notification via webhooks

![](images/sentry_3.png)

That's it! Your Sentry integration is now good to go.