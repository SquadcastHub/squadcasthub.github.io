---
title: InsightOps (LogEntries)
tags: [integration, insightops]
keywords: 
last_updated: 
summary: "Send events to Squadcast from insightOps (LogEntries)"
sidebar: mydoc_sidebar
permalink: docs/insightops-logentries
folder: mydoc
---

Follow the steps below to configure a service so as to extract its related alert data from insightOps.
 
Squadcast will then process this information to create incidents for this service as per your preferences.

## Using InsighOps as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service-1)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **InsightOps** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/insightops_1.png)

Now log in to your insightOps account and go to alerts.

Click on "**Add Tag/Alert**".

Fill in all the details in the dialog box and for the "**Send to**" field select "**Web Hook**" and enter the URL obtained earlier.

![](images/insightops_2.png)

Finally click on "**Save Changes**" to create the alert.

That's it! Your insightOps integration is now good to go.