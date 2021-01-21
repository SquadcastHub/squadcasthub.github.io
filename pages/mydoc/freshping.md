---
title: Freshping
tags: [integration, freshping]
keywords: 
last_updated: 
summary: "Get alerts from Freshping into Squadcast"
sidebar: mydoc_sidebar
permalink: docs/freshping
folder: mydoc
---

Follow the steps below to configure a service so as to push related alert data from Freshping onto Squadcast.

Squadcast will then process this information to create incidents for this service as per your preferences.

## Using Freshping as an Alert Source

On the **Sidebar**, click on **Services**.

You can either choose to use existing service or [create a new service](adding-a-service-1)

Now, click on the corresponding **Alert Sources** button.

![](images/integration_1.png)

Select **Freshping** from  **Alert Source** drop down and copy the Webhook URL shown.

![](images/freshping_1.png)

## Create a Squadcast Webhook in Freshping

1.Login to your Freshping web console and go to **Settings** then **Integrations**

![](images/freshping_2.png)

2.In **Webhook** click **Create Integration**  and paste Freshping webhook url which you initially copied from Squadcast Dashboard and click **Create**.

![](images/freshping_3.png)

Now whenever an event is triggered in Freshping, an incident will be created automatically in Squadcast. And once the event that triggered the incident(s) is resolved in Freshping, the relevant Squadcast incidents created would get resolved automatically.