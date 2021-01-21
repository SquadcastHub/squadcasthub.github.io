---
title: Runscope
tags: [integration, runscope]
keywords: 
last_updated: 
summary: "Trigger a Squadcast Incident for any failed tests from Runscope"
sidebar: mydoc_sidebar
permalink: docs/runscope
folder: mydoc
---

Follow the steps below to configure a service so as to extract its related alert data from Runscope.
 
Squadcast will then process this information to create incidents for this service as per your preferences.

## Using Runscope as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service-1)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **Runscope** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/runscope_1.png)

Now login to you Runscope dashboard and click on the Runscope icon at the top right corner and select **Connected Services** from the resulting options.

![](images/runscope_2.png)

In the list of options available, scroll to **Webhooks** and click **Connect**.

![](images/runscope_3.png)

In the Advanced Webhooks window, Enter a Description such as **Squadcast Incidents** and select the Threshold as per your requirement.

For best results, select **Notify after a test fails in location atleast 1 times(s)** and  enable the checkbox labeled **and again after a test returns to passing**. This will help Squadcast **Auto-Resolve** an Incident once the parameters are back to normal.

Then paste the webhook url for the Runscope service and click **Save Changes**.

![](images/runscope_4.png)

Click **Edit** on the test needs to be integrated with Squadcast and click on **Test Settings**.

![](images/runscope_5.png)

![](images/runscope_6.png)

In the **Test Settings**, go to **Integrations** and Toggle on the switch near to Squadcast Incidents webhook.

![](images/runscope_7.png)

The Runscope integration is good to go and if there are any failed tests, it will automatically trigger an incident in Squadcast and if the test passes again, the incident will get **Auto-Resolved** in Squadcast.