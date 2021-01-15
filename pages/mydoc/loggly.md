---
title: Loggly
tags: [integration, loggly]
keywords: 
last_updated: 
summary: "Send events to Squadcast from Loggly"
sidebar: mydoc_sidebar
permalink: docs/loggly.html
folder: mydoc
---

Follow the steps below to configure a service so as to extract its related alert data from Loggly. Squadcast will then process this information to create incidents for this service as per your preferences.

## Using Loggly as an Alert Source in Squadcast

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service.html)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **Loggly** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/loggly_1.png)

## Setting up a Squadcast Webhook in Loggly

Now log in to your Loggly account and click on "**Alerts**".

On the alerts page click on "**Alert Endpoints**" and then click on "**Create Endpoint**"

Select the type as "**HTTP Endpoint**", method as "**POST**" and enter the URL obtained earlier.

Enter the appropriate name and description for your endpoint and click on **Save**.

![](images/loggly_2.png)

Now you can use this alert endpoint in any of yours alert configuration. Every time here an alert is triggered you will get a corresponding incident in squadcast.

![](images/loggly_3.png)

That's it :) your loggly integration is now good to go!!!!