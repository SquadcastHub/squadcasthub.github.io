---
title: LogDNA
tags: [integration, logdna]
keywords: 
last_updated: 
summary: "Get alerts from LogDNA into Squadcast"
sidebar: mydoc_sidebar
permalink: docs/logdna
folder: mydoc
---

Follow the steps below to configure a service so as to extract its related alert data from LogDNA. Squadcast will then process this information to create incidents for this service as per your preferences.

## Create a LogDNA service in Squadcast

On the Sidebar, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service-1)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **LogDNA** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/logdna_1.png)

## Setting Squadcast webhooks in LogDNA

Login to your LogDNA account and navigate to the view for which you want to setup alerts.

On the View name, click on the dropdown and select **Attach an alert**.

![](images/logdna_2.png)

Then select **View-Specific alert** from the drop down under **BUILD MY OWN** and click on **Webhooks**.

![](images/logdna_3.png)

Then configure the type of alert and other conditions and enter Squadcast webhook url from the previous step in the **Webhook URL** text box and click on **Save Alert** button.

![](images/logdna_4.png)

That's it! Your LogDNA integration is good to go and whenever the alert conditions are met, an incident will be automatically created in Squadcast.