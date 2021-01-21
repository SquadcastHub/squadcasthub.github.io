---
title: Papertrail
tags: [integration, papertrail]
keywords: 
last_updated: 
summary: "Send events to Squadcast from Papertrail"
sidebar: mydoc_sidebar
permalink: docs/papertrail
folder: mydoc
---

Follow the steps below to configure a service so as to extract its related alert data from Papertrail.
 
Squadcast will then process this information to create incidents for this service as per your preferences.

## Using Papertrail as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service-1)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **Papertrail** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/papertrail_1.png)

## Create a Squadcast Webhook in Papertrail

Now log in to your Papertail account and query a search. Click on "**Save Search**" in the dialog box and in the dialog box after entering the details enter the details in the "Save Search" dialog box and click "**Save & Setup an Alert**"

![](images/papertrail_2.png)

In the subsequent page select "Webhook" from "Webhooks" section.

![](images/papertrail_3.png)

In the next page select the criteria for which you want to be alerted and in the URL enter the URL you got earlier.

![](images/papertrail_4.png)

+ **DO NOT** tick on **Send only counts**.

Click on "**Create Alert**" to finally create the alert.

That's it!! your Papertrail Integration is now good to go.